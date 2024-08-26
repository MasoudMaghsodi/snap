import 'package:flutter/material.dart';
import 'package:snap/constant/dimens.dart';
import 'package:snap/constant/text_styles.dart';
import 'package:snap/widget/back_button.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // osm map
            Container(
              color: Colors.blueAccent.shade200,
            ),
            // current widget
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(Dimens.large),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "انتخاب مبدا",
                    style: MyTextStyles.bottun,
                  ),
                ),
              ),
            ),
            MyBackButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
