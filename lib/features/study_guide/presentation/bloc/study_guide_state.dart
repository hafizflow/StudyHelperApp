part of 'study_guide_bloc.dart';

abstract class StudyGuideState extends Equatable {
  const StudyGuideState();

  @override
  List<Object?> get props => [];
}

class StudyGuideInitial extends StudyGuideState {}

class StudyGuideGenerating extends StudyGuideState {}

class StudyGuideGenerated extends StudyGuideState {
  final String content;

  const StudyGuideGenerated({required this.content});

  @override
  List<Object?> get props => [content];
}

class StudyGuideSaving extends StudyGuideState {}

class StudyGuideSaved extends StudyGuideState {}

class StudyGuideError extends StudyGuideState {
  final String message;

  const StudyGuideError({required this.message});

  @override
  List<Object?> get props => [message];
}
