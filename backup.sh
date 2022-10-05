#! /bin/bash
docker exec -t firefly_db_1 pg_dumpall -c -U firefly > dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
# restore
# cat your_dump.sql | docker exec -i firefly_db_1 psql -U firefly
