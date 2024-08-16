# Hello Python

This is a sample python project to demostrate gitopt.

## Build Image

### Login dockerhub

```bash
docker login -u meirongdev 
```

### tag image

```bash
docker build -t meirongdev/hello-py:v0.0.1 .
```

```bash
docker image
```

```bash
docker run -p8080:8080 -t meirongdev/hello-py:v0.0.1
```

start a new terminal

```bash
curl http://localhost:8080
```

### push image

```bash
docker push meirongdev/hello-py:v0.0.1
```