pipeline {
    agent { label 'master' }
    stages {
        stage('build') {
            steps {
                script {
                    def mem = sh(script: "cat /proc/meminfo | grep MemTotal", returnStdout: true).trim() as Integer
                    println("mem = ${mem}")
                }
            }
        }
    }
}
