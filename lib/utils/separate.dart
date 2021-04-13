import 'package:flutter/material.dart';

extension ListGutter on List<Widget> {
  List<Widget> separate(double? extend) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [
            ...r,
            SizedBox(width: extend, height: extend),
            element,
          ],
        );
}
