---
  title: "Group5FinalActivity"
author: "FinalActivity"
date: "2023-12-20"
output: html_document
---
  
```{r}

library(rvest)
library(purrr)


url <- "https://www.amazon.com/Portable-Mechanical-Keyboard-MageGee-Backlit/dp/B092CHWH1D/ref=sr_1_2?_encoding=UTF8&content-id=amzn1.sym.12129333-2117-4490-9c17-6d31baf0582a&keywords=gaming%2Bkeyboard&pd_rd_r=5c28071f-4294-4229-a306-058a23614731&pd_rd_w=W2NCD&pd_rd_wg=ZEK6N&pf_rd_p=12129333-2117-4490-9c17-6d31baf0582a&pf_rd_r=5D0GJRB6FMXGGYEQCS2Z&qid=1703062484&sr=8-2&th=1"

data_scrape <- read_html(url)


user_name <- data_scrape %>%
  html_nodes(".a-profile-name") %>%
  html_text()

keyboard_rating <- data_scrape %>%
  html_nodes(".review-rating") %>%
  html_text()


reviews <- data_scrape %>%
  html_nodes(".review-text-content span") %>%
  html_text()


print(user_name)
print(keyboard_rating)
print(reviews)

analysis_data <- data.frame(user_name,keyboard_rating,reviews)
analysis_data

```


```{r}
library(tidyverse)
library(tidytext)

analysis_data <- analysis_data %>%
  unnest_tokens(word, reviews) %>%
  inner_join(get_sentiments("afinn"))

sentiment_scores <- analysis_data %>%
  group_by(user_name) %>%
  summarize(sentiment_score = sum(value))

analysis_data <- left_join(analysis_data, sentiment_scores, by = "user_name")

ggplot(analysis_data, aes(x = sentiment_score)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Sentiment Scores", x = "Sentiment Score", y = "Frequency")

top_users <- analysis_data %>%
  arrange(sentiment_score) %>%
  slice(c(1:5, n() - 4:n()))

ggplot(top_users, aes(x = reorder(user_name, sentiment_score), y = sentiment_score, fill = user_name)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Users with Highest and Lowest Sentiment Scores", x = "User", y = "Sentiment Score")




```