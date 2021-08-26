catalogs='*.json'
for catalog in $catalogs
do
  curl -i -X POST -H 'Content-Type: application/json' http://db.sece.io:8080/v1/catalog/add -d @$catalog
done
