pipeline {

    agent any
    stages {

        stage('unit-test') {
            steps {
                bat(/mvn -fn clean install/)
            }
        }
    }

    post {
            always {
                echo 'I will always say Hello again!'
		publishGherkinResults '**/*OctaneGherkinResults.xml'
            }
        }

}
