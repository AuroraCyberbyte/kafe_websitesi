import 'package:catcake/widget/product.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Milkshake extends StatelessWidget {
  const Milkshake({super.key});

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
                  image: "assets/çikolatalımilkshake.jpg",
                  name: "çikolatalı milkshake - 90 TL",
                ),
                Product(
                  image: "assets/çileklimilkshake.jpg",
                  name: "çilekli milkshake - 90 TL",
                ),
                Product(
                  image: "assets/muzlumilkshake.jpg",
                  name: "muzlu milkshake - 90 TL",
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
