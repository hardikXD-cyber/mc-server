FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY server.jar .
COPY start.sh .
COPY eula.txt .
COPY server.properties .
COPY plugins ./plugins

RUN chmod +x start.sh

EXPOSE 25565
EXPOSE 19132/udp

CMD ["./start.sh"]