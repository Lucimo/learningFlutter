import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  int position;
  DetailScreen({this.position});


  @override
  _DetailScreenState createState() => _DetailScreenState(position);
}

class _DetailScreenState extends State<DetailScreen> {
  int position;
  _DetailScreenState(int position){
    this.position = position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Detail"),
    ),
      body:
      Text("$position"),
    );}}
