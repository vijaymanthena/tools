## Setup Instructions

1) first setup required version of JDK in /opt/oracle/java/<jdk version>

2) install SQLCL

3) in the /opt/oracle/tools/sqlcl/bin/sql file, add JAVA_HOME and PATH variables pointing to the right locations. Example below

```bash
# Setup environment for Java 11
export JAVA_HOME=/opt/oracle/java/jdk11
export PATH=$JAVA_HOME/bin:$PATH
```
