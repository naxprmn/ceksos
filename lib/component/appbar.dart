import 'package:ceksos/utils/name.dart';
import 'package:flutter/material.dart';

class AppbarTop extends StatelessWidget {
  final double opacity;
  final double width;
  const AppbarTop({Key? key, required this.width, required this.opacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).bottomAppBarColor.withOpacity(opacity),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const Text(title),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Discover',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: width / 20),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              width: width / 50,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
