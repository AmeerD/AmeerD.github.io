library(dplyr)
library(tidyr)
library(stringr)
library(purrr)

# formatting helpers ----------------------

#all of these can work with txt being a vector

it <- function(txt){ paste0("*",txt,"*") }

bf <- function(txt){ paste0("**",txt,"**") }

head <- function(txt,n){ paste0(paste0(rep("#",n),collapse = "")," ",txt) }

#modify to be your actual name
bf_name <- function(txt){ str_replace(txt,"Ameer Dharamshi",bf("Ameer Dharamshi")) }

link_f <- function(txt,link){ paste0("[",txt,"](",link,")")}

paren <- function(txt){ paste0("(",txt,")") }

#adds blank lines before, in between, and after entries
# txt can be a list (multi-line entries) or a vector (one-line entries)
empty_line_wrap <- function(txt){ 
  
  #for a vector add between every line
  if(class(txt) == "character"){
    
  ret <- c("",rbind(txt,rep("",length(txt))))
    
  }else{#for a list add between entries
    
    ret <- lapply(txt,function(x) c(x,""))
    
    ret[[1]] <- c("",ret[[1]])
  }
  
  return(ret)
    
}

#turn text vector into a line block to preserve line breaks
line_block <- function(txt) { paste("|",txt) } 

#turn text vector into a list
list_f <- function(txt) { paste("-",txt) } 

# item helpers ------------------------------

# ... at ends of functions so can apply to dataframe without selecting vars

#publication formatting
pub <- function(authors,year,title,link=NA, published=NA, details, journal,type,...){
  
  if(type == "Preprints"){
    if((!is.na(link) & link != '')){
      link <- paste0("[", link_f(details, link), "]")
    } else {
      link <- ""
    }
    
    paste0(bf_name(authors), ". ", paren(paste0(format(Sys.Date(), "%Y"), "+")), 
           " ", title, ". ", link)
    
  }else{
    if((!is.na(link) & link != '')){
      link <- paste0("[", link_f("paper", link), "]")
    } else {
      link <- ""
    }
    
    paste0(bf_name(authors), ". ", paren(paste0(year, ifelse(published == "N", "+", ""))),
           " ", title, ". ", paste0(ifelse(published == "N", "To appear in ", ""), it(journal)),
           " ", details, " ", link)
  }

  }

#helper to format specific occasion a presentation/poster was presented
pres_instance <- function(year,month,location,event,...){
  
  paste0(event,", ",location,", ",month," ",year)

}

#formatting for an overall unique presentation/poster
# there can be one or more conferences/events at which it was presented
pres <- function(title,link=NA,dat,..){
  
  ftitle <- title
  
  instances <- dat %>% filter(title == ftitle)
  
  if((!is.na(link) & link != '')){
    ftitle <- link_f(title,link)
  }
  
  return(unlist(c(bf(ftitle), pmap(instances,pres_instance))))
  
}

#formatting for entry on the news section of the index page
news_item <- function(type,subtype,title,link = NA,journal,event,...){
  
  ftitle <- title
  
  if((!is.na(link) & link != '')){
    ftitle <- link_f(title,link)
  }
  
  if(type == "Publications"){
    
    if(subtype == "Preprints"){
      
      ret <- paste("Released preprint ",bf(ftitle))
      
    } else{
      
      ret <- paste("Published paper",bf(ftitle),
                   "in",journal)
      
    }
    
  } else if(type == "Presentations and Posters"){
    
    if(subtype == "Presentations"){
      
      ret <- paste("Gave talk",bf(ftitle),"at",event)
      
    } else if(subtype == "Posters"){
      
      ret <- paste("Presented poster",bf(ftitle),"at",event)
      
    }
    #if have an entry that should only go in news, type is "other News"
    #   and title is the desired news text
  } else if(type == "Other News"){
    
    ret <- ftitle
  }
  
  return(ret)
  
}

# page helpers ------------------------------

#splits pages into update and non-update components
#  depends on the section break formatting being very specific
#    for example no lines between ":::"'s and the break string
split_helper <- function(old_page,break_strings){
  
  fun <- function(x){
    
    start_ind <- str_which(old_page,paste0(x,"_start"))
    end_ind <- str_which(old_page,paste0(x,"_end"))
    
    c(start_ind+1,start_ind+2,end_ind-2,end_ind-1)
      
  }
  
  breaks <- c(1,sapply(break_strings,fun),length(old_page))
  
  sapply(seq(from =1,to = length(breaks),by = 2), 
         function(x) old_page[breaks[x]:breaks[(x+1)]])
  
}

#helper to format content as a sequence of sections
#inputs:
#   headings - string vector of sections in order they should appear
#   content - dataframe of the specific content for all the sections
#   format_fun - function that formats each section
#   field - field to look for sections in, if not subtype
#   header_level - numeric between 1 and 5, level of section header
section_helper <- function(headings,content,format_fun,
                           field = "subtype",header_level = 2){
  
  lapply(headings, function(x) content %>% 
           filter(get(field) == x) %>% format_fun() %>%
           c(head(x,header_level),.)) %>% 
    unlist() %>% c()
  
}

#creates updated homepage
index <- function(old_index,content){
  
  parts <- split_helper(old_index,c("news_update"))
  
  news_update <- content %>% filter(skip_in_news != "Yes") %>%
    #including 5 updates mostly to illustrate, could include less
    slice_head(n = 5) %>% pmap(news_item) %>% 
    unlist() %>% empty_line_wrap()
  
  parts[[2]] <- news_update
  
  return(do.call(c,parts))
}

#creates updated publications page
# includes two different ways sorting papers just as examples
#  for actual website use one or the other (or neither)
publications <- function(old_publications,content, field="type"){
  
  parts <- split_helper(old_publications,c("pubs_v1_update", "pubs_v2_update"))
  
  #helper to format each section
  helper <- function(content){
    content %>% pmap(pub) %>% unlist() %>% empty_line_wrap()
  }
  
  #version 1
  
  pubs1_update <- section_helper(c("Preprints","Publications"),
                                 content,
                                 format_fun = helper,
                                 field = field)
  
  parts[[2]] <- pubs1_update
  
  # #version 2
  # 
  # #using a different field than subtype to choose sections so need to specify
  # pubs2_update <- section_helper(c("Statistical Methods",
  #                                  "Public Health and Medicine",
  #                                  "Other"),
  #                                content %>% 
  #                                  filter(type == "Publications"),
  #                                format_fun = helper,
  #                                field = "theme")
  # 
  # parts[[4]] <- pubs2_update
  
  return(do.call(c,parts))
  
}


# run the update ------------------------------

path <- getwd()

content <- read.csv(paste0(path,"/files/papers.csv")) %>% arrange(desc(year), desc(month))

#updating news section of index
# old_index <- readLines("index.qmd")
# 
# writeLines(old_index,"old_index_backup.qmd")
# 
# new_index <- index(old_index,content)
# 
# writeLines(new_index,"index.qmd")

#updating publications
old_publications <- readLines(paste0(path,"/pages/publications.qmd"))

writeLines(old_publications,"old_publications_backup.qmd")

new_publications <- publications(old_publications,content)

writeLines(new_publications,paste0(path,"/pages/publications.qmd"))


