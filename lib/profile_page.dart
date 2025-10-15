import 'package:first_wtf_app/notifications_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("profile page"),);
  }

  Widget _buildProfilePics() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      clipBehavior: Clip.hardEdge,
      child: Image.asset("assets/profile_pics.jpg", width: 100, height: 100),
    );
  }

  Widget _buildDetails() {
    return Column(
      children: [
        Text(
          "Hannah Micheal",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        Text(
          "hannahmail@gnail.com",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
        ),
      ],
    );
  }
}
