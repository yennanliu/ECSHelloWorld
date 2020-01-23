# ECSHelloWorld


## Quick start
```bash
# local 
$ git clone https://github.com/yennanliu/ECSHelloWorld.git
$ cd ECSHelloWorld
$ docker build -t ecs-flask-blog .
$ docker build -t ecs-flask-home .
$ docker run -p 8081:8081 ecs-flask-blog
$ docker run -p 8081:8081 ecs-flask-home
```

## Deployment (to AWS ECR/ECS)
```bash
# Command ref : https://us-west-2.console.aws.amazon.com/ecr/repositories/ecs-flask-blog/?region=us-west-2

# make sure you have
# 1. AWS account 
# 2. grant AmazonEC2ContainerRegistryFullAccess
# 3. grant AmazonEC2FullAccess
$ $(aws ecr get-login --no-include-email --region us-west-2)
$ aws ecr create-repository --repository-name ecs-flask-home
$ aws ecr create-repository --repository-name ecs-flask-blog
# tag docker image
$ docker tag ecs-flask-blog:latest 437885434504.dkr.ecr.us-west-2.amazonaws.com/ecs-flask-blog:latest
$ docker tag ecs-flask-home:latest 437885434504.dkr.ecr.us-west-2.amazonaws.com/ecs-flask-home:latest
# push to AWS ECR
$ docker push 437885434504.dkr.ecr.us-west-2.amazonaws.com/ecs-flask-blog:latest
$ docker push 437885434504.dkr.ecr.us-west-2.amazonaws.com/ecs-flask-home:latest

```

## Ref 
- https://www.bogotobogo.com/DevOps/Docker/Docker-Flask-ALB-ECS.php