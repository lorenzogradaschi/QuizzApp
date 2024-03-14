import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Set HomeScreen as the home widget
      routes: {
        '/myHomePage': (context) => const MyHomePage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset("assets/images/quiz-logo.png"), // Your image
            const SizedBox(height: 50),
            const Text(
              "Welcome to the Flutter quiz",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "Here is the introduction of the App",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "Developed By Gradaschi Lorenzo",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              icon: Icon(Icons.arrow_right_alt, color: Colors.black),
              label: Text("QUIZ APP", style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/myHomePage');
              },
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.black,
              ),
              label: const Text(
                "Review App",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero)),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Welcome to MyHomePage"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
