import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  final String image;
  final String name;
  const Product({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: CosmosImage(
                image,
                width: 400,
                height: 400,
              ),
            ),
          ),
          Center(
            child: Text(
              name,
              style: GoogleFonts.concertOne(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
          ),
          Center(
            child: IconButton(
              onPressed: () async {
                String uid = await CosmosFirebase.getUID();
                await CosmosFirebase.add(
                  reference: "siparis",
                  tag: CosmosRandom.randomTag(),
                  value: [
                    uid,
                    image,
                    name,
                    CosmosTime.getNowTimeString(),
                    "1",
                  ],
                );
              },
              icon: Text(
                "sepete ekle",
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
