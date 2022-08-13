import 'package:flutter/material.dart';

// Widget DetailScreen(
//   String image,
//   String title,
//   String description,
// ) {
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10),
//         child: Container(
//           width: double.infinity,
//           height: 250,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(image),),
//           ),
//         ),
//       ),
//       SizedBox(height: 10,),
//       Align
//         (
//         alignment: Alignment.centerLeft,
//           child: Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
//       SizedBox(height: 10,),
//       Text(description,
//   style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
//     ],
//   );
// }
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          title: Text(
            "Details",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
              child: Container(
                width: double.infinity,
                height: 250,
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Dozen Pink Roses Bouquet",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This is a bunch of 12 Pink Roses wrapped with a pretty ribbon. Pink roses signify elegance, gentility, and poetic romance, without the seriousness signified by red. They present a pretty way to show your care to your some one special.",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
