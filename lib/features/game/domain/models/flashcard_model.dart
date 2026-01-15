import 'package:equatable/equatable.dart';

class FlashcardModel extends Equatable {
  final String id;
  final String question;
  final String answer;

  const FlashcardModel({
    required this.id,
    required this.question,
    required this.answer,
  });

  FlashcardModel copyWith({String? id, String? question, String? answer}) {
    return FlashcardModel(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
    );
  }

  @override
  List<Object?> get props => [id, question, answer];
}
