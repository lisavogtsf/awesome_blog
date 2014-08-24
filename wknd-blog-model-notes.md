#Models

## User
has_many pages
has_many posts

### Fields
first_name
last_name
email
password

### Actions
users#index - list users
users#show - includes page
users#create - login
users#update?
users#destroy?


***************************

##Page
belongs_to user

### Fields
title
content
user_id

### Actions
page#show - on author show
page#new
page#create
page#update
page#destroy

***************************

## Post
belongs_to user
has_many comments
has_many tags

### Fields
title
img_url
body
user_id

### Actions
posts#index
posts#new - includes tags
posts#create - includes tags
posts#edit - includes tags
posts#update - includes tags
posts#destroy

***************************

## Comments
belongs_to user
belongs_to comment

### Fields
name
body

### Actions
comments#index - on post show
comments#new - on post show
comments#create - redirect to posts show
comments#edit - do we need?
comments#update - if no edit, no update
comments#delete - redirect to post show

***************************

## Tags
belongs_to post
has_many posts

### Fields
name
post_id

### Actions
tags#show
tags#new - on post#new
tags#create - redirect to posts show
tags#edit - on posts#edit
tags#update - on post#update






