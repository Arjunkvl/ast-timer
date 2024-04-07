import 'package:flutter/material.dart';
import 'package:timer/Presentation/Timer/controllers/notifiers.dart';
import 'package:timer/Presentation/Timer/widgets/string_widget.dart';
import 'package:timer/Presentation/core/timer.dart';
import 'package:timer/Presentation/core/variables.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    start();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: GestureDetector(
        onVerticalDragDown: (d) {
          stop = true;
        },
        child: Center(
          child: ValueListenableBuilder(
            valueListenable: setTime,
            builder: (context, value, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StringWidget(value: value[0]),
                  StringWidget(value: value[1]),
                  StringWidget(value: value[2]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
