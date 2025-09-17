#!/bin/bash
mkdir -p /home/runner/.m2
echo > /home/runner/.m2/settings.xml <<EOF 
<settings>
  <servers>   
    <server>
      <id>wsl_nexus</id>
      <username>${{ secrets.NEXUS_USERNAME }}</username>
      <password>${{ secrets.NEXUS_PASSWORD }}</password>
    </server>
  </servers>
</settings>
EOF
ls /home/runner/.m2
cat /home/runner/.m2/settings.xml