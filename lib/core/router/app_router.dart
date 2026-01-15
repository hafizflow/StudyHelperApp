import 'package:go_router/go_router.dart';
import 'package:study_helper_app/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:study_helper_app/features/auth/presentation/pages/login_page.dart';
import 'package:study_helper_app/features/auth/presentation/pages/otp_verification_page.dart';
import 'package:study_helper_app/features/auth/presentation/pages/reset_password_page.dart';
import 'package:study_helper_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:study_helper_app/features/auth/presentation/pages/terms_page.dart';
import 'package:study_helper_app/features/auth/presentation/pages/welcome_page.dart';
import 'package:study_helper_app/features/flashcard/presentation/pages/create_flashcard_page.dart';
import 'package:study_helper_app/features/flashcard/presentation/pages/flashcard_edit_page.dart';
import 'package:study_helper_app/features/flashcard/presentation/pages/flashcard_list_page.dart';
import 'package:study_helper_app/features/home/presentation/pages/home_page.dart';
import 'package:study_helper_app/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:study_helper_app/features/onboarding/presentation/pages/user_name_page.dart';
import 'package:study_helper_app/features/shared/presentation/pages/processing_page.dart';
import 'package:study_helper_app/features/shared/presentation/pages/upload_resources_page.dart';
import 'package:study_helper_app/features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashPage()),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/user-name',
        builder: (context, state) => const UserNamePage(),
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(
        path: '/sign-up',
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: '/otp-verification',
        builder: (context, state) => const OtpVerificationPage(),
      ),
      GoRoute(
        path: '/reset-password',
        builder: (context, state) => const ResetPasswordPage(),
      ),
      GoRoute(path: '/terms', builder: (context, state) => const TermsPage()),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
      GoRoute(
        path: '/create-flashcard',
        builder: (context, state) => const CreateFlashcardPage(),
      ),
      GoRoute(
        path: '/upload-resources',
        builder: (context, state) {
          final gameType = state.uri.queryParameters['type'] ?? 'flashcard';
          return UploadResourcesPage(gameType: gameType);
        },
      ),
      GoRoute(
        path: '/processing',
        builder: (context, state) => const ProcessingPage(),
      ),
      GoRoute(
        path: '/flashcard-list',
        builder: (context, state) => const FlashcardListPage(),
      ),
      GoRoute(
        path: '/flashcard-edit',
        builder: (context, state) => const FlashcardEditPage(),
      ),
    ],
  );
}
