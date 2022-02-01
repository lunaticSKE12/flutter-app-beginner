import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child:
              // Image.asset(
              //   'assets/images/260282250_331057381690171_8728174700271994000_n.jpg',
              ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              'https://images.pexels.com/photos/10800242/pexels-photo-10800242.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
        )
        // CircleAvatar(
        //     radius: 250,
        //     backgroundImage: NetworkImage(
        //         'https://images.pexels.com/photos/10800242/pexels-photo-10800242.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260')
        //     // AssetImage(
        //     //     'assets/images/260282250_331057381690171_8728174700271994000_n.jpg'),

        //     )
      ],
    ));
  }
}
