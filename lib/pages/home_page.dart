import 'package:flutter/material.dart';
import 'package:first_wtf_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MediCall"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
            TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
            ),
      )
        ],
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16, vertical: 4,),
            child: TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 117, 119, 126),
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: "Search hospital or address",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
          ),
          // Widget for showing image
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "assets/map.png", 
              width: MediaQuery.sizeOf(context).width * 0.8, 
              height: MediaQuery.sizeOf(context).height * 0.8,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

