import 'package:catcake/widget/product.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Pasta extends StatelessWidget {
  const Pasta({super.key});

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
                  image: "assets/6b74075dbdc699fb96ecc8f731e58300.jpg",
                  name: "'happy birthday my love' kalp pasta - 600 TL",
                ),
                Product(
                  image: "assets/10e13f69ee1834226b85b033b6ea3e04.jpg",
                  name: "happy birthday, papatyalı, mor pasta - 600 TL",
                ),
                Product(
                  image: "assets/7725cee7d0faa9cc1b0548755dc816bd.jpg",
                  name: "papatyalı renkli pasta - 500 TL",
                ),

                Product(
                  image: "assets/eda0935885669fc61b487efa6c86ce30.jpg",
                  name: "temalı pasta(özelleştirilebilir) - 700 TL",
                ),
                Product(
                  image: "assets/çikolatalıpasta.jpg",
                  name: "çikolatalı pasta - 400 TL",
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
