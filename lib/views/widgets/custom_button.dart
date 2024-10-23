import 'package:flutter/material.dart';

//control. garera stateful banuna skincha
class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.titleColor,
    super.key,
  });

  final String title;
  final void Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;

  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(const Size(350, 50)),
        elevation: const WidgetStatePropertyAll(3),
        backgroundColor: backgroundColor ?? WidgetStateProperty.all(Colors.red),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(color: Color.fromARGB(255, 157, 14, 3)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'karla',
          color: titleColor ?? const Color.fromARGB(255, 221, 15, 0),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.end,
      ),
    );
  }
}
