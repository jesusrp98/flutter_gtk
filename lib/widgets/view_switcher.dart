import 'package:flutter/material.dart';

import '../models/index.dart';

enum ViewSwitcherStyle { desktop, mobile }

class AdwaitaViewSwitcher extends StatefulWidget {
  final List<ViewSwitcherData> tabs;
  final ValueChanged<int>? onViewChanged;
  final int? initialValue;

  const AdwaitaViewSwitcher({
    Key? key,
    required this.tabs,
    this.onViewChanged,
    this.initialValue = 0,
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
                color:
                    isTabSelected(tab) ? Color(0xFFD5D1CD) : Colors.transparent,
                border: Border.symmetric(
                  vertical: BorderSide(
                    width: 1,
                    color: isTabSelected(tab)
                        ? Color(0xffCDC7C2)
                        : Colors.transparent,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    if (tab.icon != null)
                      Icon(
                        tab.icon,
                        color: Color(0xFF2E3436),
                      ),
                    if (tab.icon != null && tab.title != null)
                      SizedBox(width: 8),
                    if (tab.title != null)
                      Text(
                        tab.title!,
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              color: Color(0xFF2E3436),
                              fontWeight: isTabSelected(tab)
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                      ),
                  ],
                ),
              ),
            ),
          )
      ],
    );
  }
}
