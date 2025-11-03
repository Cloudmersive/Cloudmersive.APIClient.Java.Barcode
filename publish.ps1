& mvn -f .\client\pom.xml -B -Psign-artifacts -DskipTests clean verify org.sonatype.central:central-publishing-maven-plugin:0.9.0:publish
