part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object?> get props => [];
}

class CreateGameEvent extends GameEvent {
  final String gameType;

  const CreateGameEvent({required this.gameType});

  @override
  List<Object?> get props => [gameType];
}

class GenerateFlashcardsEvent extends GameEvent {
  final String folderName;
  final int count;
  final String? additionalInstructions;

  const GenerateFlashcardsEvent({
    required this.folderName,
    required this.count,
    this.additionalInstructions,
  });

  @override
  List<Object?> get props => [folderName, count, additionalInstructions];
}

class SaveFlashcardEvent extends GameEvent {
  final List<FlashcardModel> flashcards;

  const SaveFlashcardEvent({required this.flashcards});

  @override
  List<Object?> get props => [flashcards];
}

class UpdateFlashcardEvent extends GameEvent {
  final FlashcardModel flashcard;

  const UpdateFlashcardEvent({required this.flashcard});

  @override
  List<Object?> get props => [flashcard];
}
