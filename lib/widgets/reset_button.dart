import 'package:basketball_counter_app/cubits/basketball_cubit.dart';
import 'package:basketball_counter_app/cubits/basketball_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BasketballCubit, BasketballCounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 70),
          child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<BasketballCubit>(context).resetPoints();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(220, 40),
            ),
            child: const Text(
              'Reset',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}