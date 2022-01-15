import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:greenguard_app/presentation/result/widgets/close_result_button.dart';
import 'package:greenguard_app/presentation/widgets/link_button.dart';
import 'package:intl/intl.dart';
import 'package:verificac19/verificac19.dart';

class ResultPage extends StatelessWidget {
  final ValidationResult _result;
  const ResultPage(this._result, {Key? key}) : super(key: key);

  Color _getBackgroundColor() {
    switch (_result.certificateStatus) {
      case GreenCertificateStatus.notEuDCC:
      case GreenCertificateStatus.notValid:
      case GreenCertificateStatus.notValidYet:
      case GreenCertificateStatus.revoked:
        return const Color(0xFFEA5C2B);
      case GreenCertificateStatus.valid:
        return const Color(0xFF95CD41);
      case GreenCertificateStatus.testNeeded:
        return const Color(0xFFFFAB76);
    }
  }

  @override
  Widget build(BuildContext context) {
    final validationDateTime =
        DateFormat('dd/MM/yyyy kk:mm').format(_result.validationDateTime);
    return Scaffold(
      backgroundColor: _getBackgroundColor(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _ResultBody(_result)),
              const SizedBox(height: 30),
              const CloseResultButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResultBody extends StatelessWidget {
  final ValidationResult _result;
  const _ResultBody(this._result, {Key? key}) : super(key: key);

  String _getModeString() {
    switch (_result.validationMode) {
      case ValidationMode.normalDGP:
        return 'Normale';
      case ValidationMode.superDGP:
        return 'Rafforzata';
      case ValidationMode.boosterDGP:
        return 'Booster';
    }
  }

  String _getResultString() {
    switch (_result.certificateStatus) {
      case GreenCertificateStatus.notEuDCC:
      case GreenCertificateStatus.notValid:
      case GreenCertificateStatus.notValidYet:
      case GreenCertificateStatus.revoked:
        return 'Certificazione non valida';
      case GreenCertificateStatus.valid:
        return 'Certificazione valida';
      case GreenCertificateStatus.testNeeded:
        return 'Certificazione valida, richiesto tampone';
    }
  }

  IconData _getResultIcon() {
    switch (_result.certificateStatus) {
      case GreenCertificateStatus.notEuDCC:
      case GreenCertificateStatus.notValid:
      case GreenCertificateStatus.notValidYet:
      case GreenCertificateStatus.revoked:
        return Icons.close_rounded;
      case GreenCertificateStatus.valid:
        return Icons.check_rounded;
      case GreenCertificateStatus.testNeeded:
        return Icons.warning_rounded;
    }
  }

  Widget _getResultInfoLinkButton() {
    switch (_result.certificateStatus) {
      case GreenCertificateStatus.notEuDCC:
      case GreenCertificateStatus.notValid:
      case GreenCertificateStatus.notValidYet:
      case GreenCertificateStatus.revoked:
      case GreenCertificateStatus.testNeeded:
        return const LinkButton(
            text: 'Quali sono i motivi di non validità?',
            url: 'https://www.dgc.gov.it/web/faq.html#verifica19');
      case GreenCertificateStatus.valid:
        return const LinkButton(
            text: 'Cosa si può fare con la Certificazione verde?',
            url: 'https://www.dgc.gov.it/web/faq.html#verifica19');
    }
  }

  Widget _buildPersonInfoBox() {
    final personBirthDate =
        DateFormat('dd/MM/yyyy').format(_result.certificate.dateOfBirth);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Per completare la verifica è necessario confrontare i seguenti dati anagrafici con quelli di un documento di indentità valido:',
            style: TextStyle(
              color: Color(0xFF385170),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'NOME/NAME',
            style: TextStyle(
              color: const Color(0xFF385170).withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '${_result.certificate.person.familyName} ${_result.certificate.person.givenName}',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF385170),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'DATA DI NASCITA/BIRTH DATE',
            style: TextStyle(
              color: const Color(0xFF385170).withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            personBirthDate,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF385170),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final validationDateTime =
        DateFormat('dd/MM/yyyy kk:mm').format(_result.validationDateTime);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Ora e data di validazione: $validationDateTime',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          'Tipologia di verifica: ${_getModeString().toUpperCase()}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Icon(
            _getResultIcon(),
            size: 100,
            color: Colors.white,
          ),
        ),
        Text(
          _getResultString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
        _getResultInfoLinkButton(),
        const SizedBox(height: 20),
        _buildPersonInfoBox(),
      ],
    );
  }
}
