import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterIncrementStat> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamAIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      print('there was a problem');
    }
  }

  void teamBIncrement({required String team, required int buttonNumber}) {
    if (team == "B") {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
