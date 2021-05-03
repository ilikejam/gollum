# Gollum

## Build

```
date > last_build
git add -A
git commit -m "Blah"
scommit=$(git rev-parse --short HEAD)
docker build -t ilikejam/gollum:$scommit .
docker tag ilikejam/gollum:$scommit ilikejam/gollum:latest
docker push ilikejam/gollum:$scommit
docker push ilikejam/gollum:latest
git push
```

## Deploy

```
docker pull ilikejam/gollum:latest
docker stop wiki
docker rm wiki
<run ansible playbook>
docker system prune
```
