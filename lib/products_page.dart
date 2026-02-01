import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});

  final List<Map<String, String>> products = [
    {
      'name': 'Macbook',
      'price': '8000 DH',
      'image': 'assets/images/macbook.jpg',
    },
    {
      'name': 'Iphone 17',
      'price': '10000 DH',
      'image': 'assets/images/iphone17.jpg',
    },
    {
      'name': 'Samsung A53',
      'price': '3500 DH',
      'image': 'assets/images/samsung_a53.jpg',
    },
    {'name': 'T-Shirt', 'price': '150 DH', 'image': 'assets/images/tshirt.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produits')),
      body: Center(
        child: SizedBox(
          width: 800,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final product = products[index];

              return Card(
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        product['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      child: Text(
                        product['name']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        product['price']!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 221, 144, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: SizedBox(
                        width: double.infinity,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
