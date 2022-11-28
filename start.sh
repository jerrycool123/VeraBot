#!/bin/bash
python3.10 -m venv verabot
source ./verabot/bin/activate
pip install -r requirements.txt
export $(cat .env | xargs)
python3 app.py
