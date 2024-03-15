import 'package:catcake/widget/product.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';

class Macaron extends StatelessWidget {
  const Macaron({super.key});

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
                  image: "assets/56307d36c7d6961520bc018271c6d503.jpg",
                  name: "renkli macaron kutusu(12 adet) - 180 TL",
                ),
                Product(
                  image: "assets/kalpmacaron.jpg",
                  name: "kırmızı kalp macaron (1 adet) - 30 TL",
                ),
                Product(
                  image: "assets/pembekalpmacaron.jpg",
                  name: "pembe kalp macaron(1 adet) - 30 TL",
                ),
                Product(
                  image: "assets/4f16e3fed179c742104e9f57d849b195.jpg",
                  name: "desenli, beyaz-kırmızı macaron kutusu - 400 TL",
                ),
                Product(
                  image: "assets/588e4de3f1cc2c8cbf8b996b0745799c.jpg",
                  name: "desenli, beyaz-pembe macaron kutusu - 400 TL",
                ),
                Product(
                  image: "assets/6b69ef596a19a99721dbfb39943d5661.jpg",
                  name: "smile sarı macaron(1 adet) - 30 TL",
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
