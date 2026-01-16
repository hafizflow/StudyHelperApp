# Study Helper App

A comprehensive Flutter application that helps students create interactive study materials including flashcards, quizzes, and study guides from their lectures and notes.

## Features

### Core Functionality

- **Flashcard Generation** - Create custom flashcards from uploaded content
- **Quiz Race** - Generate interactive quizzes for self-assessment
- **Matching Sprint** - Create matching games for vocabulary and concepts
- **Study Guide Builder** - Generate structured study guides from course materials

### User Management

- User authentication (Login/Sign Up)
- Password recovery with OTP verification
- Social authentication (Google/Apple)
- User preferences and settings

### Content Management

- Upload resources (files, videos, links)
- AI-powered content processing
- Edit and customize generated materials
- Save and organize study materials by folders

## Tech Stack

### Core Technologies

- **Flutter** - UI framework
- **Dart** - Programming language

### State Management

- **Flutter Bloc** (^8.1.3) - Business logic and state management
- **Equatable** (^2.0.5) - Value equality for Dart objects

### Navigation

- **GoRouter** (^12.1.1) - Declarative routing solution

### Local Storage

- **SharedPreferences** (^2.2.2) - Persistent local data storage

## Project Structure

```
lib/
├── core/
│   └── router/
│       └── app_router.dart
├── features/
│   ├── auth/
│   │   └── presentation/
│   │       ├── bloc/
│   │       │   ├── auth_bloc.dart
│   │       │   ├── auth_event.dart
│   │       │   └── auth_state.dart
│   │       └── pages/
│   │           ├── forgot_password_page.dart
│   │           ├── login_page.dart
│   │           ├── otp_verification_page.dart
│   │           ├── reset_password_page.dart
│   │           ├── sign_up_page.dart
│   │           ├── terms_page.dart
│   │           └── welcome_page.dart
│   ├── splash/
│   │   └── presentation/
│   │       └── pages/
│   │           └── splash_page.dart
│   ├── onboarding/
│   │   └── presentation/
│   │       └── pages/
│   │           ├── onboarding_page.dart
│   │           └── user_name_page.dart
│   ├── home/
│   │   └── presentation/
│   │       └── pages/
│   │           └── home_page.dart
│   ├── flashcard/
│   │   └── presentation/
│   │       └── pages/
│   │           ├── create_flashcard_page.dart
│   │           ├── flashcard_edit_page.dart
│   │           └── flashcard_list_page.dart
│   ├── game/
│   │   ├── domain/
│   │   │   └── models/
│   │   │       └── flashcard_model.dart
│   │   └── presentation/
│   │       └── bloc/
│   │           ├── game_bloc.dart
│   │           ├── game_event.dart
│   │           └── game_state.dart
│   ├── study_guide/
│   │   └── presentation/
│   │       └── bloc/
│   │           ├── study_guide_bloc.dart
│   │           ├── study_guide_event.dart
│   │           └── study_guide_state.dart
│   └── shared/
│       └── presentation/
│           └── pages/
│               ├── processing_page.dart
│               └── upload_resources_page.dart
└── main.dart
```

## Architecture

The project follows **Clean Architecture** principles with clear separation of concerns:

### Layers

1. **Presentation Layer** - UI components and BLoC state management
2. **Domain Layer** - Business logic and entities
3. **Data Layer** - Data sources and repositories (to be implemented)

### Design Patterns

- **BLoC Pattern** - Separates business logic from UI
- **Repository Pattern** - Abstracts data sources
- **Dependency Injection** - Using BlocProvider for DI

## Installation

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK
- Android Studio / Xcode for mobile development
- VS Code or Android Studio with Flutter plugins

### Setup Steps

1. **Clone the repository**

```bash
git clone <repository-url>
cd study_helper
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Create assets directory**

```bash
mkdir -p assets/images
```

4. **Add your images** (optional)
   Place your logo and other images in `assets/images/` folder

5. **Run the app**

```bash
flutter run
```

## Usage

### Application Flow

```
Splash Screen
    ↓
Onboarding (3 pages)
    ↓
User Name Input
    ↓
Welcome Page
    ↓
Login / Sign Up
    ↓
Home Page
    ↓
Select Game Mode (Flashcard/Quiz/Matching/Study Guide)
    ↓
Upload Resources
    ↓
Processing
    ↓
Generated Content (Edit/Save/Demo)
```

### Creating Flashcards

1. Navigate to **Home** page
2. Select **Flashcard Generation**
3. Enter folder name
4. Choose number of flashcards (10, 20, 40, 60, 80, 100, or Max)
5. Add additional instructions (optional)
6. Click **Generate Flashcards**
7. Review and edit generated flashcards
8. Save to library or play immediately

### Authentication

**Sign Up:**

- Email/Password registration
- Social authentication (Google/Apple)
- Terms and conditions acceptance

**Login:**

- Email/Password login
- Social authentication options
- Password recovery available

**Password Recovery:**

1. Enter email address
2. Receive OTP code
3. Verify OTP (6-digit code)
4. Set new password

## State Management

### BLoC Implementation

**AuthBloc** - Manages authentication state

- Events: Login, SignUp, ForgotPassword, VerifyOTP, ResetPassword, Logout
- States: Initial, Loading, Success, Error, OtpSent, OtpVerified, PasswordReset

**GameBloc** - Manages game/flashcard generation

- Events: CreateGame, GenerateFlashcards, SaveFlashcard, UpdateFlashcard
- States: Initial, Creating, Generating, Generated, Saving, Saved, Error

**StudyGuideBloc** - Manages study guide generation

- Events: GenerateStudyGuide, SaveStudyGuide
- States: Initial, Generating, Generated, Saving, Saved, Error

## Navigation

Using **GoRouter** for declarative navigation:

### Routes

- `/` - Splash Page
- `/onboarding` - Onboarding Flow
- `/user-name` - User Name Input
- `/welcome` - Welcome Page
- `/login` - Login Page
- `/sign-up` - Sign Up Page
- `/forgot-password` - Password Recovery
- `/otp-verification` - OTP Verification
- `/reset-password` - Reset Password
- `/terms` - Terms and Conditions
- `/home` - Home Page
- `/create-flashcard` - Create Flashcard
- `/upload-resources?type=<gameType>` - Upload Resources
- `/processing` - Processing Screen
- `/flashcard-list` - Flashcard List
- `/flashcard-edit` - Edit Flashcard

## Testing

### Running Tests

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run integration tests
flutter drive --target=test_driver/app.dart
```

## Building

### Android

```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

## Mock Data

The application currently uses mock data for demonstration:

**Flashcards:**

- Auto-generated with sample questions and answers
- Biology theme by default
- Configurable count (10-100 cards)

**Authentication:**

- All auth operations complete with 1-second delay
- No backend integration yet

## Future Enhancements

### Backend Integration

- [ ] Connect to REST API
- [ ] Real authentication service
- [ ] Cloud storage for flashcards
- [ ] User profile management

### AI Features

- [ ] Integrate AI for content generation
- [ ] Natural language processing for question creation
- [ ] Smart content extraction from videos/PDFs

### Game Modes

- [ ] Implement Quiz Race gameplay
- [ ] Implement Matching Sprint gameplay
- [ ] Add multiplayer support
- [ ] Leaderboards and achievements

### Content Features

- [ ] PDF upload and processing
- [ ] Video transcription
- [ ] Audio recording support
- [ ] Collaborative study groups

### UX Improvements

- [ ] Dark mode support
- [ ] Customizable themes
- [ ] Offline mode
- [ ] Push notifications

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Coding Standards

- Follow Flutter/Dart style guide
- Write meaningful commit messages
- Add comments for complex logic
- Maintain test coverage above 80%

## Troubleshooting

### Common Issues

**Issue: Dependencies not resolving**

```bash
flutter clean
flutter pub get
```

**Issue: Build failures**

```bash
flutter clean
flutter pub get
flutter pub upgrade
```

**Issue: Hot reload not working**

- Restart the app completely
- Check for syntax errors
- Ensure all files are saved

## License

This project is created for educational/interview purposes.

## Contact

For questions or support, please open an issue in the repository.

## Acknowledgments

- Flutter team for the amazing framework
- Bloc library maintainers
- GoRouter contributors
- Design inspiration from modern education apps

---

**Note:** This is a portfolio/interview project demonstrating Flutter development skills with BLoC pattern and modern architecture principles.
