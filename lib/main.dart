import 'package:provider_auth/ui/router.dart';
import 'package:provider_auth/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  // Initializing Locator used services and models
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.suspending:
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'provider_auth',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent
      ),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
