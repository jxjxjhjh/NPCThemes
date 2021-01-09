https://github.com/Hansanshi/mark-idea
的非官方docker镜像构建。
代码来自
https://github.com/chy9002/docker-mark-idea

    version: '3'
    services:
      mark-idea:
        image: jxjxjhjh/mark-idea
        ports:
          - "8090:8090"
        restart: always
        environment:
            - USERNAME=<default-username>
            - PASSWORD=<default-password>
            - REGISTER=false #true: allow register;false: disallow regisster
        volumes:
                - /var/www:/app/db
                - /var/www:/app/notes
