FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY PasswordProtection/build/FileEncrypter.jar .
CMD ["java", "-cp", "FileEncrypter.jar", "Main"]
