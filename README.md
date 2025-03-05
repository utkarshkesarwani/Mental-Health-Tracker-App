# Mental Health Tracker App

## Overview
The **Mental Health Tracker App** is a mobile application designed to help users track their mental well-being, mood, and daily activities while providing insights and mental health resources. Built with **Flutter** and **Firebase**, this app ensures a seamless and efficient user experience with real-time data synchronization.

## Features
- **Mood Tracking:** Users can log their daily mood and emotions.
- **Journal Entries:** Users can write journal entries to reflect on their day.
- **Activity Tracking:** Users can log activities that affect their mental health.
- **Reminders & Notifications:** Customizable reminders for journaling and activities.
- **User Authentication:** Secure sign-up and login using Firebase Authentication.
- **Data Storage & Retrieval:** Cloud Firestore integration for seamless data management.
- **Analytics & Insights:** View trends in mood patterns over time.
- **Community & Support:** Access mental health resources and a supportive community.
- **Dark Mode:** Option to switch between light and dark themes.

## Tech Stack
### Frontend:
- **Flutter**: Cross-platform UI framework for building beautiful mobile applications.
- **Dart**: Programming language used with Flutter.

### Backend:
- **Firebase Authentication**: Handles user login and authentication.
- **Cloud Firestore**: NoSQL database for real-time data synchronization.
- **Firebase Storage**: Stores user-uploaded images and files.
- **Firebase Cloud Messaging (FCM)**: Push notifications for reminders.
- **Firebase Analytics**: User behavior tracking and analytics.

## Installation Guide
### Prerequisites
Before running the project, ensure you have the following installed:
- **Flutter SDK** ([Download here](https://flutter.dev/docs/get-started/install))
- **Dart SDK** (Included with Flutter installation)
- **Android Studio or Visual Studio Code** (Preferred IDE for Flutter)
- **Firebase Console Account** ([Sign up](https://firebase.google.com/))
- **Configured Firebase Project**

### Setting Up the Project
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/Mental-Health-Tracker-App.git
   cd Mental-Health-Tracker-App
   ```
2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```
3. **Configure Firebase:**
   - Create a project in [Firebase Console](https://console.firebase.google.com/).
   - Enable Authentication (Email/Google Sign-In).
   - Set up Cloud Firestore and Firebase Storage.
   - Download `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) and place them in the respective project directories.
4. **Run the Application:**
   ```bash
   flutter run
   ```

## Firebase Setup
To connect Firebase with the app, follow these steps:
1. Create a new Firebase project.
2. Register your app (Android/iOS).
3. Download the configuration files (`google-services.json` for Android and `GoogleService-Info.plist` for iOS).
4. Add Firebase SDK dependencies in `pubspec.yaml`:
   ```yaml
   dependencies:
     firebase_core: latest_version
     firebase_auth: latest_version
     cloud_firestore: latest_version
     firebase_storage: latest_version
     firebase_messaging: latest_version
     provider: latest_version
   ```

## Deployment
### Android:
1. Generate a signed APK:
   ```bash
   flutter build apk --release
   ```
2. Deploy to Google Play Store.

### iOS:
1. Build for iOS:
   ```bash
   flutter build ios
   ```
2. Deploy to the App Store.





