import 'package:basketball_counter_app/cubits/basketball_cubit.dart';
import 'package:basketball_counter_app/cubits/basketball_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBColumn extends StatelessWidget {
  const TeamBColumn({
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
              'Team B',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              '${BlocProvider.of<BasketballCubit>(context).teamBPoints}',
              style: const TextStyle(fontSize: 150),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BasketballCubit>(context)
                    .addPoint(team: 'B', points: 1);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(110, 50),
              ),
              child: const Text(
                'Add 1 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BasketballCubit>(context)
                    .addPoint(team: 'B', points: 2);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(110, 50),
              ),
              child: const Text(
                'Add 2 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BasketballCubit>(context)
                    .addPoint(team: 'B', points: 3);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(110, 50),
              ),
              child: const Text(
                'Add 3 Point',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
