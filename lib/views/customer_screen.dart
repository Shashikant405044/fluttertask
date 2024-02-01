import 'package:flutter/material.dart';



class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Customer'),
          actions: [
          IconButton(onPressed: () => {

          }, icon: const Icon(Icons.add_circle)),
        ],
      ),
     
      drawer: Drawer(
        child: Column(
          children: [
           const UserAccountsDrawerHeader(
               accountName: Text("Shashikant Kushwaha"),
              accountEmail: SizedBox(),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1464547965/photo/worker-thinking-or-typing-on-laptop-in-cafe-coffee-shop-or-restaurant-on-startup-ideas-vision.jpg?s=1024x1024&w=is&k=20&c=nsHJ2Sew3AsReg2OqKIw6hqSfyfN_xmqr-3TOwmSRUA="
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
  
  
  body: ListView.builder(
  itemCount: 20,
  itemBuilder: (context,index){
    return Card(
      margin: const EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 5),
      elevation: 15,
      child: Container(
        padding: const EdgeInsets.only(left: 10,top: 10,right: 20),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shashikant',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text('Shashikant12@gmail.com'),
            SizedBox(height: 5,),
            Text('30'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Text('Delete',style: TextStyle(color: Colors.red),),
                 SizedBox(width: 30),
                 Text('Edit',style: TextStyle(color: Colors.blue),),
    
              ],
            )
    
          ],
        ),
      ),
    );
  }
  ),
);

}
}