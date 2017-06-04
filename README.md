# Ruby Movie DataBase

## Relevant Links: 
[Github.com/EirikSkogstad/Ruby-On-Rails-Exam](https://github.com/EirikSkogstad/Ruby-On-Rails-Exam)

[Heroku deployment](https://rmdb1337.herokuapp.com/)

## How to run this application on your local machine:
Run these commands:

`docker-compose build`

`docker-compose up`

Open a new terminal:

`docker-compose web run rake db:create`

`docker-compose web run rake db:migrate`

`docker-compose web run rake db:seed`

## Description of project:
Our vision was to create a webpage where it was possible for users to browse through different movies. In addition we also wanted the user to create an account. 
This would then give the user the option to add interesting movies to his/her watchlist. 
We also wanted a way for users to search for spesific movies, and this was done with AJAX call to an external API called [Open Movie DataBase](https://www.omdbapi.com/)

Most of the data in this project is supplied from OMDb's API, and in order to not overload this API, we've implemented caching of movies in the Database. 

### Contribution to project:

## Libraries, frameworks and API's:
- [MaterializeCSS](http://materializecss.com/)
- [Open Movie Database](https://www.omdbapi.com/)