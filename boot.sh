#!/bin/sh
source venv/bin/activate

while true: do
    flask deploy
    if [[ "$?" == "0" ]]; then
        break
    fi
    echo Flask Deploy command failed, retrying in 5 seconds...
    sleep 5
done

exec gunicorn -b :5000 --access-logfile - --error-logfile - flask_chat:app
