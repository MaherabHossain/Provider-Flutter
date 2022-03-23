import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/Data.dart';
import 'package:test_app/School.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => Data(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              providerData.count.toString(),
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                providerData.increment();
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => School()),
                );
              },
              child: Text('Go to School Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
