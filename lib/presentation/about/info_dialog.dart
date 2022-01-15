import 'package:flutter/material.dart';
import 'package:greenguard_app/presentation/widgets/link_button.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
                'Questa applicazione è da intendersi come esempio. Lo sviluppatore declina ogni responsabilità per qualsiasi utilizzo.'),
            SizedBox(
              height: 10,
            ),
            LinkButton(
                text: 'Visita la pagina del progetto',
                url: 'https://github.com/mastro993/verificaC19-flutter')
          ],
        ),
      ),
    );
  }
}
