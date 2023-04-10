FROM openjdk:17
COPY /target/g3-appointment-service.jar appointment-service.jar
CMD [ "java","-jar","appointment-service.jar" ]