node {
 	// Clean workspace before doing anything
    deleteDir()

    try {
        stage ('Build') {
        	sh "echo 'shell scripts to build project...'"
		sh "docker build -t jisequilla/mongo-auth:1.0.0 ."
        }
      	stage ('Deploy') {
            sh "echo 'shell scripts to deploy to server...'"
	    sh "docker push jisqquilla/mongo-auth:1.0.0"
      	}
    } catch (err) {
        currentBuild.result = 'FAILED'
        throw err
    }
}
