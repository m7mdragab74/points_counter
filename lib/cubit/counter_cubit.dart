import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team, required int bottomNumber}) {
    if (team == 'A') {
      teamAPoints += bottomNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += bottomNumber;
      emit(CounterBIncrementState());
    }
  }
}
