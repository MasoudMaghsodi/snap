import 'package:flutter/material.dart';
import 'package:snap/constant/dimens.dart';

// ignore: must_be_immutable
class MyBackButton extends StatelessWidget {
  Function() onPressed;
  MyBackButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimens.medium,
      left: Dimens.medium,
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 3),
              blurRadius: 18,
            ),
          ],
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.arrow_back_outlined,
          ),
        ),
      ),
    );
  }
}
