import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:geolocator/geolocator.dart';
import 'package:smooth_compass_plus/utils/src/compass_ui.dart';

class QiblahPage extends StatefulWidget {
  @override
  _QiblahPageState createState() => _QiblahPageState();
}

class _QiblahPageState extends State<QiblahPage> {
  /*double qiblaDirection = 0.0;

  @override
  void initState() {
    super.initState();
    _getQiblaDirection();
  }

  void _getQiblaDirection() async {
    // Get user's current location
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    // Coordinates for Kaaba in Mecca
    const double kaabaLat = 21.4225;
    const double kaabaLng = 39.8262;

    // Calculate the angle between user's location and Kaaba
    double lat1 = position.latitude;
    double lng1 = position.longitude;
    double lat2 = kaabaLat;
    double lng2 = kaabaLng;

    double deltaLng = lng2 - lng1;

    double y = math.sin(deltaLng) * math.cos(lat2);
    double x = math.cos(lat1) * math.sin(lat2) -
        math.sin(lat1) * math.cos(lat2) * math.cos(deltaLng);
    double radians = math.atan2(y, x);

    // Convert radians to degrees
    double degrees = _toDegrees(radians);

    // Convert the angle to the range of 0-360
    double direction = (degrees + 360) % 360;

    setState(() {
      qiblaDirection = direction;
    });
  }

  double _toDegrees(double radians) {
    return radians * (180 / math.pi);
  }*/

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(alignment: Alignment.centerRight,child: Text('اتجاه القبله',  textDirection: TextDirection.rtl,)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           /* Text(
              'اتجاه القبله:',
              style: TextStyle(fontSize: 20),
              textDirection: TextDirection.rtl,
            ),*/
            /*Text(
              '${qiblaDirection.toStringAsFixed(2)}°',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),*/
            //SizedBox(height: 20),
            SmoothCompassWidget(
              rotationSpeed: 200,
              height: 300,
              isQiblahCompass: true,
              width: 300,
              compassBuilder: (context,AsyncSnapshot<CompassModel>? compassData,Widget compassAsset){
                return AnimatedRotation(
                  turns: compassData?.data?.turns??0/360,
                  duration: const Duration(milliseconds: 400),
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Stack(
                      children: [
                        //put your compass here
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.asset('assets/images/img3.png',
                              fit: BoxFit.fill),
                        ),

                        //put your qiblah needle here
                        Positioned(
                          top: 20,
                          left: 0,
                          right: 0,
                          bottom: 20,
                          child: AnimatedRotation(
                            turns: (compassData?.data?.qiblahOffset??0)/360,
                            duration: const Duration(milliseconds: 400),
                            child: Image.asset("assets/images/img4.png",
                                width: 80,
                                fit: BoxFit.fitHeight),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
           /* Transform.rotate(
              angle: math.pi / 180 * qiblaDirection,
              child: Image.asset(
                'assets/images/img.png', // Replace with your arrow image
                width: 200,
                height: 200,
              ),
            ),*/
          ],
        ),
      ),
    );
  }


}
