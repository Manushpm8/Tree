import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeoSchool extends StatefulWidget {
  const GeoSchool({Key? key}) : super(key: key);

  @override
  State<GeoSchool> createState() => _GeoSchoolState();
}

class _GeoSchoolState extends State<GeoSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        color: Colors.black,
        child: Image.asset(
          "assets/images/map.jpeg",
        ),
      ),
    ));
  }
}
