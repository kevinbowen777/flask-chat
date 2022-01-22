import os
from flask import Flask, render_template, session, redirect, url_for
from flask_migrate import Migrate
from flask_mail import Message

basedir = os.path.abspath(os.path.dirname(__file__))



@app.shell_context_processor
def make_shell_context():
    return dict(db=db, User=User, Role=Role)
