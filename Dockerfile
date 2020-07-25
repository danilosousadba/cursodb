FROM mysql

COPY load_mysql.py .

COPY requirements.txt .

RUN pip install -r requirements.txt

CMD python load_mysql.py
