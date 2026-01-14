import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/router/app_router.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/game/presentation/bloc/game_bloc.dart';
import 'features/study_guide/presentation/bloc/study_guide_bloc.dart';

void main() {
  runApp(const MyStudyBuddyApp());
}

class MyStudyBuddyApp extends StatelessWidget {
  const MyStudyBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc()),
        BlocProvider(create: (_) => GameBloc()),
        BlocProvider(create: (_) => StudyGuideBloc()),
      ],
      child: MaterialApp.router(
        title: 'My Study Buddy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: const Color(0xFFFAF7F4),
          textTheme: GoogleFonts.interTextTheme(),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF9B8FD9),
            primary: const Color(0xFF9B8FD9),
            secondary: const Color(0xFFFFB4D1),
          ),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
