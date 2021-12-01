import 'package:sprintf/sprintf.dart';

extension StringExt on String {
  String setPathWithParams(var arguments) => sprintf(this, arguments);
}
