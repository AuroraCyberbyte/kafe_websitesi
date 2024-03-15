import 'package:catcake/widget/product.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Kahve extends StatelessWidget {
  const Kahve({super.key});

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
                  image: "assets/patikahve.jpg",
                  name: "pati desenli mocha - 115 TL",
                ),
                Product(
                  image: "assets/kedidesenlilatte.jpg",
                  name: "kedi desenli latte - 100 TL",
                ),
                Product(
                  image: "assets/sıcakespresso.jpg",
                  name: "sıcak espresso - 70 TL",
                ),

                Product(
                  image: "assets/soğukmocha.jpg",
                  name: "soğuk mocha - 90 TL",
                ),
                Product(
                  image: "assets/soğuklatte.jpg",
                  name: "soğuk latte - 80 TL",
                ),
                Product(
                  image: "assets/soğukespresso.jpg",
                  name: "soğuk espresso - 70 TL",
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
