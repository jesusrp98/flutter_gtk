import 'package:flutter/material.dart';

class ThemePicker {
  final BuildContext context;

  const ThemePicker._(this.context);

  factory ThemePicker.of(BuildContext context) => ThemePicker._(context);

  T pick<T>({required T light, required T dark}) {
    if (Theme.of(context).brightness == Brightness.light)
      return light;
    else
      return dark;
  }
}
