import 'package:flutter/material.dart';
import 'package:flutter_chowk/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            primary: Colors.black, seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App BAR
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 28,
          ),
        ),
        centerTitle: true,
        title: const Text('SAMSUNG',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 28,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),

      //bottom navigation bar

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 28,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 28,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 28,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),

      //app body

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //size box
          const SizedBox(
            height: 50,
          ),

          //search bar
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(100)),
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),

          //size box
          const SizedBox(
            height: 30,
          ),

          //text
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Categories ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //size box
          const SizedBox(
            height: 20,
          ),

          //categories

          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  height: 50,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                );
              },
            ),
          ),

          //size box
          const SizedBox(
            height: 30,
          ),

          // text
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Samsung S Series',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //size box
          const SizedBox(
            height: 10,
          ),

          //products
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[100],
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          width: 200,
                          child: Image.asset(products[index].image,
                              fit: BoxFit.contain),
                        ),
                        ListTile(
                          title: Text(
                            products[index].title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(products[index].description),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '₹${products[index].price}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add_shopping_cart),
                              onPressed: () {},
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite))
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
