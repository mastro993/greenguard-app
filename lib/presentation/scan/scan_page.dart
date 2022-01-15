import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:greenguard_app/presentation/router/router.gr.dart';
import 'package:greenguard_app/presentation/widgets/boxed_icon_button.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:verificac19/verificac19.dart';

class ScanPage extends StatefulWidget {
  final ValidationMode mode;
  const ScanPage({
    Key? key,
    required this.mode,
  }) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  QRViewController? _controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool _scanDone = false;
  late ValidationMode _validatioMmode;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      _controller!.pauseCamera();
    }
    _controller!.resumeCamera();
  }

  Future<void> _handleScanResult(Barcode scanData) async {
    try {
      if (_scanDone) return;

      final validationResult = await VerificaC19.validateFromRaw(
        scanData.code!,
        mode: _validatioMmode,
      );

      _scanDone = true;

      AudioCache cache = AudioCache(
        prefix: 'assets/audio/',
        respectSilence: true,
      );

      bool canVibrate = await Vibrate.canVibrate;
      bool isValid =
          validationResult.certificateStatus == GreenCertificateStatus.valid;

      if (canVibrate) {
        Vibrate.feedback(
          isValid ? FeedbackType.success : FeedbackType.error,
        );
        cache.play(
          isValid ? "beep-valid.mp3" : 'beep-not-valid.mp3',
          volume: 0.5,
        );
      }

      await context.pushRoute(ResultPageRoute(result: validationResult));

      _scanDone = false;
    } catch (e) {
      // handle validation errors
    }
  }

  @override
  Widget build(BuildContext context) {
    _validatioMmode = widget.mode;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Flexible(flex: 5, child: _buildQrView(context)),
          _buttons(context),
        ],
      ),
    );
  }

  Widget _buttons(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                BoxedIconButton(
                  icon: Icons.chevron_left,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BoxedIconButton(
                  icon: Icons.cameraswitch_rounded,
                  onPressed: () => _controller?.flipCamera(),
                ),
                const SizedBox(width: 15.0),
                FutureBuilder<bool?>(
                  initialData: false,
                  future: _controller?.getFlashStatus(),
                  builder: (context, value) {
                    return BoxedIconButton(
                      icon: (value.data ?? false)
                          ? Icons.flash_off_rounded
                          : Icons.flash_on_rounded,
                      onPressed: () => _controller?.toggleFlash(),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      _controller = controller;
    });
    controller.scannedDataStream.listen(_handleScanResult);
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
