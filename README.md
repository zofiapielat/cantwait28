# Can't Wait App

This project is a Flutter application.

It counts days down to exciting dates in the future.

# Installation

To run it please:


## Change App ID:

Find and replace any occurance of `com.zofiapielat` to `com.yourcompanyname`

## Configure Firebase in your system:

- [Install Firebase CLI](https://firebase.google.com/docs/cli)

```
# Login to your Google Account where you want to store data of a project
firebase login
```

```
# Install the CLI if not already done so
dart pub global activate flutterfire_cli
```

```
# Run the `configure` command, select a Firebase project and platforms
flutterfire configure
```

## Configure Firebase project

Log in to your [Firebase Account](https://console.firebase.google.com/) 

1. Enable Authentication > Email/Password Provider 
2. Create Cloud Firestore database.

# Getting Started with Flutter

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
