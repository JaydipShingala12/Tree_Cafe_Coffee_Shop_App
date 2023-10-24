import 'package:coffee_shop_app/screens/about_page.dart';
import 'package:coffee_shop_app/screens/cold_coffee_screen.dart';
import 'package:coffee_shop_app/screens/cold_drinks_screen.dart';
import 'package:coffee_shop_app/screens/favourites_page.dart';
import 'package:coffee_shop_app/screens/feedback_page.dart';
import 'package:coffee_shop_app/screens/hot_coffee_screen.dart';
import 'package:coffee_shop_app/screens/hot_teas_screen.dart';
import 'package:coffee_shop_app/screens/notification_page.dart';
import 'package:coffee_shop_app/screens/orders_page.dart';
import 'package:coffee_shop_app/screens/profile_page.dart';
import 'package:coffee_shop_app/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  final List data;

  const Homepage({super.key, required this.data});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  var store = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  TabController? _tabController;
  var searchkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        backgroundColor: Colors.black,
        width: 260,
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: Container(
                height: 220,
                color: Colors.orange.withOpacity(0.7),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    CircleAvatar(
                      maxRadius: 70,
                      child: Image.asset('assets/images/profile_icon.png'),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'Jaydip Shingala',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          'jaydipshinga12@gmail.com',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavouritesPage(),
                  ),
                );
              },
              title: const Text(
                'Favourites',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 25,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderPage(),
                  ),
                );
              },
              title: const Text(
                'Orders',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.reorder_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeedbackPage(),
                  ),
                );
              },
              title: const Text(
                'Feedback',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.feedback,
                color: Colors.white,
                size: 25,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
              title: const Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 25,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              },
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        minimumSize: const Size.square(5),
                      ),
                      child: const Icon(
                        Icons.sort_rounded,
                        size: 35,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Welcome Coffee Lover,',
                      style: GoogleFonts.signika(
                          color: Colors.white.withOpacity(0.5), fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationPage()));
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Coffee is a hug in a mug.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  key: searchkey,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find Your Coffee",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.6),
                      size: 30,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HotCofeeScreen()),
                              );
                            },
                            child: Image.asset(
                              "assets/images/hot_coffee.png",
                              width: 200,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Align(
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'Hot Coffee',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ColdCoffeeScreen()),
                              );
                            },
                            child: Image.asset(
                              "assets/images/cold_coffee.png",
                              width: 200,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Align(
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'Cold Coffee',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HotTeaScreen()),
                              );
                            },
                            child: Image.asset(
                              "assets/images/hot_teas.png",
                              width: 200,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Align(
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'Hot Teas',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 50),
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ColdDrinksScreen()),
                              );
                            },
                            child: Image.asset(
                              "assets/images/cold_drinks.png",
                              width: 200,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Align(
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'Cold Drinks',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: HomeButtonBar(),
    );
  }
}
