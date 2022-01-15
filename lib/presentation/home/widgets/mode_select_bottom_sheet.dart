import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/core/extensions.dart';
import 'package:greenguard_app/presentation/home/bloc/home_bloc.dart';
import 'package:verificac19/verificac19.dart';

class ModeSelectBottomSheet extends StatelessWidget {
  const ModeSelectBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Seleziona una tipologia di verifica',
              style: TextStyle(
                color: Color(0xFF345B63),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ModeOptionButton(mode: ValidationMode.normalDGP),
            SizedBox(height: 10),
            ModeOptionButton(mode: ValidationMode.superDGP),
            SizedBox(height: 10),
            ModeOptionButton(mode: ValidationMode.boosterDGP),
          ],
        ),
      ),
    );
  }
}

class ModeOptionButton extends StatelessWidget {
  final ValidationMode mode;
  const ModeOptionButton({
    Key? key,
    required this.mode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedMode = context.read<HomeBloc>().state.validationMode;
    final isSelected = selectedMode == mode;
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Color(0xFF406882),
        ),
      ),
      fillColor: isSelected ? const Color(0xFF385170) : Colors.white,
      elevation: 0,
      onPressed: () async {
        Navigator.pop(context, mode);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Verifica ${mode.name}'.toUpperCase(),
              textAlign: TextAlign.start,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF385170),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${mode.details}'.toUpperCase(),
              textAlign: TextAlign.start,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFF385170),
                fontSize: 14,
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
