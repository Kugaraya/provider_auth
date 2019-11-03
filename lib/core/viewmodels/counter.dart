import 'package:provider_auth/core/models/counter.dart';
import 'package:provider_auth/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterViewModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      builder: (context) => locator<Counter>(),
      child: Consumer<Counter>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("Counter"),
          ),
          body: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text("Interact with the FloatingActionButtons!"),
                  Text("${model.getCounter()}", style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold)),
                ],
              )
            )
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FloatingActionButton(
                onPressed: model.increment,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: model.decrement,
                tooltip: 'Increment',
                child: Icon(Icons.remove),
              )
            ],
          ),
        ),
      ),
    );
  }
}