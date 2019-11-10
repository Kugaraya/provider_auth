import 'package:flutter/material.dart';
import 'package:provider_auth/core/viewmodels/login.dart';
import 'package:provider_auth/core/viewmodels/register.dart';
import 'package:provider_auth/locator.dart';

class AuthView extends StatefulWidget {
  AuthView({Key key}) : super(key : key);
  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController _tabController;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    setupLocator();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        appBar: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).accentColor,
          indicatorColor: Theme.of(context).primaryColor,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.person_pin),
              text: "Login",
            ),
            Tab(
              icon: Icon(Icons.note_add),
              text: "Register"
            )
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            LoginViewModel(),
            RegisterViewModel()
          ],
        )
      ),
    );
  }
}