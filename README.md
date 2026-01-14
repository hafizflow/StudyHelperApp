# My Study Buddy - Flutter Application

A comprehensive study helper application built with Flutter, featuring flashcards, quizzes, study guides, and game modes to enhance learning.

## Features

- **Authentication System**: Complete login, signup, password reset flow
- **Onboarding**: Welcome screens introducing app features
- **Game Modes**:
  - Flashcards with flip animations
  - Multiple-choice quizzes
  - Matching games
- **Study Guide Generator**: AI-powered study guide creation
- **Content Creation**: Upload and process study materials
- **Editor Tools**: Edit flashcards and quiz questions

## Project Structure

```
lib/
├── main.dart
├── core/
│   └── router/
│       └── app_router.dart
├── features/
│   ├── splash/
│   │   └── presentation/pages/
│   ├── onboarding/
│   │   └── presentation/pages/
│   ├── auth/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   ├── home/
│   │   └── presentation/pages/
│   ├── game/
│   │   ├── domain/models/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   └── study_guide/
│       ├── domain/models/
│       └── presentation/
│           ├── bloc/
│           └── pages/
```

## Technology Stack

- **State Management**: Flutter Bloc + Equatable
- **Navigation**: go_router
- **UI Components**: flutter_svg, google_fonts
- **File Handling**: file_picker
- **Storage**: shared_preferences

## Setup Instructions

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Create Assets Directory

```bash
mkdir -p assets/images assets/icons
```

### 3. Run the Application

```bash
flutter run
```

## Key Components

### State Management (Bloc)

The app uses three main Blocs:

- **AuthBloc**: Handles authentication (login, signup, password reset)
- **GameBloc**: Manages game content (flashcards, quizzes)
- **StudyGuideBloc**: Controls study guide generation and editing

### Navigation Flow

```
Splash → Onboarding → Welcome → Login/Signup → Name Input → Home
```

From Home, users can:
- Create flashcards → Preview → Edit → Play/Save
- Create quizzes → Preview → Edit → Play/Save
- Create study guides → Preview → Edit → Save

### Mock Data

The application uses mock data for demonstration:
- **Flashcards**: 5 cards with "Heart" term and Lorem ipsum definitions
- **Quizzes**: 10 questions about biology topics
- **Study Guides**: Biology Chapter 5 content with sections, key terms, and quick facts

## Pages Overview

### Authentication
- `WelcomePage`: Entry point with sign-in options
- `LoginPage`: Email/password login
- `SignupPage`: New user registration
- `ForgotPasswordPage`: Password recovery
- `VerifyCodePage`: OTP verification
- `ResetPasswordPage`: New password creation
- `NameInputPage`: User name collection
- `TermsPage`: Terms and conditions

### Main Features
- `HomePage`: Dashboard with create options and recent items
- `CreateGamePage`: Content upload and game configuration
- `FlashcardPage`: Flashcard viewer with flip animations
- `FlashcardEditorPage`: Edit flashcard content
- `QuizPage`: Quiz player with multiple-choice questions
- `QuizEditorPage`: Edit quiz questions and answers
- `StudyGuideViewerPage`: Study guide with expandable sections
- `CreateStudyGuidePage`: Study guide generation settings

## Design Pattern

The app follows **Clean Architecture** principles:

- **Domain Layer**: Models and business logic
- **Presentation Layer**: UI components and Bloc
- **Core**: Shared utilities and routing

## Customization

### Theme
The app uses a purple color scheme with a warm beige background. Modify in `main.dart`:

```dart
colorScheme: ColorScheme.fromSeed(
  seedColor: const Color(0xFF9B8FD9),
  primary: const Color(0xFF9B8FD9),
  secondary: const Color(0xFFFFB4D1),
),
```

### Mock Data
To change mock data, edit the Bloc files:
- `game_bloc.dart` for flashcards/quizzes
- `study_guide_bloc.dart` for study guides

## Future Enhancements

- [ ] Backend integration
- [ ] File upload functionality
- [ ] AI content generation
- [ ] User profiles and progress tracking
- [ ] Social features (multiplayer games)
- [ ] Offline support
- [ ] Analytics dashboard

## Git Workflow

```bash
# Initialize repository
git init
git add .
git commit -m "Initial commit: Complete study helper app"

# Create feature branches
git checkout -b feature/flashcards
git checkout -b feature/quiz-mode
git checkout -b feature/study-guides
```

## Testing

Run tests:
```bash
flutter test
```

## Building for Release

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes with clear messages
4. Push to the branch
5. Create a Pull Request

## License

This project is created for educational purposes.

## Support

For issues or questions, please open an issue in the repository.

---

**Note**: This application uses mock data. For production use, integrate with a backend API and implement proper authentication and data persistence.