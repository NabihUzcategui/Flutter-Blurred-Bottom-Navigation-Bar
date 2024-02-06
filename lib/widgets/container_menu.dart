import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerMenu extends StatelessWidget {
  const ContainerMenu({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 18,
      left: 18,
      right: 18,
      height: 86,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.scaffoldBackgroundColor,
            width: 2,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(52),
            bottomRight: Radius.circular(52),
          ),
          color: theme.scaffoldBackgroundColor.withOpacity(0.1),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(52),
            bottomRight: Radius.circular(52),
          ),
          child: ClipPath(
            clipper: _MyCustomClipper(),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 12, sigmaX: 12),
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 90);
    path.lineTo(90, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
