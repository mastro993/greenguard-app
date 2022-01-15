import 'package:flutter/material.dart';
import 'package:greenguard_app/presentation/about/info_dialog.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'GreenGuard',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFF385170),
          ),
        ),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => const InfoDialog(),
            );
          },
          icon: const Icon(
            Icons.info_outline_rounded,
            size: 30,
            color: Color(0xFF385170),
          ),
        ),
      ],
    );
  }
}
