import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:study_helper_app/features/game/domain/models/flashcard_model.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial()) {
    on<CreateGameEvent>(_onCreateGame);
    on<GenerateFlashcardsEvent>(_onGenerateFlashcards);
    on<SaveFlashcardEvent>(_onSaveFlashcard);
    on<UpdateFlashcardEvent>(_onUpdateFlashcard);
  }

  void _onCreateGame(CreateGameEvent event, Emitter<GameState> emit) {
    emit(GameCreating(gameType: event.gameType));
  }

  void _onGenerateFlashcards(
    GenerateFlashcardsEvent event,
    Emitter<GameState> emit,
  ) async {
    emit(GameGenerating());
    await Future.delayed(const Duration(seconds: 2));

    final flashcards = List.generate(
      event.count,
      (index) => FlashcardModel(
        id: '${index + 1}',
        question: 'What are the three main parts of the brain?',
        answer:
            'There are three main parts: are the cerebrum, cerebellum, and brainstem.',
      ),
    );

    emit(GameGenerated(flashcards: flashcards, folderName: event.folderName));
  }

  void _onSaveFlashcard(
    SaveFlashcardEvent event,
    Emitter<GameState> emit,
  ) async {
    emit(GameSaving());
    await Future.delayed(const Duration(seconds: 1));
    emit(GameSaved());
  }

  void _onUpdateFlashcard(UpdateFlashcardEvent event, Emitter<GameState> emit) {
    if (state is GameGenerated) {
      final currentState = state as GameGenerated;
      final updatedFlashcards = List<FlashcardModel>.from(
        currentState.flashcards,
      );
      final index = updatedFlashcards.indexWhere(
        (f) => f.id == event.flashcard.id,
      );
      if (index != -1) {
        updatedFlashcards[index] = event.flashcard;
      }
      emit(
        GameGenerated(
          flashcards: updatedFlashcards,
          folderName: currentState.folderName,
        ),
      );
    }
  }
}
