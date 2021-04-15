import 'package:flutter/material.dart';

import '../models/index.dart';
import '../utils/index.dart';

class AdwaitaViewSwitcherTab extends StatelessWidget {
  final ViewSwitcherData data;
  final ViewSwitcherStyle style;
  final bool isSelected;

  const AdwaitaViewSwitcherTab({
    Key? key,
    required this.data,
    required this.isSelected,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = Icon(
      data.icon,
      size: 18,
      color: ThemePicker.of(context).pick(
        light: AdwaitaLightColors.headerSwitcherTabPrimary,
        dark: AdwaitaDarkColors.headerSwitcherTabPrimary,
      ),
    );

    return style == ViewSwitcherStyle.desktop
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                if (data.icon != null) icon,
                if (data.icon != null && data.title != null) SizedBox(width: 8),
                if (data.title != null)
                  Text(
                    data.title!,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          color: ThemePicker.of(context).pick(
                            light: AdwaitaLightColors.headerSwitcherTabPrimary,
                            dark: AdwaitaDarkColors.headerSwitcherTabPrimary,
                          ),
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                  ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (data.icon != null) icon,
                if (data.icon != null && data.title != null)
                  SizedBox(height: 2),
                if (data.title != null)
                  Text(
                    data.title!,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          fontSize: 12,
                          color: ThemePicker.of(context).pick(
                            light: AdwaitaLightColors.headerSwitcherTabPrimary,
                            dark: AdwaitaDarkColors.headerSwitcherTabPrimary,
                          ),
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                  ),
              ],
            ),
          );
  }
}
