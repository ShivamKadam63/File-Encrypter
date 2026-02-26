pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
                echo "Building Java project..."
                cd PasswordProtection
                mkdir -p build
                javac -d build src/*.java
                echo "Build completed"
                '''
            }
        }

        stage('Package') {
            steps {
                sh '''
                echo "Packaging JAR..."
                cd PasswordProtection/build
                jar cf FileEncrypter.jar *.class
                echo "JAR created successfully"
                '''
            }
        }

        stage('Docker Build') {
            steps {
                sh '''
                echo "Building Docker image..."
                docker build -t shivam-file-encrypter .
                '''
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'PasswordProtection/build/*.jar', fingerprint: true
            }
        }
    }
}
