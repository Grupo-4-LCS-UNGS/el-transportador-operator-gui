import 'package:geolocator/geolocator.dart';

Future<Map<String, double>> getCurrentLocation() async {
  try {
    // Check location permissions
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw 'Location permissions are denied';
      }
    }

    // Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw 'Location services are disabled';
    }

    // Get current position
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Return latitude and longitude as a map
    return {
      'latitude': position.latitude,
      'longitude': position.longitude,
    };
  } catch (e) {
    throw 'Error getting location: $e';
  }
}