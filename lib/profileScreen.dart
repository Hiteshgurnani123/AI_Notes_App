import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage("http://via.placeholder.com/150"),
          ),
          SizedBox(height: 10),
          Text(
            "User Name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text("User@example.com"),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                //TODO: implement logout
              },
              child: Text("Logout"))
        ],
      )),
    );
  }
}

// Rotation Animation
class RotationPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;
  RotationPageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return RotationTransition(
              turns: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
              child: child,
            );
          },
        );
}
