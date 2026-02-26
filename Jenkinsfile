pipeline {
    agent any

    stages {

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

        stage('Package') {
            steps {
                sh '''
                echo "Packaging JAR..."
                cd "Password Protection/build"
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
                archiveArtifacts artifacts: 'Password Protection/build/*.jar', fingerprint: true
            }
        }
    }
}
