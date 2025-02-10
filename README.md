# motel_go

Flutter project designed to list and manage motels efficiently.

## Features

- List and manage motels
- Search functionality
- Detailed motel information

## Getting Started

In order to get started, you will need to install:
- [Dart - 3.5.4 or above](https://dart.dev/get-dart)
- [Flutter - 3.27.4 or above](https://docs.flutter.dev/get-started/install)
- [Git](https://git-scm.com/)


### Configuring VS Code
Make sure you install the Dart and Flutter extensions for VS Code:
- [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)
- [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)

### Cloning the repository

You can find the code hosted [here](https://github.com/hikrdu/motel_go.git)

In your terminal, go to your projects directory, and run the following command: `git clone https://github.com/hikrdu/motel_go.git` 


### Running

First of all, we need to make sure we have pulled all the dependencies of the project: run `flutter pub get` in the root of the project and all feature modules to download all the dependencies.

After this, execute `flutter pub run build_runner` in the root of the project and all feature modules to generate `.g.dart` files for JsonSerializable to generate to/from JSON code for a classes and work correctly. More information [here](https://pub.dev/packages/json_serializable).

After everything is properly installed, invoke 'Run > Start Debugging' on menu or just press `F5`.

====================================================================================================================

##### Depedencies:

[BLoC](https://pub.dev/packages/bloc) - State management library that helps implement the BLoC (Business Logic Component) design pattern.
[Equatable](https://pub.dev/packages/equatable) - A utility that simplifies the process of comparing objects for equality.
[Flutter Bloc](https://pub.dev/packages/flutter_bloc) - Package that simplifies the integration of BLoC state management patterns.
[Http](https://pub.dev/packages/http) - a set of high-level functions and classes that make it easy to consume HTTP resources.
[Intl](https://pub.dev/packages/intl) - A library that provides internationalization (i18n) and localization (l10n) support for Dart and Flutter applications.
[Material Symbols Icons](https://pub.dev/packages/material_symbols_icons) - a Flutter library that provides access to Material Symbols icons, which are part of Google's Material Design system.

##### Dev Depedencies:
[Json Serializable](https://pub.dev/packages/json_serializable) - Code generation library that simplifies the process of serializing and deserializing JSON data to and from Dart objects.
[BuildRunner](http://pub.dev/packages/build_runner) - Generate .g Files to JsonAnnotation.
