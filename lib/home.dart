import 'package:catcake/cheescake.dart';
import 'package:catcake/kahve.dart';
import 'package:catcake/kurabiye.dart';
import 'package:catcake/macaron.dart';
import 'package:catcake/milkshake.dart';
import 'package:catcake/pasta.dart';
import 'package:catcake/sepet.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CosmosBackgroundImage(
        opacity: 0.3,
        image: "assets/bg.jpg",
        child: CosmosBody(
          scrollDirection: Axis.vertical,
          scrollable: true,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    CosmosAlert.showCustomAlert(
                      context,
                      SizedBox(
                        width: width(context),
                        height: height(context),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: height(context),
                                  width: 300,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 160, 184),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Sepet(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "sepetim",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Kahve(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "kahve",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Pasta(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "pasta",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Macaron(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "macaron",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Kurabiye(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "kurabiye",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Cheescake(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "cheescake",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 23,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Milkshake(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "milkshake",
                                            style: GoogleFonts.concertOne(
                                              color: Colors.white,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Icon(
                          Icons.pets,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 3,
                        ),
                        child: Text(
                          "menü",
                          style: GoogleFonts.kanit(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "catcake",
                  style: GoogleFonts.concertOne(
                    color: Colors.white,
                    fontSize: 53,
                  ),
                ),
              ),
            ),
            Text(
              "Bu kafede özenle hazırlanmış tatlılarınızı yerken ve kahvenizi yudumlarken pati dostlarımız size eşlik ediyor!",
              style: GoogleFonts.concertOne(
                color: Colors.white.withOpacity(
                  0.8,
                ),
                fontSize: 16,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
                bottom: 10,
              ),
              child: CosmosImage(
                "assets/patikahve.jpg",
                width: 500,
                height: 500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: CosmosImage(
                "assets/pembekalpmacaron.jpg",
                width: 500,
                height: 500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: CosmosImage(
                "assets/kedikurabiye.jpg",
                width: 500,
                height: 500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: CosmosImage(
                "assets/7725cee7d0faa9cc1b0548755dc816bd.jpg",
                width: 500,
                height: 500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: CosmosImage(
                "assets/6b69ef596a19a99721dbfb39943d5661.jpg",
                width: 500,
                height: 500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(
                10,
              ),
              child: CosmosImage(
                "assets/56307d36c7d6961520bc018271c6d503.jpg",
                width: 500,
                height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
