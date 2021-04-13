import 'package:flutter/material.dart';

import '../utils/index.dart';
import 'index.dart';

class AdwaitaHeaderBar extends StatelessWidget {
  final Widget leading;
  final Widget center;
  final Widget trailling;
  final VoidCallback? onMinimize;
  final VoidCallback? onMaximize;
  final VoidCallback? onClose;

  const AdwaitaHeaderBar({
    Key? key,
    this.leading = const SizedBox(),
    this.center = const SizedBox(),
    this.trailling = const SizedBox(),
    this.onMinimize,
    this.onMaximize,
    this.onClose,
  }) : super(key: key);

  bool get hasWindowControls =>
      onClose != null || onMinimize != null || onMaximize != null;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ThemePicker.of(context).pick(
                light: AdwaitaLightColors.headerBarBackgroundTop,
                dark: AdwaitaDarkColors.headerBarBackgroundTop,
              ),
              ThemePicker.of(context).pick(
                light: AdwaitaLightColors.headerBarBackgroundBottom,
                dark: AdwaitaDarkColors.headerBarBackgroundBottom,
              ),
            ],
          ),
          border: Border(
            top: BorderSide(
              color: ThemePicker.of(context).pick(
                light: AdwaitaLightColors.headerBarTopBorder,
                dark: AdwaitaDarkColors.headerBarTopBorder,
              ),
            ),
            bottom: BorderSide(
              color: ThemePicker.of(context).pick(
                light: AdwaitaLightColors.headerBarBottomBorder,
                dark: AdwaitaDarkColors.headerBarBottomBorder,
              ),
            ),
          ),
        ),
        height: 47,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              center,
              Row(
                children: [
                  trailling,
                  Row(
                    children: [
                      if (hasWindowControls) SizedBox(width: 16),
                      ...[
                        if (onMinimize != null)
                          WindowControlButton(
                            child: Icon(Icons.minimize),
                            onTap: onMinimize,
                          ),
                        if (onMaximize != null)
                          WindowControlButton(
                            child: Icon(Icons.crop_square_sharp),
                            onTap: onMaximize,
                          ),
                        if (onClose != null)
                          WindowControlButton(
                            child: Icon(Icons.close),
                            onTap: onClose,
                          ),
                      ].separate(11)
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
