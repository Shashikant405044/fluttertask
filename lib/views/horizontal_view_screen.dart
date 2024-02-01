import 'package:flutter/material.dart';

import '../constants/icons/app_icons.dart';


class HorizontalViewScreen extends StatelessWidget {
  HorizontalViewScreen({super.key});

  List imageData = [
    AppIcons.addCart,
    AppIcons.offers,
    AppIcons.grocessary,
    AppIcons.mobile,
    AppIcons.fassion,
     AppIcons.addCart,
    AppIcons.offers
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 10,right: 20,left: 20),
        decoration: const BoxDecoration(
          shape: BoxShape.circle
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageData.length,
          itemBuilder: (context,index){
            var imageListData = imageData[index];
            return Container(
               height: 60,
               width: 60,
                decoration: const BoxDecoration(
                 shape: BoxShape.circle,
                 color: Color.fromARGB(255, 160, 187, 174)
                 ),
             
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Icon(imageListData),
                     const SizedBox(height: 5,),
                     const Text('to add'),
                    
                   
                  ],
                ),
              ),
            );
          }
        ),
      )
      ,

    );
  }
}