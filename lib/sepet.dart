import 'package:catcake/home.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sepet extends StatefulWidget {
  const Sepet({super.key});

  @override
  State<Sepet> createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  List<Widget> siparisler = [];
  getData() async {
    List getSiparis = await CosmosFirebase.getOnce("siparis");
    for (var element in getSiparis) {
      siparisler.add(
        siparis(
            element[1], element[2], element[4], element[element.length - 1]),
      );
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CosmosBackgroundImage(
        image: "assets/bg.jpg",
        child: CosmosBody(
          scrollable: true,
          scrollDirection: Axis.vertical,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: Text(
                "catcake",
                style: GoogleFonts.concertOne(
                  color: Colors.white.withOpacity(0.4),
                  fontSize: 55,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "sepetim",
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: Container(
                width: 190,
                height: 0.5,
                color: Colors.white,
              ),
            ),
            Column(
              children: siparisler,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "sepeti onayla",
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row siparis(
    String image,
    String text,
    String count,
    String productId,
  ) {
    //toplam fiyat artır
    String currentPrice = "0";
    double singlePrice = double.parse(
        text.split("-")[1].replaceAll(" ", "").replaceAll("TL", ""));
    singlePrice = singlePrice * int.parse(count);
    currentPrice = singlePrice.toString();
    //toplam fiyat artır
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                top: 100,
              ),
              child: CosmosImage(image),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                text,
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, top: 100),
          child: Container(
            color: Colors.white.withOpacity(0.1),
            width: 100,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () async {
                    List dataList =
                        await CosmosFirebase.get('siparis/$productId', true);
                    int simdikiSayi = int.parse(dataList[4]);
                    simdikiSayi = simdikiSayi - 1;
                    dataList[4] = simdikiSayi.toString();
                    await CosmosFirebase.add(
                        reference: "siparis",
                        tag: productId.replaceAll('"', ""),
                        value: dataList);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Sepet(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                Text(
                  count,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    List dataList =
                        await CosmosFirebase.get('siparis/$productId', true);
                    int simdikiSayi = int.parse(dataList[4]);
                    simdikiSayi = simdikiSayi + 1;
                    dataList[4] = simdikiSayi.toString();
                    await CosmosFirebase.add(
                        reference: "siparis",
                        tag: productId.replaceAll('"', ""),
                        value: dataList);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Sepet(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
          child: Text(
            "$currentPrice ₺",
            style: GoogleFonts.concertOne(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: IconButton(
            onPressed: () {
              CosmosFirebase.deleteData('siparis/$productId');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Sepet(),
                ),
              );
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
