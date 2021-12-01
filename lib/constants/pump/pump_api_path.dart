enum PumpApiPath { getPump }

extension PumpApiPathExt on PumpApiPath {
  String get path {
    switch (this) {
      case PumpApiPath.getPump:
        return '/pumps/%s';
      default:
        return '/';
    }
  }
}
