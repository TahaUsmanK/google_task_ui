import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final rect = offset & configuration.size!;
    final paint = Paint();
    paint.color = Colors.blue; // Set the color of the indicator
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2.0; // Set the width of the indicator

    // Customizing the indicator for the first tab (star icon)
    final indicatorWidth = rect.width / 3; // Adjust the width as needed
    final indicatorOffset = Offset(rect.left + rect.width / 3,
        rect.bottom - 2.0); // Adjust the position as needed

    canvas.drawRect(indicatorOffset & Size(indicatorWidth, 2.0), paint);
  }
}
