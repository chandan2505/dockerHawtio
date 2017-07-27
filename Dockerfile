FROM frolvlad/alpine-oraclejdk8:full
VOLUME /tmp/HAWTIO
COPY hawtio-app-1.5.2.jar app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 8090
ENTRYPOINT ["java","-Dhawtio.authenticationEnabled=false","-jar","/app.jar"]
