// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double heightOfScreen = screenInfo.size.height;
    final double widthOfScreen = screenInfo.size.width;
    print("screen height : $heightOfScreen");
    print("screen width : $widthOfScreen");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pizza",
          style: TextStyle(fontFamily: "Pacifico", fontSize: 22),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: heightOfScreen / 43),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                  fontSize: widthOfScreen / 12,
                  color: anaRenk,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("images/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(data: "Cheese"),
                Chip(data: "Sausage"),
                Chip(data: "Olive"),
                Chip(data: "Pepper"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "20 min",
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Delivery",
                    style: TextStyle(
                      fontSize: 22,
                      color: anaRenk,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Meat Lover, get ready to meet your pizza !",
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "\$ 5.98",
                  style: TextStyle(
                    fontSize: 44,
                    color: anaRenk,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(color: yaziRenk, fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                    ),
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

class Chip extends StatelessWidget {
  String data;

  Chip({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      // ignore: sort_child_properties_last
      child: Text(
        data,
        style: TextStyle(color: yaziRenk),
      ),
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
