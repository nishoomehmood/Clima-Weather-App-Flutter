import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      print("latitudeee===============$latitude");
      longitude = position.longitude;
      print("langitudeee==============$longitude");
    } catch (e) {
      print(e);
    }
  }
}
