node {
    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'mpc-ci-username-password',usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
        checkout([$class: 'GitSCM', branches: [[name: '*/$BRANCH_NAME']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '9058f5f0-d4af-465b-a41b-2d5a881ad649', url: 'https://github.umn.edu/mpc/apiprogram']]]) 
        def image = docker.build('apiprogram')
				sh 'ls'
        image.inside('-v $WORKSPACE:/src') {
					sh 'bundle exec jekyll build '
				}
				sh 'ls'
				sh 'ls/_site'
    }
}
