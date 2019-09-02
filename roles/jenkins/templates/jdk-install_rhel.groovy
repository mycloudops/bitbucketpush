import hudson.model.JDK
import hudson.tools.JDKInstaller
import hudson.tools.InstallSourceProperty
import jenkins.model.Jenkins

def descriptor = new JDK.DescriptorImpl();

if (descriptor.getInstallations()) {
   println 'skip jdk installations'
} else {
    println 'add jdk8'
    Jenkins.instance.updateCenter.getById('default').updateDirectlyNow(true)
    def jdk = new JDK("JDK 8", "/usr/lib/jvm/java-1.8.0-openjdk");
    descriptor.setInstallations(jdk)
}
