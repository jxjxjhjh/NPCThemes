Hansanshi/mark-idea的docker镜像构建项目，代码来自chy9002/mark-idea

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
