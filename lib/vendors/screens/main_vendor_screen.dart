import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainVendorScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  MainVendorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Main Vendor Screen'),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () async {
                  await _auth.signOut();
                },
                child: Text('Signout'))
          ],
        ),
      ),
    );
  }
}
