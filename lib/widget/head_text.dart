import 'package:flutter/widgets.dart';

class HeadText extends StatelessWidget {
  const HeadText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 32,
      ),
    );
  }
}
