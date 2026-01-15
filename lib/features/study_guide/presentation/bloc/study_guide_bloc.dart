import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'study_guide_event.dart';
part 'study_guide_state.dart';

class StudyGuideBloc extends Bloc<StudyGuideEvent, StudyGuideState> {
  StudyGuideBloc() : super(StudyGuideInitial()) {
    on<GenerateStudyGuideEvent>(_onGenerateStudyGuide);
    on<SaveStudyGuideEvent>(_onSaveStudyGuide);
  }

  void _onGenerateStudyGuide(
    GenerateStudyGuideEvent event,
    Emitter<StudyGuideState> emit,
  ) async {
    emit(StudyGuideGenerating());
    await Future.delayed(const Duration(seconds: 2));
    emit(StudyGuideGenerated(content: 'Study guide content here'));
  }

  void _onSaveStudyGuide(
    SaveStudyGuideEvent event,
    Emitter<StudyGuideState> emit,
  ) async {
    emit(StudyGuideSaving());
    await Future.delayed(const Duration(seconds: 1));
    emit(StudyGuideSaved());
  }
}
