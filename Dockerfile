# FROM node:latest AS app-front
# RUN git clone --depth 1 https://github.com/Hansanshi/mark-idea-front.git /app-front
# WORKDIR /app-front
# RUN rm -rf package-lock.json \
#     && npm install\
#     && npm run build
# RUN apt update\
#  && apt install -y zip \
#  && cd /app-front/dist/ \
#  && zip -r /app-front/front.zip ./*

# FROM maven:3-openjdk-8 as app-back
# RUN git clone --depth 1 https://github.com/Hansanshi/mark-idea.git /app
# WORKDIR /app
# COPY --from=app-front /app-front/front.zip /app/src/main/resources/front.zip
# RUN mvn package -Dmaven.test.skip=true

FROM openjdk:8-jre-alpine
RUN mkdir /app && wget https://glare.now.sh/Hansanshi/mark-idea/note -O /app/note.jar
    #--from=app-back /app/target/note-0.4.jar /app/note.jar
WORKDIR /app
ENV USERNAME=username
ENV PASSWORD=password
ENV REGISTER=true
EXPOSE 8090
CMD java -jar /app/note.jar \
    --username=${USERNAME} \
    --password=${PASSWORD} \
    --"register-forbidden"=${REGISTER}
