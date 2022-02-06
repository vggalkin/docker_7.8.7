FROM alpine
WORKDIR /app
#RUN apt update && apt install -y wget
RUN apk update \ 
  && apk add ca-certificates wget bash\                                                                                                                                                                                                      
  && update-ca-certificates
#FROM scratch
#COPY --from=builder /lib/x86_64-linux-gnu/libpcre2-8.so.0 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libuuid.so.1 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libidn2.so.0 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libssl.so.1.1 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libcrypto.so.1.1 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libpsl.so.5 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libpthread.so.0 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libunistring.so.2 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/
#COPY --from=builder /lib64/ld-linux-x86-64.so.2 /lib64/
#COPY --from=builder /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/
#COPY --from=builder /usr/bin/bash /usr/bin/wget /usr/bin/ls /bin/
COPY app/fav.sh ./

ENTRYPOINT ["bash","fav.sh"]
