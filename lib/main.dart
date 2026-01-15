import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_helper_app/core/router/app_router.dart';
import 'package:study_helper_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:study_helper_app/features/game/presentation/bloc/game_bloc.dart';
import 'package:study_helper_app/features/study_guide/presentation/bloc/study_guide_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => GameBloc()),
        BlocProvider(create: (context) => StudyGuideBloc()),
      ],
      child: MaterialApp.router(
        title: 'Study Helper',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB8A4E8)),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFFAF5F0),
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
