import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {

  List<Marker> marker = [];
  List<Marker> markerList = const [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(28.4618, 77.5005),
      infoWindow: InfoWindow(
        title: 'Noida Expocenter location'
      )
      ),
      Marker(
      markerId: MarkerId('2'),
      position: LatLng(28.6280, 77.3649),
      infoWindow: InfoWindow(
        title: 'Noida sector62 location'
      )
      ),
      
      Marker(
      markerId: MarkerId('3'),
      position: LatLng(28.6210, 77.3812),
      infoWindow: InfoWindow(
        title: 'Noida sector63 location'
      )
      ),
      Marker(
      markerId: MarkerId('4'),
      position: LatLng(28.6219, 77.3809),
      infoWindow: InfoWindow(
        title: 'Noida sector63 chetu location'
      )
      )
  ];

  @override
  void onInit(){
    marker.addAll(markerList);
    super.onInit();
  }


}