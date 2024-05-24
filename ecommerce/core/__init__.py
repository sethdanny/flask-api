#!/usr/bin/python3
"""Initialization module"""

from flask import Flask
from dotenv import load_dotenv

load_dotenv()


def create_app():
    """instance app"""
    app = Flask(__name__)

    return app

