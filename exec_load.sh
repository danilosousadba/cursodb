#!/bin/bash
sql_script='load.sql'
dbname='curso'
for filename in `ls dados/*.csv`
do
  echo $filename | awk -F'.' | aws -F'/' '{tablename=$1 ; print tablename ; }' | aws -f'/' '{tablename=$2}'
    /usr/bin/mysql –uroot -p aluno -A \
      -e "set @tablename=${table};set @dbname=${dbname}\
          source ${sql_script};" > ${filename;
done
