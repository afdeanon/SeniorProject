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

To SetUp the Project:
Create a new terminal window

Clone the repository using the HTTPS Link: https://github.com/afdeanon/SeniorProject.git and navigate to the folder where the code is located
 **Install the flutter SDK from VSCODE**
You can follow this link as well https://docs.flutter.dev/get-started/install/macos/mobile-ios 
type the command "cd <project-name>"
run "flutter pub get"
run "flutter run"
**Make sure that for IOS development, you have XCODE installed on your computer, and have downloaded the IOS 17.2 package**
**In order to make sure that you have everything needed, run "flutter doctor" in your terminal**
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
