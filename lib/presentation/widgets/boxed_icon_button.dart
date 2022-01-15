import 'package:flutter/material.dart';

class BoxedIconButton extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;

  const BoxedIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFECECEC),
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: const Color(0xFF142D4C),
        ),
      ),
    );
  }
}
