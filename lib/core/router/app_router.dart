import 'package:go_router/go_router.dart';
import 'package:study_helper_app/features/game/presentation/pages/flash_card_page.dart';
import 'package:study_helper_app/features/study_guide/presentation/pages/study_guide_viewer_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/auth/presentation/pages/welcome_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/auth/presentation/pages/name_input_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/game/presentation/pages/create_game_page.dart';
import '../../features/game/presentation/pages/quiz_page.dart';
import '../../features/study_guide/presentation/pages/create_study_guide_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/signup', builder: (context, state) => const SignupPage()),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: '/verify-code',
        builder: (context, state) =>
            VerifyCodePage(email: state.extra as String),
      ),
      GoRoute(
        path: '/reset-password',
        builder: (context, state) => const ResetPasswordPage(),
      ),
      GoRoute(path: '/terms', builder: (context, state) => const TermsPage()),
      GoRoute(
        path: '/name-input',
        builder: (context, state) => const NameInputPage(),
      ),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(
        path: '/create-game',
        builder: (context, state) =>
            CreateGamePage(gameType: state.extra as String),
      ),
      GoRoute(
        path: '/flashcard',
        builder: (context, state) => const FlashcardPage(),
      ),
      GoRoute(
        path: '/flashcard-editor',
        builder: (context, state) => const FlashcardEditorPage(),
      ),
      GoRoute(path: '/quiz', builder: (context, state) => const QuizPage()),
      GoRoute(
        path: '/quiz-editor',
        builder: (context, state) => const QuizEditorPage(),
      ),
      GoRoute(
        path: '/study-guide',
        builder: (context, state) => const StudyGuideViewerPage(),
      ),
      GoRoute(
        path: '/create-study-guide',
        builder: (context, state) => const CreateStudyGuidePage(),
      ),
    ],
  );
}
