Flutter Deep Linking App (Android)
This is a Flutter project demonstrating deep linking on Android using the app_links package and GetX for navigation.
The app handles the custom URI scheme http://foo.com.

Features


Deep linking with custom URI scheme (http://foo.com).
Navigation using GetX (^4.7.2).
Deep link handling with app_links (^6.4.0).
Displays on the target page.

Prerequisites


Flutter: Version 3.0.0 or higher.

Android Studio: For emulator and ADB setup.

Android Device/Emulator: API 21 or higher with USB Debugging enabled for physical devices.

ADB: Android Debug Bridge for testing deep links.

Setup Instructions

1. Clone the Repository
-git clone https://github.com/Amodmandal/deep_links_flutter.git
-cd your-repo

2 Install Dependencies
Ensure you have Flutter installed, then run:
flutter pub get

This installs:

-get: ^4.7.2
-app_links: ^6.4.0

3. Configure Android
4. The AndroidManifest.xml is pre-configured to handle http://foo.com.
Verify in android/app/src/main/AndroidManifest.xml:

<intent-filter>
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="myapp" android:host="foo" />
</intent-filter>

5. Run the App
Connect an Android device (with USB Debugging enabled) or start an emulator:
-flutter run

Testing Deep Links
Test the deep link myapp://foo.com using one of these methods:
Method 1: Using ADB
Test the deep link:adb shell am start -W -a android.intent.action.VIEW -d "http://foo?data=helloyes" com.example.myapp

Replace com.example.myapp with your app’s package name (in android/app/build.gradle).

Expected Result: The app opens, navigates to signinpage.

Method 2: Using Browser

Open Chrome on your Android device/emulator.
Enter http://foo.com in the address bar and tap Go.
The app should open and show "Foo Data: helloyes".


Link Doesn’t Open App:
Check AndroidManifest.xml for correct <intent-filter>.
Ensure the app is installed (flutter run).


Notes
This setup uses a custom URI scheme (http://foo.com). For App Links (https://), host an assetlinks.json file on a domain (not covered here due to no domain availability).
Test in different states: app closed, in background, or foreground.
For production, validate query parameters for security.

Contributing
Feel free to submit issues or pull requests to improve this project.
License
MIT License
