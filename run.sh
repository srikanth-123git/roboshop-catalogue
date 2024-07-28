source /data/secrets

cat /data/secrets

echo
echo
echo
env

if [ -z "$DOCUMENTDB" ]; then
  echo Environment Variable DOCUMENTDB is mising
  exit 1
fi

if [ -z "$MONGO_URL" ]; then
  echo Environment Variable MONGO_URL is mising
  exit 1
fi

node  /app/server.js

