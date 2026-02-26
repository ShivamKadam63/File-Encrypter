pipeline {
    agent any

    stages {

        stage('Clone Info') {
            steps {
                echo "Pipeline running for ShivamKadam63 repository"
            }
        }

        stage('Build') {
            steps {
                sh '''
                echo "Building Java project..."
                cd "Password Protection"
                mkdir -p build
                javac -d build src/*.java
                echo "Build completed"
                '''
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'Password Protection/build/*.class', fingerprint: true
            }
        }
    }
}
