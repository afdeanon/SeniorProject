GITHUB LINK TO THE PROJECT: https://github.com/afdeanon/SeniorProject
# social_workout_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

To Set Up the Project:

Prerequisites:
Have the Flutter SDK installed on your machine: https://docs.flutter.dev/get-started/install/macos/mobile-ios 
Have Visual Studio Code installed on your machine
Have Xcode installed on your Mac (from the Apple Store) with the IOS 17.2 package installed for the simulator
Have Cocoapods installed on your machine using the command 'sudo gem install cocoapods'
Create a new terminal window

Clone the repository using the HTTPS Link: https://github.com/afdeanon/SeniorProject.git and navigate to the folder where the code is located

Open the project folder in Visual Studio Code

Install Flutter and Dart plugins for Visual Studio Code if they are not already installed. They can be found in the Visual Studo Code extensions marketplace

Open a terminal in Visual Studio Code and cd to the project folder: 'cd SeniorProject'

Run the command 'flutter pub get' to get all the dependencies for the project
Navigate to the IOS directory by using the command 'cd ios'
Run 'pod install' to install the Cocoapods dependencies for the project
Navigate back to the root directory of the project by doing 'cd ..'
Open the IOS simulator by opening Xcode and selecting the IPhone option
Go back to Visual Studio Vode(do not close the simulator on Xcode), and select 'Run without debugging'

If you encounter any issues: run 'flutter doctor' in order to troubleshoot

Further setup instructions are below if you have not run the Xcode simulator, or installed cocoapods before.

**These following steps will allow you to configure XCODE to run the application**
1. sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
2. sudo xcodebuild -license
**In order to configure the iOS simulator to run a flutter application, run these commands**
1. xcodebuild -downloadPlatform iOS
2. open -a Simulator

Open Xcode, and go to the Windows tab, then to "Devices and Simulators"

Once a new screen opens, click on "Simulators" and then choose an iOS simulator from the list on the left side

**In order to run this app, you also need CocoaPods installed**

In your terminal, run the following commands:
1. sudo gem install cocoapods

Find your file ~/.zshenv, and open it in a text editor.

At the end of your ~/.zshenv file, paste this line:
export PATH=$HOME/.gem/bin:$PATH

Save the file, and restart all open terminal sessions.

Open your terminal, and run the command : flutter doctor

If there are any questions, feel free to email kqtednh@gmail.com/afdeanon@gmail.com/nick.bao2020@gmail.com/soundy0115@gmail.com for further troubleshooting
