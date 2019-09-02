#systemd unit file for tomcat 7 
[Unit]
Description=Apache Tomcat Web Application Container
After=syslog.target network.target

[Service]
Type=forking

Environment=JAVA_HOME=/usr/lib/jvm/jre
Environment=CATALINA_PID=/opt/apache-tomcat-{{tomcat_version}}/temp/tomcat.pid
Environment=CATALINA_HOME=/opt/apache-tomcat-{{tomcat_version}}
Environment=CATALINE_BASE=/opt/apache-tomcat-{{tomcat_version}}
Environment='CATALINE_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC'
Environment='JAVA_OPTS=-Djava.awt.haedless=true -Djava.security.egd=file:/dev/./urandom'

ExecStart=/opt/apache-tomcat-{{tomcat_version}}/bin/startup.sh
ExecStop=/opt/apache-tomcat-{{tomcat_version}}/bin/shutdown.sh

User=tomcat
Group=tomcat

[Install]
WantedBy=multi-user.target
