import 'package:provider_auth/core/models/counter.dart';
import 'package:provider/provider.dart';
import 'package:provider_auth/locator.dart';
import 'package:flutter/material.dart';

class CounterViewModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      builder: (context) => locator<Counter>(),
      child: Consumer<Counter>(
        builder: (context, model, child) => Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Interact with the FloatingActionButtons!"),
                  Text("${model.getCounter()}", style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                heroTag: null,
                onPressed: model.increment,
                child: Icon(Icons.add),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                heroTag: null,
                onPressed: model.decrement,
                child: Icon(Icons.remove),
              )
            ],
          ),
        )
      )
    );
  }
}