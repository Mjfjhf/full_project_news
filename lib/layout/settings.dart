import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
static const String routeName="setteng";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          backgroundColor: Colors.green,
          title: Text('Setting'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Image.asset("assets/images/pattern.png",fit: BoxFit.cover,height: double.infinity,),

          ],
        ),
      ),
    );
  }
}
