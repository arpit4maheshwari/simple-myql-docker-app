echo "Executing people_ddl.."
mysql -u root terrascope < ./people_ddl.sql
echo "Ingesting data to people table.."
mysql -u root terrascope < ./ingest_data_to_people.sql
echo "Executing places_ddl.."
mysql -u root terrascope < ./places_ddl.sql
echo "Ingesting data to places table.."
mysql -u root terrascope < ./ingest_data_to_places.sql
sleep 5m