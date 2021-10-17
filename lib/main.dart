import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

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
    );
  }
}
