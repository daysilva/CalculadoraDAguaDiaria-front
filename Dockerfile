FROM nginx

WORKDIR /usr/share/nginx/html/

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/daysilva/CalculadoraDAguaDiaria-front.git

EXPOSE 80

CMD ["/bin/bash", "-c", "cd /usr/share/nginx/html/CalculadoraDAguaDiaria-front && git checkout producao && git pull origin producao && nginx -g 'daemon off;'"]