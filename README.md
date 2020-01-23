# ECSHelloWorld


## Quick start
```bash
$ git clone https://github.com/yennanliu/ECSHelloWorld.git
$ cd ECSHelloWorld
$ docker build -t flask-blog .
$ docker build -t flask-home .
$ docker run -p 8081:8081 flask-blog
$ docker run -p 8081:8081 flask-home

```

## Ref 
- https://www.bogotobogo.com/DevOps/Docker/Docker-Flask-ALB-ECS.php