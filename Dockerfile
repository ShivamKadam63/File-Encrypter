FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY "Password Protection/build/FileEncrypter.jar" .
CMD ["java", "-cp", "FileEncrypter.jar", "Main"]

