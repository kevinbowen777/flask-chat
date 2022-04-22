# Remember to rename to .flaskenv
# and uncomment the appropriate FLASK_CONFIG statement
# depending upon the deployment environment
export FLASK_APP=flask_chat.py
export FLASK_CONFIG=development
#export FLASK_CONFIG=testing
#export FLASK_CONFIG=production
#export FLASK_CONFIG=heroku
#export FLASK_CONFIG=docker
#export FLASK_CONFIG=unix
# python -c "import uuid; print(uuid.uuid4().hex)"
# to generate secret key
export SECRET_KEY=<secret-key>
export MAIL_USERNAME=<email_username>
export MAIL_PASSWORD=<email_password>
export FLASK_ADMIN=<admin_email_address>
export DATABASE_URL=mysql+pymysql://flask_chat:<database-password>@dbserver/flask_chat
