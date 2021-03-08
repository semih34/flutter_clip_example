import 'package:flutter/material.dart';
import 'package:flutter_clip_example/widgets/customRadius.dart';
import 'package:flutter_clip_example/widgets/mountainDescent.dart';
import 'package:flutter_clip_example/widgets/oval.dart';
import 'package:flutter_clip_example/widgets/seaWave.dart';
import 'package:flutter_clip_example/widgets/square.dart';
import 'package:flutter_clip_example/widgets/triangle.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        children: [
          Square(),
          Oval(),
          CustomRadius(),
          Triangle(),
          MountainDescent(),
          SeeWave(),
        ],
      ),
    );
  }
}
