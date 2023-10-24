import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var items = [
    'Edit Profile',
    'Change Language',
    'Change Password',
    'Change Location',
    'Terms and Condition',
    'Privacy Policy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          for (int i = 0; i < items.length; i++)
            Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                onTap: () {},
                tileColor: Colors.white.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(width: 2),
                ),
                splashColor: Colors.amber,
                title: Text(
                  '${items[i]}',
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
