## Flask Chat

<div align="center">

  [![Status](https://img.shields.io/badge/status-active-success.svg)]()
  [![GitHub Issues](https://img.shields.io/github/issues/kevinbowen777/flask-chat.svg)](https://github.com/kevinbowen777/flask-chat/issues)
  [![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

- A Social Blogging Application

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
 - `git clone https://github.com/kevinbowen777/flask-chat.git`
 - `cd flask-chat`
#### Local dev environment installation:
 - `mkvirtualenv flask-chat` or `workon flask-chat` (using virtualenv-wrapper)
 - `cp flaskenv .flaskenv` Fill out & uncomment environmental variables as appropriate
 - `flask deploy`
 - `flask run` Optionally, run `flask profile` to enable performance profiling
 - Open browser to http://127.0.0.1:5000

 Adding fake users for testing:
 - `flask shell`
 - `@>>> from app import fake`
 - `@>>> fake.users(100)`
 - `@>>> fake.posts(500)`

#### Local Docker installation:
 - `cp env .env` Fill out & uncomment environmental variables as appropriate
 - Run db server:
     - `docker run --name mysql -d -e MYSQL_RANDOM_ROOT_PASSWORD=yes \
        -e MYSQL_DATABASE=flask-chat -e MYSQL_USER=flask-chat \
        -e MYSQL_PASSWORD=<database-password> \
        mysql/mysql-server:5.7`
 - Run Flask container:
     - `docker run -d -p 8000:5000 --link mysql:dbserver \
        -e DATABASE_URL=mysql+pymysql://flask-chat:<database-password>@dbserver/flask-chat \
        -e MAIL_USERNAME=<your-email-username> -e MAIL_PASSWORD=<your-email-password> \
        kevinbowen777/flask-chat:latest`
 - Open browser to http://127.0.0.1:8000

---
### Live Application Demo:

TBD

### Docker Container Image:

 - [https://hub.docker.com/repository/docker/kevinbowen777/flask-chat](https://hub.docker.com/repository/docker/kevinbowen777/flask_chat)
---
Home Page
![Flask Chat Homepage](images/flask-chat_home.png?raw=true)

Profile Page
![Flask Chat Profile](images/flask-chat_profile.png?raw=true)

---
[![License](https://img.shields.io/badge/license-MIT-green)](https://github.com/kevinbowen777/flask-chat/-/blob/master/LICENSE)
---
### Reporting Bugs

   Visit the [Issues page](https://github.com/kevinbowen777/flask-chat/issues)
      to view currently open bug reports or open a new issue.
