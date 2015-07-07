JENKINS_HOME_IS_EMPTY=1

# check home is empty
# TODO 空であるかチェックできるファイル
if [ -e /var/jenkins/some ]; then
    JENKINS_HOME_IS_EMPTY=0
fi

# start Jenkins
service jenkins start

# if jenkins home is empty,
# install some plugins after jenkins startup
if [ JENKINS_HOME_IS_EMPTY -eq 1 ]; then
    /root/InstallPlugins.sh
fi

# check tailed file exists
# TODO 不要かも
if [ ! -e /var/log/jenkins.log ]; then
    touch /var/log/jenkins/jenkins.log
    chown jenkins:jenkins /var/log/jenkins/jenkins.log
fi

tail -f /var/log/jenkins/jenkins.log