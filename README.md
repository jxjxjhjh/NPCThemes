Hansanshi/mark-idea的docker镜像构建项目，代码来自chy9002/mark-idea

    version: '3'

    services:

      mark-idea:
  
        image: jxjxjhjh/mark-idea
    
        ports:
    
          - "<host port>:8090"
      
        restart: always
    
        environment:
    
            - USERNAME=<default-username>
        
            - PASSWORD=<default-password>
        
            - REGISTER=false #true: allow register;false: disallow regisster
        
        volumes:
    
                - <local_path>:/app/db
            
                - <local_path>:/app/notes/<username>(不使用本地文件同步方式请删除此项)
