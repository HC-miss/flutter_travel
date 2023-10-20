import 'package:flutter/material.dart';

class IconBadge extends StatelessWidget {
  const IconBadge({
    super.key,
    required this.icon,
    this.size,
    this.color,
  });

  final IconData icon;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          icon,
          size: size,
          color: color,
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          child: Container(
            height: 12.0,
            width: 12.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  Colors.red[300],
              border: Border.all(
                width: 1,
                color: Theme.of(context).primaryColor,
              )
            ),
          ),
        )
      ],
    );
  }
}
