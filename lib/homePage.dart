import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/pageTwo.dart';
import 'package:providerdemo/provider/provider_one.dart';
import 'package:providerdemo/provider/provider_two.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var one = context.watch<ProviderOne>().counter;
    print("State Rebuild");
    var two = context.watch<ProviderTwo>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "P-One: $one ** P-Two:  ${two.counter}",
              style: Theme.of(context).textTheme.headline5,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageTwo(),
                  ),
                );
              },
              child: Text("Move"),
            ),
            Text(
              "SetState Value: $_counter",
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementCounter();
          context.read<ProviderOne>().incrementCounter();
          Provider.of<ProviderTwo>(context, listen: false).incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
