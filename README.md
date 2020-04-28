# golang-gimme-centos
Dockerfile(s) for golang based apps - #CentOS #gimme #glide
Uses gimme: https://github.com/travis-ci/gimme


### Usage:
```
docker build -t gimmego:1.8.1 -f Dockerfile --build-arg=GOLANG_VERSION=1.8.1 ./

docker build -t gimmego:1.14.1 -f Dockerfile --build-arg=GOLANG_VERSION=1.14.1 --build-arg=GIMME_DEBUG=1 ./
```

### For other interesting env vars, read:
https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
