FROM nginx

WORKDIR /usr/share/nginx/html/

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/daysilva/CalculadoraDAguaDiaria-front.git /download

RUN mv /download/* /usr/share/nginx/html/


