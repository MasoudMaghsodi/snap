import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:snap/constant/dimens.dart';
import 'package:snap/constant/text_styles.dart';
import 'package:snap/constant/widget_state.dart';
import 'package:snap/widget/back_button.dart';
import 'package:snap/gen/assets.gen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<GeocodingPlatform> geoPoints = [];
  List currentWidgetList = [CurrentWidgetState.stateSelectOrgin];
  Widget markerIcon = SvgPicture.asset(
    Assets.icons.origin.path,
    height: 100,
    width: 40,
  );
  MapController mapController = MapController(
    initMapWithUserPosition: const UserTrackingOption(
      unFollowUser: false,
      enableTracking: false,
    ),
    initPosition: GeoPoint(latitude: 36.968797, longitude: 46.090941),
  );
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
            currentWidget(),
            MyBackButton(
              onPressed: () {
                if (currentWidgetList.length > 1) {
                  setState(() {
                    currentWidgetList.removeLast();
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget currentWidget() {
    Widget widget = orgin();

    switch (currentWidgetList.last) {
      case CurrentWidgetState.stateSelectOrgin:
        widget = orgin();
        break;
      case CurrentWidgetState.stateSelectDestination:
        widget = dest();
        break;
      case CurrentWidgetState.stateRequestDriver:
        widget = reqDriver();
        break;
    }
    return widget;
  }

  Positioned orgin() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.large),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              currentWidgetList.add(CurrentWidgetState.stateSelectDestination);
            });
          },
          child: Text(
            "انتخاب مبدا",
            style: MyTextStyles.bottun,
          ),
        ),
      ),
    );
  }

  Positioned dest() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.large),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              currentWidgetList.add(CurrentWidgetState.stateRequestDriver);
            });
          },
          child: Text(
            "انتخاب مقصد",
            style: MyTextStyles.bottun,
          ),
        ),
      ),
    );
  }

  Positioned reqDriver() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.large),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "درخواست راننده",
            style: MyTextStyles.bottun,
          ),
        ),
      ),
    );
  }
}
