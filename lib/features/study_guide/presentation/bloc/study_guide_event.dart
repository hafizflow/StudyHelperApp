part of 'study_guide_bloc.dart';

abstract class StudyGuideEvent extends Equatable {
  const StudyGuideEvent();

  @override
  List<Object?> get props => [];
}

class GenerateStudyGuideEvent extends StudyGuideEvent {}

class SaveStudyGuideEvent extends StudyGuideEvent {
  final String content;

  const SaveStudyGuideEvent({required this.content});

  @override
  List<Object?> get props => [content];
}
