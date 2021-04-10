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

  bool isTabSelected(ViewSwitcherData tab) => index == widget.tabs.indexOf(tab);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final tab in widget.tabs)
          InkWell(
            onTap: () {
              final tapIndex = widget.tabs.indexOf(tab);

              if (widget.onViewChanged != null) widget.onViewChanged!(tapIndex);
              setState(() => _index = tapIndex);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 150),
              height: 48,
              decoration: BoxDecoration(
                color: isTabSelected(tab)
                    ? Color(0xFFD8D5CF)
                    : Theme.of(context).primaryColor,
                border: Border.symmetric(
                  vertical: BorderSide(
                    width: 0.25,
                    color: isTabSelected(tab)
                        ? Color(0xffC1BAB5)
                        : Colors.transparent,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    if (tab.icon != null)
                      Icon(
                        tab.icon,
                        color: Color(0xFF2E3436),
                      ),
                    if (tab.icon != null && tab.title != null)
                      SizedBox(width: 6),
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
