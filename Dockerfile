FROM ubuntu

COPY dados/ /dados/

RUN apt-get update && apt-get install -y \
    python3 python3-pip

COPY requirements.txt .

COPY wait-for-it.sh .

COPY dados/ /dados/

COPY load_mysql.py .

RUN python3 -m pip install -r requirements.txt
