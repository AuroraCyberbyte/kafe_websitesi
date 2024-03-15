import 'package:catcake/widget/product.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Kurabiye extends StatelessWidget {
  const Kurabiye({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: CosmosBackgroundImage(
        opacity: 0.3,
        image: "assets/bg.jpg",
        child: CosmosBody(
          scrollable: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Product(
                  image: "assets/kedikurabiye.jpg",
                  name: "kedi kurabiye(1 adet) - 25 TL",
                ),
                Product(
                  image: "assets/kırmızıkalpkurabiye.jpg",
                  name: "kırmızı kalpli kurabiye - 25 TL",
                ),
                Product(
                  image: "assets/beyazkalpkırmızıkurabiye.jpg",
                  name: "beyaz kalpli kırmızı kurabiye - 40 TL",
                ),
                Product(
                  image: "assets/ayıcıklıkurabiye.jpg",
                  name: "ayıcıklı, çilekli kalp kurabiye - 80 TL",
                ),
                Product(
                  image: "assets/çikolatalıcookie.jpg",
                  name: "çikolatalı cookie - 70 TL",
                ),

                //image + isim, fiyat
              ],
            )
          ],
        ),
      ),
    );
  }
}
