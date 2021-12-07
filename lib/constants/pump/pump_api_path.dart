enum PumpApiPath { activePump, getPump }

extension PumpApiPathExt on PumpApiPath {
  String get path {
    switch (this) {
      case PumpApiPath.activePump:
        return '/pumps/%s/ask/active';
      case PumpApiPath.getPump:
        return '/pumps/%s';
      default:
        return '/';
    }
  }
}
