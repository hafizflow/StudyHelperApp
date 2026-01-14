import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:study_helper_app/features/game/domain/models/flashcard_model.dart';
import 'package:study_helper_app/features/game/domain/models/quiz_model.dart';

// Events
abstract class GameEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GenerateFlashcardsEvent extends GameEvent {
  final int count;
  GenerateFlashcardsEvent(this.count);
  @override
  List<Object?> get props => [count];
}

class GenerateQuizEvent extends GameEvent {
  final int count;
  GenerateQuizEvent(this.count);
  @override
  List<Object?> get props => [count];
}

class UpdateFlashcardEvent extends GameEvent {
  final int index;
  final FlashcardModel flashcard;
  UpdateFlashcardEvent(this.index, this.flashcard);
  @override
  List<Object?> get props => [index, flashcard];
}

class UpdateQuizQuestionEvent extends GameEvent {
  final int index;
  final QuizQuestion question;
  UpdateQuizQuestionEvent(this.index, this.question);
  @override
  List<Object?> get props => [index, question];
}

class SaveGameEvent extends GameEvent {}

// States
abstract class GameState extends Equatable {
  @override
  List<Object?> get props => [];
}

class GameInitial extends GameState {}

class GameLoading extends GameState {}

class FlashcardsGenerated extends GameState {
  final List<FlashcardModel> flashcards;
  FlashcardsGenerated(this.flashcards);
  @override
  List<Object?> get props => [flashcards];
}

class QuizGenerated extends GameState {
  final List<QuizQuestion> questions;
  QuizGenerated(this.questions);
  @override
  List<Object?> get props => [questions];
}

class GameSaved extends GameState {}

class GameError extends GameState {
  final String message;
  GameError(this.message);
  @override
  List<Object?> get props => [message];
}

// Bloc
class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<GenerateFlashcardsEvent>(_onGenerateFlashcards);
    on<GenerateQuizEvent>(_onGenerateQuiz);
    on<UpdateFlashcardEvent>(_onUpdateFlashcard);
    on<UpdateQuizQuestionEvent>(_onUpdateQuizQuestion);
    on<SaveGameEvent>(_onSaveGame);
  }

  List<FlashcardModel> _flashcards = [];
  List<QuizQuestion> _quizQuestions = [];

  Future<void> _onGenerateFlashcards(
    GenerateFlashcardsEvent event,
    Emitter<GameState> emit,
  ) async {
    emit(GameLoading());
    await Future.delayed(const Duration(seconds: 2));

    // Mock flashcard generation
    _flashcards = List.generate(
      event.count,
      (i) => FlashcardModel(
        term: 'Heart',
        definition:
            'Lorem ipsum dolor sit amet consectetur. Nunc varius amet fringilla ut in lorem.',
        progress: i == 0
            ? 0.3
            : (i == 1 ? 0.3 : (i == 2 ? 0.3 : (i == 3 ? 0.8 : 0.5))),
      ),
    );

    emit(FlashcardsGenerated(_flashcards));
  }

  Future<void> _onGenerateQuiz(
    GenerateQuizEvent event,
    Emitter<GameState> emit,
  ) async {
    emit(GameLoading());
    await Future.delayed(const Duration(seconds: 2));

    // Mock quiz generation
    _quizQuestions = List.generate(
      event.count,
      (i) => const QuizQuestion(
        question: 'What are the three main parts of the brain?',
        options: ['Lorem ipsam', 'Lorem ipsam', 'Lorem ipsam', 'Lorem ipsam'],
        correctAnswer: 0,
      ),
    );

    emit(QuizGenerated(_quizQuestions));
  }

  Future<void> _onUpdateFlashcard(
    UpdateFlashcardEvent event,
    Emitter<GameState> emit,
  ) async {
    if (event.index >= 0 && event.index < _flashcards.length) {
      _flashcards[event.index] = event.flashcard;
      emit(FlashcardsGenerated(List.from(_flashcards)));
    }
  }

  Future<void> _onUpdateQuizQuestion(
    UpdateQuizQuestionEvent event,
    Emitter<GameState> emit,
  ) async {
    if (event.index >= 0 && event.index < _quizQuestions.length) {
      _quizQuestions[event.index] = event.question;
      emit(QuizGenerated(List.from(_quizQuestions)));
    }
  }

  Future<void> _onSaveGame(SaveGameEvent event, Emitter<GameState> emit) async {
    emit(GameLoading());
    await Future.delayed(const Duration(seconds: 1));
    emit(GameSaved());
  }
}
