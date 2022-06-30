import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var isAppInitialised = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('TikTakToe'),
            ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')),
            OutlinedButton(onPressed: (){}, child: Text('OutlinedButton')),
            TextButton(onPressed: (){}, child: Text('TextButton')),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Surface'),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                errorText: 'required field'
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.search),
      ),
    );
  }
}