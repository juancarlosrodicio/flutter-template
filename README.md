# Flutter Template

It's a template of flutter!

##  Android setUp

- Create jks file:
    ```
    keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA \
        -keysize 2048 -validity 10000 -alias upload
    ```

- Create  key.properties file in <project>/android/key.properties with:
    ```
    storePassword=<password-from-previous-step>
    keyPassword=<password-from-previous-step>
    keyAlias=upload
    storeFile=<keystore-file-location>
    ```

- Configure signing in gradle

    When building your app in release mode, configure gradle to use your upload key. To configure gradle, edit the <project>/android/app/build.gradle file.

    Add the keystore information from your properties file before the android block:

    ```
    def keystoreProperties = new Properties()
    def keystorePropertiesFile = rootProject.file('key.properties')
    if (keystorePropertiesFile.exists()) {
        keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
    }
    
    android {
        ...
    }
    ```

    Load the key.properties file into the keystoreProperties object.

    Add the signing configuration before the buildTypes block:

    ```
    signingConfigs {
        release {
            keyAlias keystoreProperties['keyAlias']
            keyPassword keystoreProperties['keyPassword']
            storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
            storePassword keystoreProperties['storePassword']
        }
    }
    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now,
            // so `flutter run --release` works.
               signingConfig signingConfigs.debug
              signingConfig signingConfigs.release
        }
     }
    ```

- Android Release:

    ```
    flutter build appbundle --no-tree-shake-icons
    ```

##  IOS setUp
    Use Xcode for setUp

##  Change app name and package
```
flutter pub run change_app_package_name:main com.rcuadrado.flutterTemplate 
```

##  Change icons:
    
In pubspec.yaml, change this:

```YAML
    flutter_launcher_icons:
        android: "launcher_icon"
        ios: true
        image_path: "assets/icon/icon.jpeg"
        remove_alpha_ios: true
        min_sdk_android: 21
```
    
Execute command:

```
dart run flutter_launcher_icons
```

##  Change spash:
    
In pubspec.yaml, change this:

```YAML
    flutter_native_splash:
        color: "#000000"
        image: "assets/icon/icon.jpeg"
        image_dark: "assets/icon/icon.jpeg"
        android: true
        ios: true
        android_12:
            color: "#000000"
            image: "assets/icon/small_icon.png"
            image_dark: "assets/icon/small_icon.png"
```
    
Execute command:

```
dart run flutter_native_splash:create
```


##  Features

| Widget | Description |
|:-----------------:|:---------------:|
|     animate_do     |      An animation package inspired in Animate.css, built using only Flutter animations, with zero dependencies.       |
|  card_swiper   |      Swiper/Carousel for flutter, with multiple layouts, infinite loop. Compatible with Android & iOS.       |
|   dio  |      A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.       |
| flutter_localizations |     Flutter Localization is a package use for in-app localization with Map data. Easier and faster to implement. This package is inspired by the Flutter SDK flutter_localizations itself. Follow the step below to use the package, or you can check out a small example project of the package.      |
|  flutter_dotenv  |     Load configuration at runtime from a .env file which can be used throughout the application.      |
|  flutter_native_splash  |     When your app is opened, there is a brief time while the native app loads Flutter. By default, during this time, the native app displays a white splash screen. This package automatically generates iOS, Android, and Web-native code for customizing this native splash screen background color and splash image. Supports dark mode, full screen, and platform-specific options.      |
|  flutter_riverpod  |     A reactive caching and data-binding framework. https://riverpod.dev    |
|  flutter_staggered_grid_view  |     Provides a collection of Flutter grids layouts.      |
|  go_router  |     A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.      |
|  google_mobile_ads  |     This repository contains the source code for the Google Mobile Ads Flutter plugin, which enables publishers to monetize Flutter apps using the Google Mobile Ads SDK.      |
|  intl  |     Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.      |
|  isar  |     Extremely fast, easy to use, and fully async NoSQL database for Flutter.      |
|  path_provider  |     A Flutter plugin for finding commonly used locations on the filesystem. Supports Android, iOS, Linux, macOS and Windows. Not all methods are supported on all platforms.      |
|  youtube_player_flutter  |     Flutter plugin for playing or streaming YouTube videos inline using the official iFrame Player API.      |
|  firebase_analytics  |     Flutter plugin for Google Analytics for Firebase, an app measurement solution that provides insight on app usage and user engagement on Android and iOS.      |
|  firebase_core  |     A Flutter plugin to use the Firebase Core API, which enables connecting to multiple Firebase apps.      |
|  pretty_dio_logger  |     Pretty Dio logger is a Dio interceptor that logs network calls in a pretty, easy to read format.      |
|  flutter_rating_bar  |     A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating.      |
|  launch_app_store  |     A Flutter plugin to assist in leaving user reviews/ratings in Google Play Store and Apple App Store.      |
|  build_runner  |     The build_runner package provides a concrete way of generating files using Dart code. Files are always generated directly on disk, and rebuilds are incremental - inspired by tools such as Bazel.      |



##  RiverPod

Execute command for riverpod generator
```
dart run build_runner watch
```



