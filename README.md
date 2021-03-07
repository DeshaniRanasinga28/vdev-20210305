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

 6. Clearly summarize these steps (e.g. what to download, what commands to run, what to change in the environment, ...), so that someone else can use your short     note to set up a Flutter dev environment for themselves faster.


Follow the following instructions to set up a Flutter development environment for macOS platform.

## System requirements
 - Operating Systems: macOS (64-bit)
 - Disk Space: 2.8 GB (does not include disk space for IDE/tools)
 - Tools: Flutter uses git for installation and upgrade. Installing Xcode and Android Studio

## Get the Flutter SDK
Step 1 - Go to the following link and download the latest stable release of the Flutter SDK:

     https://flutter.dev/docs/get-started/install/macos
     
Step 2 - Create the development folders and Extract the download file uisng following commands:

      ~$ cd ~/development 
     
      ~$ unzip ~/Downloads/flutter_macos_2.0.1-stable.zip 
     
Step 3 - Add the flutter tool to your path using following commands:

This command helps to sets PATH variable for the current terminal window. To permanently add Flutter to your path follow the following optional step. 

      ~$ export PATH="$PATH:`pwd`/flutter/bin" 
     
### Optional Step

Optional Step 1 - Open new Terminal and type the following commands:
It helps to open your " .bash_profile " file in your computer

      ~$ open -e .bash_profile 
      
 * If you do not have  " .bash_profile " follow the following command to create the " .bash_profile ". Open the terminal and type the following command

       ~$ vim .bash_profile
      
      
     
Optional Step 2 - Add folowing line inside the .bash_profile file:

      export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin" 
      
     
     
     
     
Step 4 - Run the following command to see if there are any dependencies you need to install to complete the setup.

      ~$ flutter doctor 
     
     
# Platform setup

## Android setup

Step 1 - Download and install Android Studio.

Step 2 - Set the ANDROID_HOME, platform-tools, tools, tools_bin and emulator your path. 
         Open your " .bash_profile " file in your computer and add folowing paths

      export ANDROID_HOME=[PATH_TO_ABDROID_DIRECTORY]/sdk 
     
      export PATH=$PATH:$ANDROID_HOME/platform-tools 
     
      export PATH=$PATH:$ANDROID_HOME/tools 
     
      export PATH=$PATH:$ANDROID_HOME/tools/bin 
     
      export PATH=$PATH:$ANDROID_HOME/emulator 
      
      
      
## iOS setup

Step 1 - Download and install Xcode.

Step 2 - Configure the Xcode command-line tools

      $ sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
 
      $ sudo xcodebuild -runFirstLaunch
      
      
Step 3 - The Xcode license agreement is signed by either opening Xcode once and confirming or running " sudo xcodebuild -license " from the command line.



# Concepts

7. What are the important changes to Flutter and Dart that was announced at the Flutter Engage online conference on 2021 March?

**- Flutter web available in stable version.**

**- Google Pay rewrote in flutter for productivity gains.**

**- iRobot building Multiplatform with Flutter.**

**- Available the stable version for macOS, Windows and Linux.**

**- Microsoft contributing foldable support to Flutter.**

**- Sound null safety is fully supported in stable as of Flutter 2.**

**- The growing Flutter ecosystem.**

**- Upgraded Firebase plugins for Flutter.**

**- Announce that Flutter’s desktop support is available in the stable channel under an early release flag.**

**- Announce an open beta for Google Mobile Ads SDK for Flutter.**

**- Few iOS widgets have been added to the Cupertino design language implementation.**

**- Flutter Introduce the two additional new widgets, AutocompleteCore and ScaffoldMessenger.**

**- Toyota infotainment system powered by Flutter.**

**- Multiple Flutter instances with Add-to-App.**


   




     
    


     
     

     

     


     
     
  
     
     
