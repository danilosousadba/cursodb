#!/bin/bash
sql_script='load.sql'
for filename in `ls *.csv`
do
  echo $filename |awk -F'.' '{print$1}' > tables.txt
  for tables in `cat tables.txt`
  do
    table=$tables
    /usr/bin/mysql –uroot -p aluno -A \
      -e "set @tablename=${table};\
          source ${sql_script};" > ${filename}
  done
done
