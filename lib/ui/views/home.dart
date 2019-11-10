import 'package:flutter/material.dart';
import 'package:provider_auth/core/viewmodels/counter.dart';
import 'package:provider_auth/ui/widgets/menu.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _searchCtrl = TextEditingController();
  bool _activeSearch = false;

  @override
  void initState() { 
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  Widget _search(){
    return TextField(
      controller: _searchCtrl,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), bottomLeft: Radius.circular(32.0))),
        prefixIcon: Icon(Icons.search, color: Colors.blueGrey),
        suffixIcon: IconButton(
          icon: Icon(Icons.cancel, color: Colors.black),
          onPressed: () => setState(() {
            _searchCtrl.clear();
            _activeSearch = false;
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: _scaffoldKey,  
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text("Home"),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        actions: <Widget>[
          _activeSearch ? 
          Container(
            width: MediaQuery.of(context).size.width * 0.60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), bottomLeft: Radius.circular(32.0)),
              color: Colors.white,
            ),
            child: _search()
          ) : IconButton(
            icon: Icon(Icons.search),
            onPressed: () => setState(() => _activeSearch = true),
          )
        ],
      ),
      body: CounterViewModel(),
    );
  }
}