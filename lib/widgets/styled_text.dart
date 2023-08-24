import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String title;
  const StyledText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
