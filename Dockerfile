FROM mysql

COPY load_mysql.py .

COPY requirements.txt .

RUN apt-get update && apt-get install -y \
    python-pip

RUN pip install -r requirements.txt

CMD python load_mysql.py
