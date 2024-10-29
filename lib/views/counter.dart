import 'package:flutter/material.dart';
import 'package:points_counter/widget/custom_add_point_bottom.dart';
import 'package:points_counter/widget/head_text.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const Text(
                    '0',
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
                  const Text(
                    '0',
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
  }
}
