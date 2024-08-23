import 'package:basketball_counter_app/cubits/basketball_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballCubit extends Cubit<BasketballCounterState> {
  BasketballCubit() : super(BasketballSuccessState());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void addPoint({required String team, required int points}) {
    if (team == 'A') {
      teamAPoints += points;
    }
    if (team == 'B') {
      teamBPoints += points;
    }
    emit(BasketballSuccessState());
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(BasketballSuccessState());
  }
}
