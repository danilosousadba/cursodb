#!/bin/sh
# wait-for-postgres.sh

set -e

host="$1"
shift
cmd="$@"

#until mysql -h "$db" -U"root" -p"aluno" -B -e "SHOW DATABASES" ; do
#  >&2 echo "Mysql is unavailable - sleeping"
#  sleep 5
#done

until telnet $db 3306 ; do
  >&2 echo "Mysql is unavailable - sleeping"
  sleep 5
done

>&2 echo "Mysql is up - executing command"
exec $cmd
