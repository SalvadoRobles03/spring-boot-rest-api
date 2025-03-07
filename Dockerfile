FROM maven:3.8.5-openjdk-17-slim

WORKDIR /app

COPY . .

RUN mvn install -U

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]
