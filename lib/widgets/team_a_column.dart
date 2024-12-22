import 'package:basketball_counter_app/cubits/basketball_cubit.dart';
import 'package:basketball_counter_app/cubits/basketball_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamAColumn extends StatelessWidget {
  const TeamAColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BasketballCubit, BasketballCounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              'Team A',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              '${BlocProvider.of<BasketballCubit>(context).teamAPoints}',
              style: const TextStyle(fontSize: 150),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BasketballCubit>(context)
                    .addPoint(team: 'A', points: 1);
              },
              child: const Text(
                'Add 1 Point',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BasketballCubit>(context)
                    .addPoint(team: 'A', points: 2);
              },
              child: const Text(
                'Add 2 Point',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BasketballCubit>(context)
                    .addPoint(team: 'A', points: 3);
              },
              child: const Text(
                'Add 3 Point',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
