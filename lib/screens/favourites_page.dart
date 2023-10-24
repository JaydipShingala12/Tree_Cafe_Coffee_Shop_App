import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {

  var favourites = [
    'Americano',
    'Espresso',
    'Iced Frappuccino',
    'Iced Mochas',
    'Milk Tea',
    'Coca Cola',
    'Mountain Dew',
  ];

  var fvimages = [
    'assets/images/hot_coffees/americano.png',
    'assets/images/hot_coffees/espresso.png',
    'assets/images/cold_coffees/iced_frappuccino.png',
    'assets/images/cold_coffees/iced_mochas.png',
    'assets/images/hot_teas/milk_tea.png',
    'assets/images/cold_drinks/coca_cola.png',
    'assets/images/cold_drinks/mountain_dew.png',
  ];

  var fvprice = [
    '200/-',
    '300/-',
    '100/-',
    '300/-',
    '50/-',
    '30/-',
    '30/-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Favourites'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i<favourites.length; i++)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                    blurRadius: 7,
                  )
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    fvimages[i],
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      favourites[i],
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          fvprice[i],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                        const Text(
                          '60 ml',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
        ],
      )
    );
  }
}
