git add *.py
git add Dockerfile
git add Buildfile
git commit -m "From Buildfile"
git push
docker rmi tfrecomm
docker build -t tfrecomm .
docker tag tfrecomm davidvela/tfrecomm
docker push davidvela/tfrecomm
docker rm runtfrecomm
docker run --name runtfrecomm -p 81:81 -i -t davidvela/tfrecomm bash