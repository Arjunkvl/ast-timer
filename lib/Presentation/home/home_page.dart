import 'package:flutter/material.dart';
import 'package:timer/Presentation/Timer/controllers/notifiers.dart';
import 'package:timer/Presentation/Timer/timer_page.dart';
import 'package:timer/Presentation/core/variables.dart';
import 'package:timer/Presentation/home/components/variables.dart';
import 'package:timer/Presentation/home/widgets/text_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                TextBox(
                  label: 'hour',
                  controller: hour,
                ),
                const Spacer(),
                TextBox(
                  label: 'min',
                  controller: min,
                ),
                const Spacer(),
                TextBox(
                  label: 'sec',
                  controller: sec,
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () async {
                startTimer(context);
              },
              child: const Text(
                'Start',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

void startTimer(context) {
  stop = false;
  int sHour = int.parse(hour.text);
  int sMin = int.parse(min.text);
  int sSec = int.parse(sec.text);
  setTime.value = [sHour, sMin, sSec];
  // hour.clear();
  // min.clear();
  // sec.clear();
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) {
        return const TimerPage();
      },
    ),
  );
}
