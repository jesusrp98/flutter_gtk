import 'package:flutter/material.dart';

class AdwaitaHeaderBar extends StatelessWidget {
  final Widget leading;
  final Widget center;
  final Widget trailling;

  const AdwaitaHeaderBar({
    Key? key,
    this.leading = const SizedBox(),
    this.center = const SizedBox(),
    this.trailling = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border(
            bottom: BorderSide(
              color: Color(0xffC1BAB5),
            ),
          ),
        ),
        height: 48,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              center,
              trailling,
            ],
          ),
        ),
      ),
    );
  }
}
