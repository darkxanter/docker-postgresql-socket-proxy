FROM alpine:3.15

RUN apk add --no-cache socat

CMD ["socat", "-d", "-d", "-lmlocal2", "tcp-listen:5432,reuseaddr,fork", "unix:/run/postgresql/.s.PGSQL.5432"]
