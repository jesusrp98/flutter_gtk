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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffE1DEDB),
              Color(0xFFDAD6D2),
            ],
          ),
          border: Border(
            bottom: BorderSide(
              color: Color(0xffbfb8b1),
            ),
          ),
        ),
        height: 47,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
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
