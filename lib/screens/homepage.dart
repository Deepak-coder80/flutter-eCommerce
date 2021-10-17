import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('E-shop Online'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Deepak'),
              accountEmail: const Text('deepak@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  child: Icon(Icons.person),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.purple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "My Accout",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "My Orders",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.purple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.purple,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "Favorites",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          imageCarousel(),
        ],
      ),
    );
  }

  Widget imageCarousel() {
    return Container(
      height: 250,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: const [
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdoCz9qXlqqetcEQUfMxWZzWjuD-RHiG2iow&usqp=CAU'),
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdM2DlvIm9ZzRqC9slolMaGxPb-_3QXkokwA&usqp=CAU'),
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcAmpBOUSfPgAPfnmoeAnn_2ty5mPp3ooUBw&usqp=CAU'),
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScHvEQnn0IqJutNT7_36oadW78B5z_x7vlRQ&usqp=CAU'),
        ],
        dotSize: 4.6,
        dotBgColor: Colors.transparent,
        dotColor: Colors.purple,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
