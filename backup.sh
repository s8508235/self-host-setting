#! /bin/bash
file_name="dump_$(date +%d-%m-%Y"_"%H_%M_%S).sql"
#docker exec -t firefly-setting-db-1 pg_dumpall -c -U firefly > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
docker exec -t firefly-setting-db-1 pg_dumpall -c -U firefly > backup/${file_name}
echo "$(pwd)/backup/${file_name}"
# restore
# cat your_dump.sql | docker exec -i firefly_db_1 psql -U firefly
