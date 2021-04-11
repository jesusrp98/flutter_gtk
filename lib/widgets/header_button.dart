import 'package:flutter/material.dart';

import '../utils/index.dart';

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
          // TODO update color & spread of shadow
          // BoxShadow(
          //   color: ThemePicker.of(context).pick(
          //     light: AdwaitaLightColors.headerButtonBorder,
          //     dark: AdwaitaDarkColors.headerButtonBorder,
          //   ),
          //   offset: Offset(0.0, 1.0),
          //   blurRadius: 1,
          //   spreadRadius: -1,
          // ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          color: ThemePicker.of(context).pick(
            light: AdwaitaLightColors.headerButtonBorder,
            dark: AdwaitaDarkColors.headerButtonBorder,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ThemePicker.of(context).pick(
              light: AdwaitaLightColors.headerButtonBackgroundTop,
              dark: AdwaitaDarkColors.headerButtonBackgroundBottom,
            ),
            ThemePicker.of(context).pick(
              light: AdwaitaLightColors.headerButtonBackgroundTop,
              dark: AdwaitaDarkColors.headerButtonBackgroundBottom,
            ),
          ],
        ),
      ),
      padding: title != null
          ? const EdgeInsets.symmetric(horizontal: 8.0)
          : EdgeInsets.zero,
      child: TextButton(
        style: OutlinedButton.styleFrom(
          primary: ThemePicker.of(context).pick(
            light: AdwaitaLightColors.headerButtonPrimary,
            dark: AdwaitaDarkColors.headerButtonPrimary,
          ),
          textStyle: Theme.of(context).textTheme.subtitle2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon, size: 21),
            if (icon != null && title != null) SizedBox(width: 6),
            if (title != null) Text(title!),
          ],
        ),
        onPressed: onTap,
      ),
    );
  }
}
