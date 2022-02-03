#!/bin/sh

# <bitbar.title>Maestral Status Indicator</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>SetKu</bitbar.author>
# <bitbar.dependencies>maestral, pcregrep</bitbar.dependencies>

# <swiftbar.hideAbout>true</swiftbar.hideAbout>
# <swiftbar.hideRunInTerminal>true</swiftbar.hideRunInTerminal>
# <swiftbar.hideLastUpdated>true</swiftbar.hideLastUpdated>
# <swiftbar.hideDisablePlugin>true</swiftbar.hideDisablePlugin>
# <swiftbar.hideSwiftBar>true</swiftbar.hideSwiftBar>

# Bash script path issue solution: https://stackoverflow.com/questions/14612444/bash-script-runs-manually-but-fails-on-crontab

export PATH="/opt/homebrew/bin:$PATH"

STATUS=$(maestral status | pcregrep -o1 "Status:\s+(\w.*)")

if [ "$STATUS" == "Up to date" ] 
then
  echo "(~_^)b"
else
  echo $STATUS
fi