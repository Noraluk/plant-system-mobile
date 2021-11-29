enum RoutePath { home }

extension RoutePathExt on RoutePath {
  String get name {
    switch (this) {
      case RoutePath.home:
        return '/home';
      default:
        return '/';
    }
  }
}
