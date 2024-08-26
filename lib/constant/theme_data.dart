import 'package:flutter/material.dart';
import 'package:snap/constant/dimens.dart';

ThemeData myThemeData() {
  return ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        fixedSize: const WidgetStatePropertyAll(
          Size(double.infinity, 58),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.medium),
          ),
        ),
        elevation: const WidgetStatePropertyAll(
          0,
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.pressed)) {
              return const Color.fromARGB(255, 13, 220, 141);
            }
            return const Color.fromARGB(255, 2, 207, 36);
          },
        ),
      ),
    ),
  );
}
