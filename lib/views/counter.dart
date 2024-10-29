import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';
import 'package:points_counter/widget/custom_add_point_bottom.dart';
import 'package:points_counter/widget/head_text.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
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
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: const TextStyle(
                          fontSize: 170,
                        ),
                      ),
                      CustomAddPointBottom(
                        title: 'Add 1 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', bottomNumber: 1);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 2 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', bottomNumber: 2);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 3 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', bottomNumber: 3);
                        },
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
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(
                          fontSize: 170,
                        ),
                      ),
                      CustomAddPointBottom(
                        title: 'Add 1 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', bottomNumber: 1);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 2 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', bottomNumber: 2);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomAddPointBottom(
                        title: 'Add 3 point',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', bottomNumber: 3);
                        },
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
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .teamIncrement(team: 'R', bottomNumber: 0);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
