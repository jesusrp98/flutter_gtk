import 'package:flutter/material.dart';

import '../models/index.dart';
import '../utils/index.dart';
import 'index.dart';

class AdwaitaViewSwitcher extends StatefulWidget {
  final List<ViewSwitcherData> tabs;
  final ValueChanged<int>? onViewChanged;
  final ViewSwitcherStyle style;
  final int? initialValue;

  const AdwaitaViewSwitcher({
    Key? key,
    required this.tabs,
    this.onViewChanged,
    this.initialValue = 0,
    this.style = ViewSwitcherStyle.desktop,
  })  : assert(tabs.length >= 2),
        super(key: key);

  @override
  _AdwaitaViewSwitcherState createState() => _AdwaitaViewSwitcherState();
}

class _AdwaitaViewSwitcherState extends State<AdwaitaViewSwitcher> {
  int _index = 0;

  int get index => _index;

  int tabIndex(ViewSwitcherData tab) => widget.tabs.indexOf(tab);

  bool isTabSelected(ViewSwitcherData tab) => index == tabIndex(tab);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final tab in widget.tabs)
          InkWell(
            onTap: !isTabSelected(tab)
                ? () {
                    setState(() {
                      _index = tabIndex(tab);
                      if (widget.onViewChanged != null)
                        widget.onViewChanged!(index);
                    });
                  }
                : null,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: isTabSelected(tab)
                    ? ThemePicker.of(context).pick(
                        light: AdwaitaLightColors.headerSwitcherTabBackground,
                        dark: AdwaitaDarkColors.headerSwitcherTabBackground,
                      )
                    : Colors.transparent,
                border: Border.symmetric(
                  vertical: BorderSide(
                    width: 1,
                    color: isTabSelected(tab)
                        ? ThemePicker.of(context).pick(
                            light: AdwaitaLightColors.headerSwitcherTabBorder,
                            dark: AdwaitaDarkColors.headerSwitcherTabBorder,
                          )
                        : Colors.transparent,
                  ),
                ),
              ),
              child: AdwaitaViewSwitcherTab(
                data: tab,
                isSelected: isTabSelected(tab),
                style: widget.style,
              ),
            ),
          )
      ],
    );
  }
}
