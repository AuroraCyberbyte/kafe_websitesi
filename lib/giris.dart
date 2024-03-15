import 'package:catcake/home.dart';
import 'package:catcake/kayit.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Giris extends StatefulWidget {
  const Giris({super.key});

  @override
  State<Giris> createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CosmosBackgroundImage(
        opacity: 0.3,
        image: "assets/bg.jpg",
        child: Center(
          child: CosmosBody(
            scrollable: true,
            scrollDirection: Axis.vertical,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 2,
                  ),
                  child: Text(
                    "welcome to catcake!",
                    style: GoogleFonts.concertOne(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Text(
                "giriş yap",
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: SizedBox(
                  width: 500,
                  child: CosmosTextBox(
                    "e-mail",
                    controller: email,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 500,
                child: CosmosTextBox(
                  "parola",
                  controller: password,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  if (email.text.contains("@gmail.com")) {
                    if (password.text != "") {
                      CosmosFirebase.signIn(
                        email: email.text,
                        password: password.text,
                        trError: true,
                        onError: (error) {
                          CosmosAlert.showIOSStyleAlert(context, "hata", error);
                        },
                        onSuccess: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                      );
                    } else {
                      CosmosAlert.showIOSStyleAlert(
                          context, "hata", "lütfen şifrenizi giriniz");
                    }
                  } else {
                    CosmosAlert.showIOSStyleAlert(
                        context, "hata", "e-mail adresinizi yanlış girdiniz");
                  }
                },
                child: Text(
                  "giriş yap",
                  style: GoogleFonts.concertOne(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hesabın yok mu?",
                    style: GoogleFonts.concertOne(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Kayit(),
                        ),
                      );
                    },
                    child: Text(
                      "hesap oluştur",
                      style: GoogleFonts.concertOne(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
