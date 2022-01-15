import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/presentation/home/bloc/home_bloc.dart';
import 'package:greenguard_app/presentation/router/router.gr.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (p, n) =>
          p.rulesUpdated != n.rulesUpdated ||
          p.validationMode != n.validationMode,
      builder: (context, state) {
        return RawMaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: const Color(0xFF385170).withOpacity(
            state.rulesUpdated ? 1.0 : 0.2,
          ),
          elevation: 0,
          onPressed: state.rulesUpdated
              ? () => context.pushRoute(
                    ScanPageRoute(mode: state.validationMode),
                  )
              : null,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Scansiona il QR code'.toUpperCase(),
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
