import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Clipercontaner extends StatelessWidget {
  const Clipercontaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipPath(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Mycliper extends CustomClipper {
  @override
  getClip(Size size) {
    var path = Path()
      ..lineTo(0, size.width)
      ..lineTo(size.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    throw UnimplementedError();
  }
}
