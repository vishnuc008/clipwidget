import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MaterialApp(home: clippp(),));
}
class clippp extends StatefulWidget{
  @override
  State<clippp> createState() => _clipppState();
}

class _clipppState extends State<clippp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ClipPath(
             clipper: TsClip2(),
            // child: Container(
              // width: double.infinity,
               //height: 500,
               child: Image.asset("assets/images/cute-swag-polar-bear-with-hat-gold-chain-necklace-cartoon-illustration-flat-cartoon-style_138676-2719.webp"),
               
             //),
           ),
          ),
        ),
      );
  }
}
class TsClip2 extends CustomClipper<Path> {    //custom clipper extends class rect
   @override
   Path getClip(Size size) {        //getclip method takes the size of chld
     Path path = Path();
    path.lineTo(size.width/2, size.height);
    path.lineTo(size.width,0); 
    
  
     return path;

   }
@override
   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
     return true;
   }
 }