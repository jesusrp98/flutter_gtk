import 'package:flutter/material.dart';

import '../utils/index.dart';

class WindowControlButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;

  const WindowControlButton({
    Key? key,
    this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: TextButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          primary: Color(0xffEEEEEC),
        ),
        onPressed: onTap,
        child: IconTheme.merge(
          data: Theme.of(context).iconTheme.copyWith(size: 13),
          child: child,
        ),
      ),
    );
  }
}
