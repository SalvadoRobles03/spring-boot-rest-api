# Imagen base
FROM maven:3.8.5-openjdk-17-slim

# Directorio de trabajo
WORKDIR /app

# Copiar el archivo pom.xml y descargar las dependencias
COPY pom.xml ./
RUN mvn dependency:go-offline -B

# Copiar el resto del código
COPY src ./src

# Construir la aplicación
RUN mvn install -DskipTests

# Comando de inicio
CMD ["mvn", "spring-boot:run"]
