import 'package:flutter/material.dart';
import 'package:interact_slides/showcase/inherited/inherited_counter.dart';

class FirstRoute extends StatelessWidget {
  FirstRoute() : super();

  @override
  Widget build(BuildContext context) {
    final _counter = InheritedProvider.of(context).value;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Text('First Route')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Counter value: $_counter'),
            RaisedButton(
              child: Text('Open second route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter(BuildContext context) {
    var appState = InheritedProvider.of(context);
    appState.value += 1;
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = InheritedProvider.of(context).value;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Text("Second Route")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Counter value: $_counter'),
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _decrement(context),
        child: Icon(Icons.remove),
      ),
    );
  }

  _decrement(BuildContext context) {
    var appState = InheritedProvider.of(context);
    appState.value -= 1;
  }
}
