plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")  //  Changed from "kotlin-android"
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.solitude.app"
    compileSdk = 36  //  Changed from flutter.compileSdkVersion
    buildToolsVersion = "36.0.0"  //  Added
    ndkVersion = "28.0.12433566"  //  Changed from flutter.ndkVersion
    
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_21  //  Changed from VERSION_11
        targetCompatibility = JavaVersion.VERSION_21  //  Changed from VERSION_11
    }
    
    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_21.toString()  //  Changed from VERSION_11
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.solitude.app"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
