import 'package:flutter/material.dart';
import '../constants/icons/app_icons.dart';
import '../constants/image_path.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              )),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Shashikant"),
              accountEmail: SizedBox(),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/47.jpg"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text('My Wallet'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.redeem),
              title: const Text('Redeem'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Offers'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.question_mark),
              title: const Text('FAQ'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('10+1 plan'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.sunny),
              title: const Text('My Gold Mines'),
              onTap: () {},
            ),
            const Divider(
              height: 10,
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 10,
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
                    onPressed: () {},
                    child: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              padding: const EdgeInsets.all(8.0),
              //color: Colors.redAccent,
              height: 80,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 65,
                      width: 65,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 2.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Icon(imageData[index]), const Text(" All")],
                      ),
                    );
                  })),
                  const SizedBox(height: 10,),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(20, (index) {
                  return Card(
                    elevation: 15,
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 100,
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              scale: 1.5,
                              image: AssetImage(
                                ImagePath.neckLeshImage,
                              ),
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Gold Neck wear Set',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Weight: 7.629 g',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Price: Rs 87029.00',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }

  List imageData = [
    AppIcons.addCart,
    AppIcons.offers,
    AppIcons.grocessary,
    AppIcons.mobile,
    AppIcons.fassion,
    AppIcons.addCart,
    AppIcons.offers,
    AppIcons.grocessary,
    AppIcons.mobile,
    AppIcons.fassion,
    AppIcons.addCart,
    AppIcons.offers,
    AppIcons.grocessary,
    AppIcons.mobile,
    AppIcons.fassion
  ];
}
