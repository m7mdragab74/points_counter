import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';
import 'package:points_counter/widget/custom_add_point_bottom.dart';
import 'package:points_counter/widget/head_text.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: const Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const HeadText(
                        title: 'Team A',
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(
                          fontSize: 170,
                        ),
                      ),
                      CustomAddPointBottom(
                        title: 'Add 1 point',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 2 point',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 3 point',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 390,
                    child: Row(
                      children: [
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const HeadText(
                        title: 'Team B',
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(
                          fontSize: 170,
                        ),
                      ),
                      CustomAddPointBottom(
                        title: 'Add 1 point',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 2 point',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 3 point',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
              CustomAddPointBottom(
                title: 'Reset',
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
