FROM mysql as db

COPY load_mysql.py .

COPY requirements.txt .

COPY dados/ /dados/

COPY wait-for-it.sh .

RUN apt-get update && apt-get install -y \
    python3 python3-pip

RUN python3 -m pip install -r requirements.txt

FROM ubuntu as postdb

COPY dados/ /dados/

RUN apt-get update && apt-get install -y \
    python3 python3-pip

RUN python3 -m pip install -r requirements.txt
