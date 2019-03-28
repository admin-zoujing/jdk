#! /bin/bash
#jdk1.8.0安装脚本
chmod -R 777 /usr/local/src/jdk1.8.0
#安装jdk-1.8.0
mkdir /usr/local/java
tar -zxvf jdk-8u144-linux-x64.tar.gz -C /usr/local/java
cat >> /etc/profile.d/java.sh <<EOF
export JAVA_HOME=/usr/local/java/jdk1.8.0_144
export JRE_HOME=/usr/local/java/jdk1.8.0_144/jre
export JAVA_BIN=\$JAVA_HOME/bin
export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar
export PATH=\$JAVA_HOME/bin:\$JRE_HOME/bin:\$PATH
EOF

cd
source /etc/profile.d/java.sh
source /etc/profile.d/java.sh
java -version

