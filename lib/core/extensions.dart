import 'package:verificac19/verificac19.dart';

extension ValidationModeExtensions on ValidationMode {
  get name {
    switch (this) {
      case ValidationMode.normalDGP:
        return 'base';
      case ValidationMode.superDGP:
        return 'rafforzata';
      case ValidationMode.boosterDGP:
        return 'booster';
    }
  }

  get details {
    switch (this) {
      case ValidationMode.normalDGP:
        return 'vaccinazione/guarigione/tampone';
      case ValidationMode.superDGP:
        return 'vaccinazione/guarigione';
      case ValidationMode.boosterDGP:
        return 'richiamo/ciclo completo + tampone/guarigione + tampone';
    }
  }
}
