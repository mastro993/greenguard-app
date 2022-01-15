import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CloseResultButton extends StatelessWidget {
  const CloseResultButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Colors.white,
      elevation: 0,
      onPressed: () => context.popRoute(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'Chiudi'.toUpperCase(),
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Color(0xFF385170),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
