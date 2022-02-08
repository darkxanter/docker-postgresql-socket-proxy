Docker PostgreSQL proxy

Docker Swarm example:
```yaml
version: '3.7'

services:
  postgres:
    # A container that exposes an API to show its IP address
    image: xanter/docker-postgresql-socket-proxy
    networks:
      - db
    volumes:
      - /run/postgresql/:/run/postgresql/:ro

networks:
  db:
    external: true

```