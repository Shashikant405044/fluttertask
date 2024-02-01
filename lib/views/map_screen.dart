import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import '../controller/map_controller.dart';


class MapScreen extends StatelessWidget {
   MapScreen({super.key});
   final controller = Get.put(MapController());

  Completer<GoogleMapController> gMapController = Completer();

  
  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(28.4618, 77.5005),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Map',style: TextStyle(color: Colors.black)),
      ),
      drawer: Drawer(
        child: Column(
          children: [
           const UserAccountsDrawerHeader(
               accountName: Text("Shashikant"),
              accountEmail: SizedBox(),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/47.jpg"
                ),
              ),
              ),

            ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: () {
          
        },
      ),
            ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Profile'),
        onTap: () {
        
        },
      ),
            ListTile(
        leading: const Icon(Icons.wallet),
        title: const Text('My Wallet'),
        onTap: () {
        
        },
      ),
            ListTile(
        leading: const Icon(Icons.redeem),
        title: const Text('Redeem'),
        onTap: () {
        
        },
      ),
            ListTile(
        leading: const Icon(Icons.edit),
        title: const Text('Offers'),
        onTap: () {
        
        },
      ),
            ListTile(
        leading: const Icon(Icons.question_mark),
        title: const Text('FAQ'),
        onTap: () {
        
        },
      ),
            ListTile(
        leading: const Icon(Icons.edit),
        title: const Text('10+1 plan'),
        onTap: () {
        
        },
      ),
            ListTile(
        leading: const Icon(Icons.sunny),
        title: const Text('My Gold Mines'),
        onTap: () {
        
        },
      ),
    
     const Divider(
          height: 10,
          color: Colors.grey,
          thickness: 1,
          indent : 10,
          endIndent : 10,       
       ),
       Expanded(
         child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text('Sign Out'),
            ),
            const Spacer(),
            TextButton(
              onPressed: (){
       
            },
            child: const Icon(Icons.logout,color: Colors.red,),)
          ],
         ),
       )
    ],
  ),
),
  
      body: GoogleMap(
        initialCameraPosition: cameraPosition,
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: false,
        markers: Set<Marker>.of(controller.marker),
        onMapCreated: (GoogleMapController controller){
          gMapController.complete(controller);

        }),
        );
  }
}