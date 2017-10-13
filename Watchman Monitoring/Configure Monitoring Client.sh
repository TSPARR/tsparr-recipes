#!/bin/bash

/usr/bin/defaults write /Library/MonitoringClient/ClientSettings ClientGroup -string "$4"

/usr/bin/defaults write /Library/MonitoringClient/ClientSettings Update_Enabled -bool "$5"
