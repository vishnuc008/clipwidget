import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: clipp(),));
}
class clipp extends StatefulWidget{
  @override
  State<clipp> createState() => _clippState();
}

class _clippState extends State<clipp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 8000,
          child: Column(
            children: [const Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: ClipRect(child: Align(alignment:Alignment.center,
                widthFactor: 0.9,
                heightFactor: 0.5,
                child: Image.asset("assets/images/weUBy7rzRE.jpg"),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: ClipRRect(borderRadius: const BorderRadius.only(topLeft:Radius.circular(40),bottomRight: Radius.circular(40)),
                  child: Image.asset("assets/images/weUBy7rzRE.jpg"),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: ClipOval(
                    child: Image.asset("assets/images/weUBy7rzRE.jpg"),
                  ),
                ),
              ),
             ]),
              ),
            )
    );
  }
}
