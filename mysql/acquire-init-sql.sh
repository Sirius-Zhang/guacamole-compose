echo "USE guacamole;" > initdb.sql

sudo docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql >> initdb.sql