## Flask Chat - A Social Blogging Application

Flask Chat is a demonstration of Flask functionality taken directly from the
exercises in Miguel Grinberg's excellent book [Flask Web
Development](http://www.flaskbook.com/) and his [Flasky
repository](https://github.com/miguelgrinberg/flasky).

## Features
 - email verification for account registration & password/email change
 - MarkDown support and preview for comments & posts
 - ability to follow specific users
 - filter posts by followed users
 - gravatar support for user icons
 - application performance profiling support
 - basic API support for viewing/creating posts or comments

### Installation
 - `git clone https://github.com/kevinbowen777/flask_chat.git`
 - `cd flask_chat`
#### Local dev environment installation:
 - `mkvirtualenv flask_chat` or `workon flask_chat` (using virtualenv-wrapper)
 - `cp flaskenv .flaskenv` Fill out & uncomment environmental variables as appropriate
 - `flask deploy`
 - `flask run` Optionally, run `flask profile` to enable performance profiling
 - Open browser to http://127.0.0.1:5000
#### Local Docker installation:
 - `cp env .env` Fill out & uncomment environmental variables as appropriate
 - Run db server:
     - `docker run --name mysql -d -e MYSQL_RANDOM_ROOT_PASSWORD=yes \
        -e MYSQL_DATABASE=flask_chat -e MYSQL_USER=flask_chat \
        -e MYSQL_PASSWORD=<database-password> \
        mysql/mysql-server:5.7`
 - Run Flask container:
     - `docker run -d -p 8000:5000 --link mysql:dbserver \
        -e DATABASE_URL=mysql+pymysql://flask_chat:<database-password>@dbserver/flask_chat \
        -e MAIL_USERNAME=<your-email-username> -e MAIL_PASSWORD=<your-email-password> \
        kevinbowen777/flask_chat:latest`
 - Open browser to http://127.0.0.1:8000

---
### Live Demo on Heroku:
 - [https://flask-chat-blog.herokuapp.com/](https://flask-chat-blog.herokuapp.com/)
### Docker Container Image:

 - [https://hub.docker.com/repository/docker/kevinbowen777/flask_chat](https://hub.docker.com/repository/docker/kevinbowen777/flask_chat)
---
Home Page
![Flask Chat Homepage](https://github.com/kevinbowen777/flask_chat/blob/master/images/flask_chat_home.png?raw=true)

Profile Page
![Flask Chat Profile](https://github.com/kevinbowen777/flask_chat/blob/master/images/flask_chat_profile.png?raw=true)

---
[![License](https://img.shields.io/badge/license-MIT-green)](https://github.com/kevinbowen777/flask_chat/-/blob/master/LICENSE)
---
### Reporting Bugs

   Visit the [Issues page](https://github.com/kevinbowen777/flask_chat/issues)
      to view currently open bug reports or open a new issue.
