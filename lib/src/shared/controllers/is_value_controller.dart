import 'package:flutter/cupertino.dart';

class IsValueController extends ValueNotifier<bool> {
  IsValueController(value) : super(value);

  bool _value = true;

  bool isValue() {
    _value = !_value;
    value = _value;
    return value;
  }
}
