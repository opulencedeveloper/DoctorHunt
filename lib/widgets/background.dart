import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget widget;
  final String align;
  final bool shadowTop;
  final bool shadowBottom;
  const BackGround({
    required this.widget,
    this.align = 'none',
    this.shadowTop = false,
    this.shadowBottom = true,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Stack(clipBehavior: Clip.none, children: [
      if (shadowTop)
        Positioned(
            top: -150,
            left: -80,
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    theme.primary.withOpacity(0.2),
                    Colors.grey.shade50.withOpacity(0.2)
                  ],
                  radius: 0.5,
                  //focal: Alignment(0.7, -0.7),
                  // tileMode: TileMode.clamp,
                ),
              ),
            )),
      if (align == 'left')
        Positioned(
            top: -30,
            left: -120,
            child: CircleAvatar(
              radius: 160,
              backgroundColor: theme.primary,
            )),
      if (align == 'right')
        Positioned(
            top: -30,
            right: -120,
            child: CircleAvatar(
              radius: 160,
              backgroundColor: theme.primary,
            )),
      if (shadowBottom)
        Positioned(
          bottom: -80,
          right: -80,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  theme.primary.withOpacity(0.2),
                  Colors.grey.shade50.withOpacity(0.2)
                ],
                radius: 0.5,
                //focal: Alignment(0.7, -0.7),
                // tileMode: TileMode.clamp,
              ),
            ),
          ),
        ),
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: widget,
      ),
    ]);
  }
}
