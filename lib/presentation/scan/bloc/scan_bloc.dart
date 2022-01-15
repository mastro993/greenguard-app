import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_event.dart';
part 'scan_state.dart';
part 'scan_bloc.freezed.dart';

class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc() : super(_Initial()) {
    on<ScanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
