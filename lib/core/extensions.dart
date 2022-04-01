import 'package:verificac19/verificac19.dart';

extension ValidationModeExtensions on ValidationMode {
  get name {
    switch (this) {
      case ValidationMode.normalDGP:
        return 'Base';
      case ValidationMode.superDGP:
        return 'Rafforzata';
      case ValidationMode.boosterDGP:
        return 'Booster';
      case ValidationMode.visitorsRSADGP:
        return 'Visitatori RSA';
      case ValidationMode.workDGP:
        return 'Lavoro';
      case ValidationMode.entryITDGP:
        return 'Ingresso IT';
    }
  }

  get details {
    switch (this) {
      case ValidationMode.normalDGP:
        return 'Vaccinazione, guarigione, tampone o esenzione';
      case ValidationMode.superDGP:
        return 'Vaccinazione, guarigione o esenzione';
      case ValidationMode.boosterDGP:
        return 'richiamo/ciclo completo + tampone/guarigione + tampone';
      case ValidationMode.visitorsRSADGP:
        return 'Accesso a strutture ospedaliere, residenziali, socio-assistenziali, socio-sanitarie e hospice: vaccinazione con richiamo';
      case ValidationMode.workDGP:
        return 'Fino a 49 anni di età: vaccinazione, guarigione, tampone o esenzione';
      case ValidationMode.entryITDGP:
        return 'All\'ingresso dell\'Italia dall\'estero: vaccinazione, guarigione o tampone secondo le regole di validazione europee';
    }
  }
}
