# Swifty Companion

## Description
A mobile application built with Flutter to explore user profiles from the 42 API.

## Key Features
1. **Login Page**: A page to enter the user's login.
2. **Error Notifications**: A top-screen bubble notification system for displaying errors like "Invalid username" or "Network error."
3. **User Page with Tabs**:
   - **Main Tab**: Displays profile picture, first name, last name, title, login, level with progress bar, and current cursus (with a switchable option if multiple cursus exist).
   - **Projects Tab**: Displays completed projects, failed projects, and projects in progress or pending evaluation.
   - **Achievements Tab**: Lists the user's achievements.
   - **Details Tab**: Shows detailed information like first name, last name, title, campus, location, wallet, grade, rank, and skills with percentages.
4. **OAuth2 Token Management**: Handles token fetching and refresh when expired.
5. **Responsive Design**: Adapts to all screen formats and sizes.

## Project Structure
```
lib/
├── main.dart
├── screens/
│   ├── login_screen.dart
│   ├── user_screen.dart
│   ├── tabs/
│   │   ├── main_tab.dart
│   │   ├── projects_tab.dart
│   │   ├── achievements_tab.dart
│   │   ├── details_tab.dart
├── services/
│   ├── api_service.dart
│   ├── token_service.dart
├── widgets/
│   ├── snackbar.dart
│   ├── progress_bar.dart
│   ├── user_avatar.dart
```

## How to Run the Project
1. Clone the repository:
   ```bash
   git clone https://github.com/USERNAME/swifty_companion.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the application:
   ```bash
   flutter run
   ```

## Contributions
Contributions are welcome! Please open an issue or submit a pull request to contribute to the project.

## License
This project is licensed under the MIT License.
