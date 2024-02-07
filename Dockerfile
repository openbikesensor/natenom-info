FROM pandoc/minimal:3-ubuntu as builder

RUN apt-get update; apt-get install make;
ADD src /src
WORKDIR /src
RUN make

FROM nginx:latest
COPY --from=builder /src/www-data/ /usr/share/nginx/html/

