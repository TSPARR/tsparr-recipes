#!/bin/bash
# Disable Chrome Auto-Update.sh
# Disables Chrome Auto-Update for all accounts on the system

userList=$(dscl . list /Users UniqueID | awk '$2 > 500 {print $1}')

echo "Disabling Chrome Auto-Update for the following users..."

for a in $userList ; do
        /usr/bin/find /Users -type d -maxdepth 1 -mindepth 1 | grep "$a"
        if [[ $? == 0 ]]; then
            /usr/bin/defaults write "/Users/$a/Library/Preferences/com.google.Keystone.Agent.plist" checkInterval 0
        fi
done
