# golang-gimme-centos
Dockerfile(s) for golang based apps - #CentOS #gimme #glide
Uses gimme: https://github.com/travis-ci/gimme


### Usage:
```
$ docker build -f Dockerfile --build-arg=GOLANG_VERSION=1.8.1  ./
```

### For other interesting env vars, read:
https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
