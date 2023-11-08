import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // Menambahkan daftar warna untuk tiap item
  final List<Color> itemColors = [
    Colors.red,     // Warna untuk "Lihat Produk"
    Colors.green,   // Warna untuk "Tambah Produk"
    Colors.blue,    // Warna untuk "Logout"
  ];

  final List<ShopItem> items = [
    ShopItem("Lihat Produk", Icons.checklist),
    ShopItem("Tambah Produk", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'PBP Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Menggunakan GridView.builder agar kita bisa mengakses index
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                primary: true,
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  // Mengambil warna dari daftar warna berdasarkan index
                  return ShopCard(
                    items[index],
                    color: itemColors[index], // Menambahkan parameter warna
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;
  final Color color; // Menambahkan field color

  // Menambahkan parameter color pada constructor
  const ShopCard(this.item, {required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color, // Menggunakan field color
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
