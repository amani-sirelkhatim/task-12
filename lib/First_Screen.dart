import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              print('clicked');
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'My First App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 5, 94, 167),
          actions: [
            IconButton(
                onPressed: () {
                  print('clicked');
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Image.network(''),
            Image.network('assets/girl.png'),
            Text(
              'Amani Sirelkhatim',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Flutter developer',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.black),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.facebook, color: Colors.blueAccent),
              ],
            )
          ],
        ));
  }
}
