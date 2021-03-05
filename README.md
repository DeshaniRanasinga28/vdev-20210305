# vdev-20210305

# Setup

 1. Using the terminal (command line/shell), initialize a Git repository in this directory.

     ` ~$ git init `
 
 2. Using the terminal, add the README.md file to the repo.

     ` ~$ git add README.md `
     
 3. Using the terminal, make the first commit with the message “Empty project with README”.

     ` ~$ git commit -m "Empty project with README" `
     
     

# GitHub project
     
 4. Using the terminal, add the repository on GitHub as a remote to your local repository.

     ` ~$ git remote add origin https://github.com/DeshaniRanasinga28/vdev-20210305.git `
      
 5. Using the terminal, push the commits in your local repo to the remote repo on GitHub.
 
     ` ~$ git branch -M main `

     ` ~$ git push -u origin main `
     
# Flutter dev environment
Follow the following instructions to set up a Flutter development environment for macOS platform.

## System requirements
 - Operating Systems: macOS (64-bit)
 - Disk Space: 2.8 GB (does not include disk space for IDE/tools)
 - Tools: Flutter uses git for installation and upgrade. Installing Xcode and Android Studio

## Get the Flutter SDK
Step 1 - Go to the following link and download the latest stable release of the Flutter SDK:

     https://flutter.dev/docs/get-started/install/macos
     
Step 2 - Create the development folders and Extract the download file uisng following commands:

     ` ~$ cd ~/development `
     
     ` ~$ unzip ~/Downloads/flutter_macos_2.0.1-stable.zip `
     
Step 3 - Add the flutter tool to your path using following commands:

This command helps to sets PATH variable for the current terminal window. To permanently add Flutter to your path follow the following option step. 

     ` ~$ export PATH="$PATH:`pwd`/flutter/bin" `
     
     
  
     
     
