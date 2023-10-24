import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Profile'),
      ),
      body: Container(
        height: 500,
        width: 300,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.withOpacity(0.5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 3,
              blurRadius: 7,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              maxRadius: 100.0,
              child: Image.asset('assets/images/profile_icon.png'),
            ),
            const Divider(
              color: Colors.white60,
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  'Name :- ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10),
                Text(
                  'Jaydip',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  'Email id :- ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10),
                Text(
                  'jaydip@gmail.com',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  'Password :- ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10),
                Text(
                  '******',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
              ),
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
