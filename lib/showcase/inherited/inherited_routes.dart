import 'package:flutter/material.dart';
import 'package:interact_slides/showcase/inherited/test.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of(context).value;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Text('First Route')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Counter value: $counter}'),
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
        onPressed: counter.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of(context).counter;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Text("Second Route")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Counter value: $counter'),
            RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go back!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.decrement,
        child: Icon(Icons.remove),
      ),
    );
  }
}
