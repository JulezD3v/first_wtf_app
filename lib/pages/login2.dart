import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              "Register your details below",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "Email",
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "Password",
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: Text("Login")),

            SizedBox(height: 56),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                VerticalDivider(
                  color: Colors.black,
                  width: 5,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
                Text("Sign up with", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                VerticalDivider(
                  color: Colors.black,
                  width: 5,
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)
                  
                  ),
                  child: Icon(FontAwesomeIcons.facebook, size: 32, color: Colors.blue),
                ),
                
                SizedBox(width: 16),
                Icon(
                  FontAwesomeIcons.instagram,
                  size: 32,
                  color: Colors.redAccent,
                ),
                SizedBox(width: 16),
                Icon(FontAwesomeIcons.linkedin, size: 32, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 