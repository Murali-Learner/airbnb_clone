import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const GlobalButton({
    super.key,
    required this.text,
    this.color = const Color(0xFFFF3E72),
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
