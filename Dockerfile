FROM openjdk:17
WORKDIR /app
COPY Password Protection/build/FileEncrypter.jar .
CMD ["java", "-cp", "FileEncrypter.jar", "Main"]
