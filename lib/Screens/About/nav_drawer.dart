import 'package:dmi_univeristy/Screens/listOf_Programs.dart';
import 'package:flutter/material.dart';

import '../campuses.dart';
import '../person_info.dart';
import '../program_details.dart';

// NAVIGATION DRAWER
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'DMI st John The Baptist University',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'dmisjbu@gmail.com',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // child: Image.asset(
                //   'images/dmi.png',
                //   fit: BoxFit.cover,
                //   width: 90,
                //   height: 90,
                // ),
                child: Image(
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                    image: AssetImage(
                      'images/logo.jpg',
                    )),
              ),
            ),
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/gara3.jpg')),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.person),
              title: const Text('My profile'),
              onTap: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Personal())))),
          ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Scholarships'),
              onTap: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CourseLists())))),
          ListTile(
              leading: const Icon(Icons.assured_workload),
              title: const Text('Campuses'),
              onTap: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Campuses())))),
          ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Apply'),
              onTap: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CourseLists())))),
          const Divider(),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => null),
          ListTile(
              leading: const Icon(Icons.layers),
              title: const Text('Career guidance'),
              onTap: (() => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Personal())))),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}