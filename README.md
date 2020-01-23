# ECSHelloWorld


## Quick start
```bash
# local 
$ git clone https://github.com/yennanliu/ECSHelloWorld.git
$ cd ECSHelloWorld
$ docker build -t flask-blog .
$ docker build -t flask-home .
$ docker run -p 8081:8081 flask-blog
$ docker run -p 8081:8081 flask-home
```

## Deployment (to AWS ECR/ECS)
```bash
# make sure you have
# 1. AWS account 
# 2. grant AmazonEC2ContainerRegistryFullAccess
# 3. grant AmazonEC2FullAccess
$ aws ecr get-login
$ aws ecr create-repository --repository-name ecs-flask-home
$ aws ecr create-repository --repository-name ecs-flask-blog

```

## Ref 
- https://www.bogotobogo.com/DevOps/Docker/Docker-Flask-ALB-ECS.php