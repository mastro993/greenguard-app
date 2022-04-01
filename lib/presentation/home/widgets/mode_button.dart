import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/core/extensions.dart';
import 'package:greenguard_app/presentation/home/bloc/home_bloc.dart';
import 'package:greenguard_app/presentation/home/widgets/mode_select_bottom_sheet.dart';
import 'package:verificac19/verificac19.dart';

class ModeButton extends StatelessWidget {
  const ModeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (prev, next) => prev.validationMode != next.validationMode,
      builder: (context, state) {
        return RawMaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              color: Color(0xFF385170),
            ),
          ),
          fillColor: const Color(0xFFECECEC),
          elevation: 0,
          onPressed: () async {
            ValidationMode? selectedMode = await showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (ctx) => const ModeSelectBottomSheet(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: Colors.white,
            );

            if (selectedMode != null) {
              context
                  .read<HomeBloc>()
                  .add(HomeEvent.validationModeChanged(selectedMode));
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verifica ${state.validationMode.name}'.toUpperCase(),
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF385170),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${state.validationMode.details}'.toUpperCase(),
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Color(0xFF385170),
                          fontSize: 14,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Color(0xFF406882),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
