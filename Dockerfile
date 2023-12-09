FROM nginx

WORKDIR /usr/share/nginx/html/

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/daysilva/CalculadoraDAguaDiaria-front.git

EXPOSE 80

CMD ["/bin/bash", "-c", "cd /usr/share/nginx/html/CalculadoraDAguaDiaria-front && git pull origin develop && nginx -g 'daemon off;'"]