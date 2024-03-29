import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    try {
      print('getting location');
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
