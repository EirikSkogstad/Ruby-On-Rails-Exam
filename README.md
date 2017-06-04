# Ruby Movie DataBase (RMDB)

## Relevant Links: 
[Github.com/EirikSkogstad/Ruby-On-Rails-Exam](https://github.com/EirikSkogstad/Ruby-On-Rails-Exam)

[Heroku deployment](https://rmdb1337.herokuapp.com/)

## How to run this application on your local machine:
**Prerequisites: Functioning Docker, web browser, internet connection.** 

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
Our vision was to create a webpage where you can go if you are no sure what movie to watch. You can browse highly rated movies, or search for the details yourself.If you are a user and see a movie you are interested in, you can add it to the watchlist for later preview. 

The way we solved retrieving moviedata is to use an external API called [Open Movie DataBase](https://www.omdbapi.com/), which provides data from imdb in JSON-format. In order to not overload this API, we've implemented caching of movies in the Database where we store the top 250 rated imdb movies. 

### Navigation-bar:
This bar is present on the top of every page and provides navigation to the front page, filter page, profile page or the sign-up page. It also has search functionality(using AJAX) if there is a specific movie the user have in mind, and the option to login/logout.

### Watchlist:
This is functionality available only for users that is logged in. Every time a movie is presented the user will have the option to add it to the watchlist(or remove it). What this means is that the next time the user goes to the profile page a list of all the movies added to the watchlist will be presented to the user.

### Front page:
From the frontpage you are presented with random highly rated movies as suggestions, which is a portion of the imdb top250 rated movies. If the user is interested in a certain movie, they can click it and get more details about the movie in question in a new page, or if they are logged in they can add it to their watchlist. 

### Movie page:
Here the user will see the movie they selected with more details than the front page presented. The user has the option to add it to its watchlist or be prompted to login for that functionality.

### Profile page:
Only available if the user is logged in(whereas users not logged in will be redirected). Here the user can preview its watchlist and choose to whether preview the movies or remove them.

### User page:
Only available to admins. URL had to be typed in manually, users that are not admins will be redirected. On this page the admin can show/edit/destroy users as he/she pleases.

### Security: 
For handling whether or not a user is logged in we used sessions handled by rails. Passwords are stored using bcrypt and on successful login the user will be handed a session-token and on logout the token will be set to nil(null). There are many security-aspects that we have not accounted for, but we are not storing any sensitive data and feel the steps we have taken will suffice for this project. 

## Contribution to project:

### Name: Gard Opsahl Skaare | github: Opsgar15
text here
### Name: Andreas Waadeland | github: xIntern
text here
### Name: Eirik Skogstad | github: EirikSkogstad 
text here

## Libraries, frameworks and API's:
- [MaterializeCSS](http://materializecss.com/)
- [Open Movie Database](https://www.omdbapi.com/)
