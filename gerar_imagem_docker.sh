IMAGEM=registry.ufsj.edu.br:5999/smartglpi/smartglpi-web
VERSAO=v1.0.0

docker build -t $IMAGEM:$VERSAO .
docker push $IMAGEM:$VERSAO


