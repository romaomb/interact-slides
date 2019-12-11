import 'package:flutter/material.dart';

class AppState extends ValueNotifier {
  AppState(value) : super(value);
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var _counter = Provider.of(context).value;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => _incrementCounter(context),
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }

  _incrementCounter(context) {
    var appState = Provider.of(context);
    appState.value += 1;
  }
}

class Provider extends StatefulWidget {
  const Provider({this.data, this.child});

  static of(BuildContext context) {
    _InheritedProvider p =
    context.inheritFromWidgetOfExactType(_InheritedProvider);
    return p.data;
  }

  final data;
  final child;

  @override
  State<StatefulWidget> createState() => new _ProviderState();
}

class _ProviderState extends State<Provider> {
  @override
  initState() {
    super.initState();
    widget.data.addListener(didValueChange);
  }

  didValueChange() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return new _InheritedProvider(
      data: widget.data,
      child: widget.child,
    );
  }

  @override
  dispose() {
    widget.data.removeListener(didValueChange);
    super.dispose();
  }
}

class _InheritedProvider extends InheritedWidget {
  _InheritedProvider({this.data, this.child})
      : _dataValue = data.value,
        super(child: child);
  final data;
  final child;
  final _dataValue;

  @override
  bool updateShouldNotify(_InheritedProvider oldWidget) {
    return _dataValue != oldWidget._dataValue;
  }
}