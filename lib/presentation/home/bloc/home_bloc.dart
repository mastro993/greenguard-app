import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:greenguard_app/core/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:verificac19/verificac19.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_Started>(_handleStarted);
    on<_UpdateRequested>(_handleUpdateRequested);
    on<_ValidationModeChanged>(_handleValidationModeChanged);
  }

  _handleStarted(event, emit) async {
    emit(state.copyWith(updateInProgress: true));

    if (VerificaC19.needsUpdate()) {
      await VerificaC19.update();
    }

    final prefs = await SharedPreferences.getInstance();

    int? validationModeIdx = prefs.getInt(Prefs.validationMode);
    ValidationMode lastValidationMode = ValidationMode
        .values[validationModeIdx ?? ValidationMode.normalDGP.index];

    DateTime? lastUpdate = await VerificaC19.getLastUpdateTime();

    emit(
      state.copyWith(
        updateInProgress: false,
        lastUpdateDate: lastUpdate,
        rulesUpdated: true,
        validationMode: lastValidationMode,
      ),
    );
  }

  _handleUpdateRequested(event, emit) async {
    emit(state.copyWith(updateInProgress: true));
    await VerificaC19.update();
    DateTime? lastUpdate = await VerificaC19.getLastUpdateTime();
    emit(state.copyWith(
      updateInProgress: false,
      lastUpdateDate: lastUpdate,
      rulesUpdated: true,
    ));
  }

  _handleValidationModeChanged(_ValidationModeChanged event, emit) async {
    ValidationMode newValidationMode = event.mode;

    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(Prefs.validationMode, newValidationMode.index);

    emit(state.copyWith(
      validationMode: newValidationMode,
    ));
  }
}
