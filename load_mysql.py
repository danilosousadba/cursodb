from sqlalchemy import create_engine
import pymysql
import pandas as pd
from os import listdir
from os.path import isfile, join
from pandas.io import sql
import MySQLdb

database_username = 'root'
database_password = 'aluno'
database_ip       = 'localhost'
database_name     = 'curso'
database_connection = sqlalchemy.create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.
                                               format(database_username, database_password,
                                                      database_ip, database_name))




##frame.to_sql(con=database_connection, name={}, if_exists='replace'.format(tableName))



mypath='dados/'

for tablename in listdir(mypath)
    print(tablename)
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
""""
tableName   = "UserVitals"
dataFrame   = pd.DataFrame(data=userVitals)
sqlEngine       = create_engine('mysql+pymysql://root:@127.0.0.1/test', pool_recycle=3600)
dbConnection    = sqlEngine.connect()
try:

    frame           = dataFrame.to_sql(tableName, dbConnection, if_exists='fail');

except ValueError as vx:

    print(vx)

except Exception as ex:

    print(ex)

else:

    print("Table %s created successfully."%tableName);

finally:

    dbConnection.close() """
