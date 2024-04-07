import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
    required this.label,
    required this.controller,
  });
  final String label;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Column(
          children: [
            TextField(
              style: const TextStyle(color: Colors.white, fontSize: 30),
              keyboardType: TextInputType.number,
              controller: controller,
              onEditingComplete: () {},
              textAlign: TextAlign.center,
              showCursor: false,
              decoration: InputDecoration(
                hintText: label,
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ));
  }
}
