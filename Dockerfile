FROM openjdk:8
COPY target/dianping-0.0.1-SNAPSHOT.jar /dianping-0.0.1-SNAPSHOT.jar
ENV mysql.address 192.168.1.151
CMD ["java", "-jar", "dianping-0.0.1-SNAPSHOT.jar"]