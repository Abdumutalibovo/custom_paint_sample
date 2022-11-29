import 'package:flutter/material.dart';
import '../companents/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Custom Paint",style: TextStyle(color: Colors.black,fontSize: 26),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text("Bad Sticker",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, badRouter);
              },
            ),
            ListTile(
              title: const Text("Average Sticker",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, averageRouter);
              },
            ),
            ListTile(
              title: const Text("Good Sticker",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, goodRouter);
              },
            ),
            ListTile(
              title: const Text("Very Good Sticker",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, veryGoodRouter);
              },
            ),
            ListTile(
              title: const Text("Flag",style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, flagRouter,);
              },
            ),
          ],
        ),
      ),
    );
  }
}