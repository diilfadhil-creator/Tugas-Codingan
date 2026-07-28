import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShowimageDay10 extends StatefulWidget {
  const ShowimageDay10({super.key});

  @override
  State<ShowimageDay10> createState() => _ShowimageDay10State();
}

class _ShowimageDay10State extends State<ShowimageDay10> {
  bool showImage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image day 10"),
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/jogja.jpg", height: 100),
          SizedBox(width: 10, height: 20),
          showImage
              ? Image.network(
                  "https://static.wikia.nocookie.net/ideas/images/a/a2/Windah_Basudara.jpg/revision/latest?cb=20230725045444",
                  height: 200,
                )
              : Shimmer(
                  child: Container(color: Colors.blue, height: 200, width: 200),
                ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: showImage ? Colors.black : Colors.red,
            ),
            onPressed: () {
              setState(() {});
              showImage = !showImage;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    !showImage
                        ? 'Gambar disembunyikan'
                        : 'Gambar disembunyikan',
                  ),
                ),
              );
            },
            child: Text(showImage ? "sembunyikan " : "tampilkan"),
          ),
        ],
      ),
    );
  }
}
