$env:GPGEXE = "C:\Program Files (x86)\GnuPG\bin\gpg.exe"
$env:GNUPGHOME = "C:\Users\adm101\AppData\Roaming\gnupg"

& mvn -f .\client\pom.xml -B -Psign-artifacts -DskipTests -e clean verify org.sonatype.central:central-publishing-maven-plugin:0.9.0:publish
