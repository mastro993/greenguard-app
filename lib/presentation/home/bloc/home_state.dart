part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool updateInProgress,
    required ValidationMode validationMode,
    required bool rulesUpdated,
    DateTime? lastUpdateDate,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        updateInProgress: false,
        validationMode: ValidationMode.normalDGP,
        rulesUpdated: false,
      );
}
