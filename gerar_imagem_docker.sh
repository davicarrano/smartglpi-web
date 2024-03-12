IMAGEM=registry.ufsj.edu.br:5999/frontend/smartglpi-web
VERSAO=v1.0.0

if [[ "$1" = "homolog" ]] 
then
    npm run build --configuration homolog  
    docker build -t $IMAGEM-homolog:$VERSAO .
    docker push $IMAGEM-homolog:$VERSAO

elif [[ "$1" = "prod" ]]
then
    npm run build 
    docker build -t $IMAGEM:$VERSAO .
    docker push $IMAGEM:$VERSAO
else
    echo "É preciso informar o ambiente para geração do container: homolog ou prod"
fi





