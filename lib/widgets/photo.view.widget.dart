import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class PhotoViewWidget extends StatelessWidget {
  const PhotoViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "صفة العمرة",
              textDirection: TextDirection.rtl,
            )),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 300.0,
          child: PhotoView(
            imageProvider: AssetImage("assets/images/saftel3mora2.jpg"),
            backgroundDecoration: BoxDecoration(
            ),
            heroAttributes: PhotoViewHeroAttributes(tag: 'image_zoom'), // Optional
          ),
        ),
      ),
    );
  }
}
