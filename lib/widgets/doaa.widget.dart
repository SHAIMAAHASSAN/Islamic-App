import 'package:flutter/material.dart';
class DoaaWidget extends StatelessWidget {
  const DoaaWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        // height: 250,
        decoration: BoxDecoration(
          color: Colors.brown[50],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(text, style: TextStyle(color: Colors.black,fontSize: 16),),
              ),


            ],
          ),
        ),

      ),
    );
  }
}