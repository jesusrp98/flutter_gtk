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
    return Container(
      height: 34,
      width: title == null ? 36 : null,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 0.01,
            spreadRadius: -1,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: Color(0xFFCEC8C3),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffF6F5F3),
            Color(0xFFEEECEA),
          ],
        ),
      ),
      padding: title != null
          ? const EdgeInsets.symmetric(horizontal: 8.0)
          : EdgeInsets.zero,
      child: TextButton(
        style: OutlinedButton.styleFrom(
          primary: Color(0xFF393E40),
        ),
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
        onPressed: onTap,
      ),
    );
  }
}
