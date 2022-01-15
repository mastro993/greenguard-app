import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/presentation/home/bloc/home_bloc.dart';
import 'package:intl/intl.dart';

class RulesInfoWidget extends StatelessWidget {
  const RulesInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (p, n) => p.updateInProgress != n.updateInProgress,
        builder: (_, state) {
          if (state.updateInProgress) {
            return const _Loading();
          }
          return _LastUpdateInfo(lastUpdate: state.lastUpdateDate);
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Aggiornamento delle regole',
          style: TextStyle(color: Color(0xFF345B63)),
        ),
        SizedBox(width: 10),
        SizedBox(
          height: 15,
          width: 15,
          child: CircularProgressIndicator(
            color: Color(0xFF345B63),
            strokeWidth: 2.0,
          ),
        ),
      ],
    );
  }
}

class _LastUpdateInfo extends StatelessWidget {
  final DateTime? lastUpdate;

  const _LastUpdateInfo({
    Key? key,
    this.lastUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lastUpdateText = lastUpdate != null
        ? DateFormat('dd/MM/yyyy kk:mm').format(lastUpdate!)
        : '';

    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Color(0xFF385170),
          height: 1.4,
        ),
        children: <TextSpan>[
          const TextSpan(text: 'Ultimo aggiornamento delle regole:\n'),
          TextSpan(
            text: lastUpdateText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
