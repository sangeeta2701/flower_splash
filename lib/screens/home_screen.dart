import 'package:flutter/material.dart';
import 'package:splash_screen/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black, size: 30),
        title: Text(
          "Home",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                        image: "assets/rose.jpg",
                        title: "Dozen Pink Roses Bouquet",
                        description:
                            "This is a bunch of 12 Pink Roses wrapped with a pretty ribbon. Pink roses signify elegance, gentility, and poetic romance, without the seriousness signified by red. They present a pretty way to show your care to your some one special."),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/rose.jpg"),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                        image: "assets/orc.jpg",
                        title: "Blooming Beauty",
                        description:
                            "The bunch of orchids is heart crafted, especially for your near and dear ones. Adore them! Respect them! Honour them! And make them realise how much lucky you are to have them in your life. Send them this token of love and express all your unsaid feelings!"),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/orc.jpg"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
