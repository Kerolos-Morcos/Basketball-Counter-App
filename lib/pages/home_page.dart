import 'package:basketball_counter_app/widgets/home_body_cubit_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Points Counter'),
        backgroundColor: Colors.orange,
      ),
      body: const HomeBodyCubitBuilder(),
    );
  }
}
