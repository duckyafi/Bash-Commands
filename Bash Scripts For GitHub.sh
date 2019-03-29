#!/bin/bash
# This hides the your admin user from the login window
sudo dscl . create /Users/"username" IsHidden 1
# This shows your basic system info system information on your Mac login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo IPAddress
# This command turns on remote login function on under sharing located in System Preferences
sudo systemsetup -setremotelogin on
# This command turns on the Remote Management function located in System Preferences
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users admin -privs -all -restart -agent -menu
# This commnand turns on Remote Managment for all users with menu extra
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -allowAccessFor -allUsers -privs -all -clientopts -setmenuextra -menuextra yes
# I use this command to copy a folder full of images from an external source that I use for all the standard wallpaper
cp -i /"location"/"of"/"folder" ~/"target_location"
# This command writes a message on the login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Property of Fake Company: If Found Please Email security@fakecompany.com"
# This command sets the .local computer name you can enter asset numbers etc to this field
sudo scutil --set ComputerName
# Use this command to list the available updates
softwareupdate -l
# Use this command to update all available updates
softwareupdate -i -a 
