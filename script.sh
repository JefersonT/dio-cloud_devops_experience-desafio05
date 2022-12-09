echo "Criando as imagens..."

docker build -t jefersont/devops_desario05_backend:1.0 backend/.
docker build -t jefersont/devops_desario05_database:1.0 database/.

echo "Realizando o push das imagens..."

docker push jefersont/devops_desario05_backend:1.0
docker push jefersont/devops_desario05_database:1.0

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./deployment.yml

echo "Craindo os deployments..."

kubectl apply -f ./deployment.yml