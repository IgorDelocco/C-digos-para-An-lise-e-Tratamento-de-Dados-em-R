library(pdftools)
library(tidytext)
library(dplyr)
library(tm)
library(ggplot2)

#lendo o arquivo pdf
text= pdf_text("C:/Users/Igord/Downloads/21243-Article Text-47692-2-10-20210503.pdf")
data_text = tibble(page = 1:17,text = text)

#data frame
tidy_text = data_text %>% 
  unnest_tokens(word, text) # transformando em token

#remover palavras indesejaveis 
stop_words = union(stopwords("portuguese"), stopwords("english")) %>% 
  union(c("é","pra","pro","vc","vcs","ser","ms","al","et","mss","rs","rss","então","já", "issn","lang", 1:10000000, letters, LETTERS)) %>% 
  as_tibble() %>% 
  unnest_tokens(word, value)

#saida
tidy_text_sem_stopwords = tidy_text %>% 
  anti_join(stop_words, by = "word") %>% 
  count(word, sort = TRUE)

#gráfico 1
ggplot(tidy_text_sem_stopwords %>% slice(1:50), aes(x = reorder(word, n), y = n))+
  geom_bar(stat = "identity", fill ="skyblue")+
  coord_flip() +
  labs(title = "50 mais frequentes", x = "Palavra", y = "Frequência")

