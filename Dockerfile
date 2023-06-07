FROM openjdk:8-jre-slim
WORKDIR /api_af
COPY target/*.war /api_af/
EXPOSE 9090
CMD java -XX:+UseContainerSupport -Xmx512m -Dserver.port=9090 -jar api_af



