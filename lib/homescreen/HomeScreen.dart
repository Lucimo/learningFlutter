import 'package:first_flutter_projectv2/DetailScreen.dart';
import 'package:first_flutter_projectv2/homescreen/HomePresenter.dart';
import 'package:first_flutter_projectv2/homescreen/HomeView.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeView {
  HomePresenter _homePresenter;

  _HomeScreenState() {
    _homePresenter = HomePresenter(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, position) {
            return ListTile(
              leading: Icon(Icons.hourglass_full),
              title: Text("Element $position"),
              subtitle: Text("Subtitle $position"),

              onTap: () {

                // _homePresenter.launchURL();
                _homePresenter.onClickElement(position);
              },
            );
          },
          itemCount: 21),
    );
  }

  @override
  detailScreen(position) {
    Navigator.of(context).push(MaterialPageRoute(builder: (c) {
      return DetailScreen(
        position: position,
      );
    }));
  }
}
