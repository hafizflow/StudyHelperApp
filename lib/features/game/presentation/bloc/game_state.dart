part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  const GameState();

  @override
  List<Object?> get props => [];
}

class GameInitial extends GameState {}

class GameCreating extends GameState {
  final String gameType;

  const GameCreating({required this.gameType});

  @override
  List<Object?> get props => [gameType];
}

class GameGenerating extends GameState {}

class GameGenerated extends GameState {
  final List<FlashcardModel> flashcards;
  final String folderName;

  const GameGenerated({required this.flashcards, required this.folderName});

  @override
  List<Object?> get props => [flashcards, folderName];
}

class GameSaving extends GameState {}

class GameSaved extends GameState {}

class GameError extends GameState {
  final String message;

  const GameError({required this.message});

  @override
  List<Object?> get props => [message];
}
