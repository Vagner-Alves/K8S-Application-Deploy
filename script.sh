#!/bin/bash

echo " criando imagens Docker .... "

docker build -t  vagneralves1/backend-project:1.0 backend/.
docker build -t  vagneralves1/database-project:1.0 database/.

echo " fazendo upload das imagens para o DockerHub ...."

docker push vagneralves1/backend-project:1.0
docker push vagneralves1/database-project:1.0

echo "Criando servicos no cluster Kubernetes ..."

kubectl apply -f ./services.yml

echo "criando o deployment ..."

kubectl apply -f ./deploy.yml
