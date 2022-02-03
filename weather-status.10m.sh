#!/bin/sh

# <bitbar.title>Local Weather Indicator</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>SetKu</bitbar.author>
# <bitbar.dependencies>curl, sed, head</bitbar.dependencies>

# <swiftbar.hideAbout>true</swiftbar.hideAbout>
# <swiftbar.hideRunInTerminal>true</swiftbar.hideRunInTerminal>
# <swiftbar.hideLastUpdated>true</swiftbar.hideLastUpdated>
# <swiftbar.hideDisablePlugin>true</swiftbar.hideDisablePlugin>
# <swiftbar.hideSwiftBar>true</swiftbar.hideSwiftBar>

echo "$(curl -s 'wttr.in/?format=%c%t\n')"
echo "---"
echo "$(date)"

STATS=$(curl 'wttr.in/?TF' | sed 's/$/ | trim=false font="JetBrains Mono"/' | head -7)

echo "$STATS"
echo "wttr.in | href='https://wttr.in'"
echo "windy.com | href='https://www.windy.com'"