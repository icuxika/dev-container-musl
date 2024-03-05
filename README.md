## 构建
```
docker build . -t icuxika/dev-container-musl:0.0.1
```

## 运行
```
docker run -it -v ${PWD}:/opt/src icuxika/dev-container-musl:0.0.1 /bin/sh
```

## 构建cmake项目
```
mkdir project
cd project
```
```
rm -Recurse -Force .\build-musl\

docker run --rm -it -v ${PWD}:/opt/src icuxika/dev-container-musl:0.0.1 /bin/sh -c "cd /opt/src && mkdir build-musl && cmake -S . -B build-musl/ -D CMAKE_BUILD_TYPE=Release -D CMAKE_EXE_LINKER_FLAGS='-static' && cmake --build build-musl/"
```