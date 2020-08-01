from sqlalchemy import create_engine
import pymysql
import pandas as pd
from os import listdir
from os.path import isfile, join
from pandas.io import sql
import sqlalchemy
import time



database_username = 'root'
database_password = 'aluno'
database_ip       = 'db'
database_name     = 'curso'
database_connection = sqlalchemy.create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.
                                               format(database_username, database_password,
                                                      database_ip, database_name))
#attempts = 0
#while attempts < 10 :
print("Aguardando Startup do banco" )
time.sleep(20)
try:
    dbConnection    = database_connection.connect()
except Exception as e:
    attempts += 1
    print (e)

mypath='dados/'

for tablename in listdir(mypath):
    print(tablename.split('.')[0])
    tableName   = tablename
    dataFrame   = pd.read_csv(mypath+tablename,index_col=False)
    dbConnection    = database_connection.connect()
    try:
        dataFrame.to_sql(tablename.split('.')[0], dbConnection, if_exists='replace');

    except ValueError as vx:
        print(vx)
    except Exception as ex:
        print(ex)
    else:
        print("Table %s created successfully."%tableName);
    finally:
        dbConnection.close()
