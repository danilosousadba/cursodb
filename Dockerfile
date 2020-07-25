FROM mysql

COPY load_mysql.py .

COPY requirements.txt .

RUN apt-get update && apt-get install -y \
    python3 python3-pip

RUN python3 -m pip install -r requirements.txt

CMD python3 load_mysql.py
