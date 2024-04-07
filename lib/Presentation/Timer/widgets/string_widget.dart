import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class StringWidget extends StatelessWidget {
  const StringWidget({
    super.key,
    required this.value,
  });
  final int value;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      value <= 9 ? '0$value' : value.toString(),
      style: TextStyle(
        color: value > 0 ? Colors.white : Colors.red,
        fontFamily: 'monospace',
        fontWeight: FontWeight.bold,
      ),
      presetFontSizes: const [170, 150, 100, 60],
    );
  }
}
