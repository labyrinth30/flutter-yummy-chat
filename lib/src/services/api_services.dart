import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Position> getCurrentPosition() async {
    var permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // 위치 권한이 거부된 경우 처리할 내용 작성
      throw Exception('Location permission denied');
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
  }
}
