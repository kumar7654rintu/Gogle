import 'package:flutter/material.dart';
import 'View_Profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ViewProfileScreen(),
    );
  }
}

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  static const Color purple = Color(0xFF9C27B0);
  static const Color green = Color(0xFF7CB342);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: purple,
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'View Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            const CircleAvatar(
              radius: 65,
              backgroundColor: green,
              child: Icon(
                Icons.person,
                size: 75,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Rintu Kumar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'rintu@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            profileItem(
              icon: Icons.person,
              title: 'Name',
              value: 'Rintu Kumar',
            ),

            profileItem(
              icon: Icons.email,
              title: 'Email',
              value: 'rintu@gmail.com',
            ),

            profileItem(
              icon: Icons.phone,
              title: 'Phone',
              value: '9876543210',
            ),

            profileItem(
              icon: Icons.location_on,
              title: 'Address',
              value: 'Tedha, Bihar',
            ),

            profileItem(
              icon: Icons.school,
              title: 'Education',
              value: 'B.Sc Honours Physics',
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: const Icon(Icons.edit),
                  label: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget profileItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 7,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: purple,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}