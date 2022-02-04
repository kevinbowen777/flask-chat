FROM python:3.10-alpine

ENV FLASK_APP flask_chat.py
ENV FLASK_CONFIG production

RUN adduser -D flask_chat
USER flask_chat

WORKDIR /home/flask_chat

COPY requirements requirements
RUN python -m venv venv
RUN venv/bin/pip install -r requirements/docker.txt

COPY app app
COPY migrations migrations
COPY flask_chat.py config.py boot.sh ./

# run-time configuration
EXPOSE 5000
ENTRYPOINT ["./boot.sh"]
