
import 'package:flutter/material.dart';

class SocialSignIn extends StatelessWidget {
  const SocialSignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 8,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Divider()),
            Text("Sign in with"),
            Expanded(child: Divider()),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/google.png",
                width: 50,
                height: 50,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/fb.png",
                width: 50,
                height: 50,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset("assets/x.png", width: 50, height: 50),
            ),
          ],
        ),
      ],
    );
  }
}
