import 'package:flutter/material.dart';

class ViewDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String about;

  ViewDetailScreen(
      {required this.imageUrl, required this.title, required this.about});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Column(children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 6, color: const Color.fromARGB(255, 26, 6, 69))),
                width: double.infinity,
                height: 300,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 26, 6, 69),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Color.fromARGB(255, 26, 6, 69),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                about,
                style: const TextStyle(
                  color: Color.fromARGB(255, 26, 6, 69),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(),
        ]),
      ),
    );
  }
}
