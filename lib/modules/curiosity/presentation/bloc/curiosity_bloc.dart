import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'curiosity_event.dart';
part 'curiosity_state.dart';

class CuriosityBloc extends Bloc<CuriosityEvent, CuriosityState> {
  CuriosityBloc() : super(CuriosityInitial()) {
    on<CuriosityEvent>((event, emit) {});
  }
}
