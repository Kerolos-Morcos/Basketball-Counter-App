import 'package:basketball_counter_app/cubits/basketball_cubit.dart';
import 'package:basketball_counter_app/widgets/reset_button.dart';
import 'package:basketball_counter_app/widgets/team_a_column.dart';
import 'package:basketball_counter_app/widgets/team_b_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBodyCubitBuilder extends StatelessWidget {
  const HomeBodyCubitBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasketballCubit(),
      child: const Column(
        children: [
          SizedBox(height: 23),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamAColumn(),
              SizedBox(
                height: 425,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              TeamBColumn(),
            ],
          ),
          ResetButton(),
        ],
      ),
    );
  }
}
