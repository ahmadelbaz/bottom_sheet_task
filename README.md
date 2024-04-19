# Bottom Sheet UI

## Overview

This Flutter application showcases a modern and responsive user interface design specifically tailored for displaying data in a dynamically rendered bottom sheet.

## How to Use

You can try the app with both Android & Windows Versions :
- Android : [Click to download apk file](https://www.dropbox.com/scl/fi/7ui5sdrar842poupshz54/bottom_sheet_ahmad_elbaz.apk?rlkey=rw24ci0gh5x41xx0mpggdpaze&st=plce7kup&dl=1)
- Windows : [Click to download exe file](https://www.dropbox.com/scl/fi/tfxgqbcupqzqfpa2xsy30/bottom_sheet_task_install.exe?rlkey=a6v7p1k7mout96ci7hlotc8hm&st=lpkk2pix&dl=1) (Antivirus may prevent the app from working)

To get and run the code :

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/ahmadelbaz/bottom_sheet_task.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```
**Step 3:**

You have to add "baseUrl" and the access "token" in the file:

```
lib/
|- resources/
  |- string_manager.dart
```

## Screenshots

<img src="/assets/images/screenshots/01.jpg" width="200"> | <img src="/assets/images/screenshots/02.jpg" width="200"> | <img src="/assets/images/screenshots/03.jpg" width="200"> | <img src="/assets/images/screenshots/04.jpg" width="200"> | <img src="/assets/images/screenshots/05.jpg" width="200"> | <img src="/assets/images/screenshots/06.jpg" width="200"> | <img src="/assets/images/screenshots/07.jpg" width="200"> | <img src="/assets/images/screenshots/08.jpg" width="200"> | <img src="/assets/images/screenshots/09.jpg" width="200">

## Features

* Dynamic Data Fetching
* Dark/Light themes
* Responsive Bottom Sheet UI
* Reusable widgets
* State management with flutter_riverpod
* Fetching data from api using Dio
* Secure sensitive data using env file

### Up-Coming Features:

* Redraw Switch widget.
* Add Extension for customizing different colors for different themes.
* Add shimmer effect for images.
* Store user preferred theme in local storage.
* Apply tests and CI/CD.

### Libraries & Tools Used

* dio
* flutter_riverpod
* envied
* bottom_sheet

### Folder Structure

Here is the folder structure we have been using in this project

```
lib/
|- APIs/
|- app/
|- models/
|- providers/
|- resources/
|- screens/
|- services/
|- widgets/
|- env.dart
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- APIs - All APIs we use in the project.
2- app - Contains the app.dart file that contains the MaterialApp and the first class in our app, We implement Singletone design pattern in this file.
3- models - All models we need in the project.
4- providers — Contains providers for state-management of our application, to connect the reactive data of our application with the UI.
5- resources — All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `theme`, `dimentions`, `colors`, 'routes , `api endpoints` and `strings`.
6- screens - All screens we have in our app.
7- services - Contains any service we need in our app. For example Dio, SharedPreferences etc.
8- widgets — Contains the common widgets for your applications. For example, Button, TextField, BottomSheet etc.
9- env.dart — This file contains any environment variables we are trying to secure like api endpoint, token etc.
10- main.dart - This is the starting point of the application.
```
