import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock_data.dart';
import 'package:flutter_application/src/view_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("hello")),
      //backgroundColor: const Color.fromARGB(255, 26, 6, 69),
      body: ListView.builder(
        itemCount: myData.length,
        itemBuilder: ((context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => ViewDetailScreen(
                          imageUrl: myData[index]["profileImage"].toString(),
                          title: myData[index]["cityName"].toString(),
                          about: myData[index]["about"].toString(),
                        ))));
              },
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 6,
                          color: const Color.fromARGB(255, 26, 6, 69)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    height: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        myData[index]["profileImage"].toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    left: 80,
                    right: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                          color: const Color.fromARGB(255, 26, 6, 69),
                          height: 40,
                          width: 200,
                          child: Center(
                              child: Text(
                            myData[index]["cityName"].toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2),
                          ))),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
