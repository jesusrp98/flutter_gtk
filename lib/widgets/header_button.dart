import 'package:flutter/material.dart';

class AdwaitaHeaderButton extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final VoidCallback? onTap;

  const AdwaitaHeaderButton({
    Key? key,
    this.icon,
    this.onTap,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      width: title == null ? 36 : null,
      child: TextButton(
        style: OutlinedButton.styleFrom(
          primary: Color(0xFF474747),
          backgroundColor: Color(0xFFF8F7F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            side: BorderSide(
              color: Color(0xFFC1BAB5),
            ),
          ),
        ),
        child: Padding(
          padding: title != null
              ? const EdgeInsets.symmetric(horizontal: 8.0)
              : EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) Icon(icon, size: 21),
              if (icon != null && title != null) SizedBox(width: 6),
              if (title != null)
                Text(
                  title!,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        color: Color(0xFF474747),
                      ),
                ),
            ],
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
