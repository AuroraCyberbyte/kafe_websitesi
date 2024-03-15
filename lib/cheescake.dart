import 'package:catcake/widget/product.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Cheescake extends StatelessWidget {
  const Cheescake({super.key});

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
                  image: "assets/448a179b6d41ee5393187430c7ae611d.jpg",
                  name: "frambuazlı cheescake - 150 TL",
                ),
                Product(
                  image: "assets/6fe1c5185ac0cb278416a3c6ad36fb3c.jpg",
                  name: "meyveli cheescake - 150 TL",
                ),
                Product(
                  image: "assets/803560020f0f772bb12862e1eb2f50c0.jpg",
                  name: "vişneli cheescake - 150",
                ),
                Product(
                  image: "assets/çikolatalıcheescake.jpg",
                  name: "çikolatalı cheescake - 150 TL",
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
