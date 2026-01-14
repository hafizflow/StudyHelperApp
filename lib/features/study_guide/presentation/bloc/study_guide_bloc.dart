import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// Events
abstract class StudyGuideEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GenerateStudyGuideEvent extends StudyGuideEvent {}

class UpdateStudyGuideEvent extends StudyGuideEvent {
  final StudyGuideModel studyGuide;
  UpdateStudyGuideEvent(this.studyGuide);
  @override
  List<Object?> get props => [studyGuide];
}

class SaveStudyGuideEvent extends StudyGuideEvent {}

// States
abstract class StudyGuideState extends Equatable {
  @override
  List<Object?> get props => [];
}

class StudyGuideInitial extends StudyGuideState {}

class StudyGuideLoading extends StudyGuideState {}

class StudyGuideGenerated extends StudyGuideState {
  final StudyGuideModel studyGuide;
  StudyGuideGenerated(this.studyGuide);
  @override
  List<Object?> get props => [studyGuide];
}

class StudyGuideSaved extends StudyGuideState {}

class StudyGuideError extends StudyGuideState {
  final String message;
  StudyGuideError(this.message);
  @override
  List<Object?> get props => [message];
}

// Bloc
class StudyGuideBloc extends Bloc<StudyGuideEvent, StudyGuideState> {
  StudyGuideBloc() : super(StudyGuideInitial()) {
    on<GenerateStudyGuideEvent>(_onGenerateStudyGuide);
    on<UpdateStudyGuideEvent>(_onUpdateStudyGuide);
    on<SaveStudyGuideEvent>(_onSaveStudyGuide);
  }

  StudyGuideModel? _currentStudyGuide;

  Future<void> _onGenerateStudyGuide(
    GenerateStudyGuideEvent event,
    Emitter<StudyGuideState> emit,
  ) async {
    emit(StudyGuideLoading());
    await Future.delayed(const Duration(seconds: 2));

    // Mock study guide generation
    _currentStudyGuide = StudyGuideModel(
      title: 'Biology Chapter 5: Cell',
      sections: [
        StudyGuideSection(
          title: '1. Introduction to cell division',
          summary:
              'Lorem ipsum dolor sit amet consectetur. Lacus aliquam eget blandit duis risus sed. Lectus odio mattis mauris ridiculus non lorem. In adipiscing nullam pretium tincidunt ut purus. Id augue viverra vulputate pellentesque sodales viverra. Urna elementum vestibulum nibh nullam imperdiet.',
          keyTakeaways: [
            'Lorem ipsum dolor sit amet consectetur. Nec urna adipiscing duis.',
            'Lorem ipsum dolor sit amet consectetur. Nec urna adipiscing duis.',
            'Lorem ipsum dolor sit amet consectetur. Nec urna adipiscing duis.',
            'Lorem ipsum dolor sit amet consectetur. Nec urna adipiscing duis.',
          ],
          keyTerms: [
            'Mitosis',
            'Mitosis',
            'Mitosis',
            'Mitosis',
            'Mitosis',
            'Mitosis',
            'Mitosis',
          ],
          quickFacts: [
            QuickFact(title: 'Types of cell division', content: ''),
            QuickFact(title: 'Cell cycle stages', content: ''),
          ],
        ),
      ],
    );

    emit(StudyGuideGenerated(_currentStudyGuide!));
  }

  Future<void> _onUpdateStudyGuide(
    UpdateStudyGuideEvent event,
    Emitter<StudyGuideState> emit,
  ) async {
    _currentStudyGuide = event.studyGuide;
    emit(StudyGuideGenerated(_currentStudyGuide!));
  }

  Future<void> _onSaveStudyGuide(
    SaveStudyGuideEvent event,
    Emitter<StudyGuideState> emit,
  ) async {
    emit(StudyGuideLoading());
    await Future.delayed(const Duration(seconds: 1));
    emit(StudyGuideSaved());
  }
}
