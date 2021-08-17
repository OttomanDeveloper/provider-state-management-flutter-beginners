import 'package:flutter/material.dart';
import 'package:providerdemo/homePage.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Page 2",
              style: Theme.of(context).textTheme.headline3,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyHomePage(
                      title: "Flutter Demo",
                    ),
                  ),
                );
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
