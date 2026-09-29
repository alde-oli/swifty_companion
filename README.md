<!-- YoRHa archive -->
```
▸ YoRHa // ARCHIVE — SWIFTY_COMPANION
```

A Flutter app that looks up a 42 student by login and shows their level, skills and projects from the 42 Intra API.

![Flutter](https://img.shields.io/badge/Flutter-Dart-4e4b42?style=flat-square) ![42 API](https://img.shields.io/badge/42_API-v2-dad4bb?style=flat-square)

| UNIT DATA | |
|---|---|
| Type | 42 Lausanne project · solo |
| Stack | Flutter · Dart · `http` · `flutter_dotenv` · 42 Intra API v2 (OAuth2) |
| Status | □ ARCHIVED · early prototype |

## ▸ Overview
You type in a 42 login. The app gets an OAuth2 token from the 42 Intra API with the client-credentials flow, calls `GET /v2/users/:login` and shows a summary of the profile.
The code is small and easy to follow: one API service, a login screen and a details screen, connected with named routes.

## ▸ Features
- Login search screen. Errors ("User not found", network or API failures, empty input) appear in a snackbar
- OAuth2 client-credentials token read from `CLIENT_ID` / `CLIENT_SECRET` in a `.env` file (`flutter_dotenv`)
- Details screen: login, email, level, skills with their levels, and every project with its status and final mark
- Flutter project scaffold for Android, iOS, web, Linux, macOS and Windows

## ▸ Usage
Create a 42 Intra API application, then add its credentials to a `.env` file:

```bash
CLIENT_ID=<your 42 app uid>
CLIENT_SECRET=<your 42 app secret>
```

```bash
flutter pub get
flutter run
```

## ▸ Structure
```
lib/
├── main.dart                     app entry, dotenv loading, routes
├── services/api_service.dart     OAuth2 token + /v2/users/:login
└── screens/
    ├── login_screen.dart         login input and error snackbar
    └── user_details_screen.dart  level, skills, projects
```

## ▸ Notes
- `pubspec.yaml` declares the asset as `assets/.env`, but `main.dart` loads `.env`. Make them match (put the file where the loader looks and declare that path) before running.
- It's a prototype: the app requests a new token on every search, doesn't refresh tokens, prints the token to the console, and reads level and skills from the first cursus only.

---
<sub>▸ Archived by UNIT ALDE-OLI · [profile](https://github.com/alde-oli)</sub>
