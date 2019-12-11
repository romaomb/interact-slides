import 'package:flutter/material.dart';

class AppState extends ValueNotifier {
  AppState(value) : super(value);
}

class InheritedProvider extends StatefulWidget {
  const InheritedProvider({this.data, this.child});

  static of(BuildContext context) {
    _InheritedProvider p = context.dependOnInheritedWidgetOfExactType<_InheritedProvider>();
    return p.data;
  }

  final data;
  final child;

  @override
  State<StatefulWidget> createState() => _InheritedProviderState();
}

class _InheritedProviderState extends State<InheritedProvider> {
  @override
  initState() {
    super.initState();
    widget.data.addListener(didValueChange);
  }

  didValueChange() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return _InheritedProvider(
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
  _InheritedProvider({
    this.data,
    this.child,
  })  : _dataValue = data.value,
        super(child: child);

  final data;
  final child;
  final _dataValue;

  @override
  bool updateShouldNotify(_InheritedProvider oldWidget) {
    return _dataValue != oldWidget._dataValue;
  }
}
