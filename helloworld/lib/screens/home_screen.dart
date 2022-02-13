import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.verified_user_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: const CustomScreen(
        color: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user_outlined), label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext contextq) {
    return Container(
      color: color,
      child: const Center(
          child: Image(
        image: NetworkImage(
            'https://dam.cocinafacil.com.mx/wp-content/uploads/2020/08/dogo.jpg'),
      )),
    );
  }
}
