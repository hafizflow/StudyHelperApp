import 'package:equatable/equatable.dart';

class QuizQuestion extends Equatable {
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String? rationale;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
    this.rationale,
  });

  QuizQuestion copyWith({
    String? question,
    List<String>? options,
    int? correctAnswer,
    String? rationale,
  }) {
    return QuizQuestion(
      question: question ?? this.question,
      options: options ?? this.options,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      rationale: rationale ?? this.rationale,
    );
  }

  @override
  List<Object?> get props => [question, options, correctAnswer, rationale];
}
