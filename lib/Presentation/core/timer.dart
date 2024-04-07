import 'dart:async';
import 'dart:developer';

import 'package:timer/Presentation/Timer/controllers/notifiers.dart';
import 'package:timer/Presentation/core/variables.dart';

void start() {
  Timer.periodic(const Duration(seconds: 1), (timer) {
    setTime.value = List<int>.from(setTime.value); // Create a new list
    if (setTime.value[2] > 0) {
      setTime.value[2]--;
    } else {
      if (setTime.value[1] > 0) {
        setTime.value[2] = 59;
        setTime.value[1]--;
      } else {
        if (setTime.value[0] > 0) {
          setTime.value[2] = 59;
          setTime.value[1] = 59;
          setTime.value[0]--;
        } else {
          timer.cancel();
        }
      }
    }
    if (stop) {
      timer.cancel();
      log('Timer Stopped');
    }
  });
}
