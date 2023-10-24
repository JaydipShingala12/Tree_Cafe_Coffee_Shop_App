import 'package:flutter/material.dart';

class ColdDrinksScreen extends StatefulWidget {
  const ColdDrinksScreen({Key? key}) : super(key: key);

  @override
  State<ColdDrinksScreen> createState() => _ColdDrinksScreenState();
}

class _ColdDrinksScreenState extends State<ColdDrinksScreen> {

  var colddrinks = [
    'Seven Up',
    'Coca Cola',
    'Fanta',
    'Limca',
    'Maaza',
    'Mirinda',
    'Mountain Dew',
    'Pepsi',
    'Sprite',
    'Thums_up',
  ];

  var cdimages = [
    'assets/images/cold_drinks/7up.png',
    'assets/images/cold_drinks/coca_cola.png',
    'assets/images/cold_drinks/fanta.png',
    'assets/images/cold_drinks/limca.png',
    'assets/images/cold_drinks/maaza.png',
    'assets/images/cold_drinks/mirinda.png',
    'assets/images/cold_drinks/mountain_dew.png',
    'assets/images/cold_drinks/pepsi.png',
    'assets/images/cold_drinks/sprite.png',
    'assets/images/cold_drinks/thums_up.png',
  ];

  var cdprice = [
    '15/-',
    '15/-',
    '15/-',
    '15/-',
    '15/-',
    '15/-',
    '15/-',
    '15/-',
    '15/-',
    '15/-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Cold Drinks Screen'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i<colddrinks.length; i++)
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
                    cdimages[i],
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      colddrinks[i],
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
                          cdprice[i],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                        const Text(
                          '30 ml',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to Favorites',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.only(left: 23,right: 23,top: 5,bottom: 5),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Buy now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
        ],
      )
    );
  }
}
