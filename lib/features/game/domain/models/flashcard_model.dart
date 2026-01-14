import 'package:equatable/equatable.dart';

class FlashcardModel extends Equatable {
  final String term;
  final String definition;
  final double progress;

  const FlashcardModel({
    required this.term,
    required this.definition,
    this.progress = 0.0,
  });

  FlashcardModel copyWith({
    String? term,
    String? definition,
    double? progress,
  }) {
    return FlashcardModel(
      term: term ?? this.term,
      definition: definition ?? this.definition,
      progress: progress ?? this.progress,
    );
  }

  @override
  List<Object?> get props => [term, definition, progress];
}
