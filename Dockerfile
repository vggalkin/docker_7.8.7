FROM alpine
WORKDIR /app
RUN apk update && apk add ca-certificates wget bash && update-ca-certificates
COPY app/fav.sh ./

ENTRYPOINT ["bash","fav.sh"]
