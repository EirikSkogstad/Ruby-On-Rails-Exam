# Ruby Movie DataBase (RMDB)

## Relevant Links: 
[Github.com/EirikSkogstad/Ruby-On-Rails-Exam](https://github.com/EirikSkogstad/Ruby-On-Rails-Exam)

[Heroku deployment](https://rmdb1337.herokuapp.com/)

## How to run this application on your local machine:
**Prerequisites: Docker, Google Chrome (Firefox has a bug with login button when running locally, other browsers were not used in development).** 

**Admin username: "rubyonrails", password "rubyonrails"**

Run these commands:

`docker-compose build`

`docker-compose up`

Open a new terminal:

`docker-compose web run rake db:create`

`docker-compose web run rake db:migrate`

`docker-compose web run rake db:seed`

`open webpage on:`[localhost:3000](http://localhost:3000)

Shutting down:

`docker-compose down`

## Description of the project:
Our vision was to create a webpage where you can go if you are not sure what movie to watch. You can browse highly rated movies, search with filters or search for a specific movie yourself. If you are a user and see a movie you are interested in, you can add it to the watchlist for later preview. 

The way we solved retrieving moviedata is to use an external API called [Open Movie DataBase](https://www.omdbapi.com/), which provides data from imdb in JSON-format. In order to not overload this API, we've implemented caching of movies in the database where we store the top 250 rated imdb movies. 

### Navigation-bar:
This bar is present on the top of every page and provides navigation to the front page, filter page, profile page, sign-up page and the users page if you are the admin. It also has search functionality(using AJAX) if there is a specific movie the user have in mind, and the option to login/logout.

### Watchlist:
This is functionality available only for users that is logged in. Every time a movie is presented the user will have the option to add it to the watchlist(or remove it). What this means is that the next time the user goes to the profile page, a list of all the movies added to the watchlist will be presented to the user.

### Front page:
From the frontpage you are presented with random highly rated movies as suggestions, which is a portion of the imdb top250 rated movies. If the user is interested in a certain movie, they can click it and get more details about the movie in question in a new page, or if they are logged in they can add it to their watchlist. 

### Movie page:
Here the user will see the movie they selected with more details than the front page presented. The user has the option to add it to its watchlist or be prompted to login for that functionality.

### Filter page:
From this page the user can toggle the categories he/she wants to see. A filter will include all of these and show the movies that match the criteria. Note that it matches the movies with ANY of the filters and not all of the categories.

### Profile page:
Only available if the user is logged in(whereas users not logged in will be redirected). Here the user can preview its watchlist and choose to whether preview the movies or remove them.

### User page:
Only available to admins. Users that are not admins will be redirected. On this page the admin can show/edit/destroy users as he/she pleases.

### Security: 
For handling whether or not a user is logged in we used sessions handled by rails. Passwords are stored using bcrypt and on successful login the user will be handed a session-token and on logout the token will be set to nil(null). There are many security-aspects that we have not accounted for, but we are not storing any sensitive data and feel the steps we have taken will suffice for this project. 

### Testing: 
We wanted to implement integration-testing for our web application, but that was easier said than done. With how Ruby on Rails handles tests and how Docker affects the project we didnt manage to run any tests. With a lot of configuration we might have been able to do it. We did not however feel confident enough that the amount of time to set up the testing enviroment would be worth the end result(or that we would be able to do it in a reasonable amount of time), so we did the testing manually. This is not beneficial, and our priority would have shifted if the product were to have a longer lifespan than an exam. 

## Contribution to project:
Overall we have been working on the parts where we best can utilize our individual skills. We have been trying to keep an equal amount of workload throughout the project and in the end nobody feels they got the short end of the stick(although some members of the group might have contributed more). 

### Name: Gard Opsahl Skaare | github: Opsgar15
I have mostly contributed with setting up the project and its structure, developing the idea and its implementation, adding html/css elements, writing this document and overall been helping the group with minor tasks where needed. 
### Name: Andreas Waadeland | github: xIntern
OMDB API communication, AJAX, Front page design and logic, search for movies in front page and filter page logic
### Name: Eirik Skogstad | github: EirikSkogstad 
Worked on login system and database entities. 
Implemented watchlist on Profile-page and added design for that page.
Added ability to remove and add movies to Watchlist, and cache in database.
Fixed redirection for pages that only admin should be able to access.

## Libraries, frameworks and API's:
- [MaterializeCSS](http://materializecss.com/)
- [Open Movie Database](https://www.omdbapi.com/)
- [HTTPRB](https://github.com/httprb/http)