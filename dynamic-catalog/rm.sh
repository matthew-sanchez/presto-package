catalogs='*.json'
for catalog in $catalogs
do
  curl -i -X DELETE -H 'Content-Type: application/json' http://db.sece.io:8080/v1/catalog/delete\?catalogName=${catalog%%.*}
done
