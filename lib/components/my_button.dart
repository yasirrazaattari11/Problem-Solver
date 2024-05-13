import 'package:flutter/material.dart';
import 'package:problem_solver/constant.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({super.key,
    required this.title,
    required this.color,
    required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: UserWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
