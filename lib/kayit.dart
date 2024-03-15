import 'package:catcake/giris.dart';
import 'package:cosmos/cosmos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kayit extends StatefulWidget {
  const Kayit({super.key});

  @override
  State<Kayit> createState() => _GirisState();
}

class _GirisState extends State<Kayit> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
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
                "kayıt ol",
                style: GoogleFonts.concertOne(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: SizedBox(
                  width: 500,
                  child: CosmosTextBox(
                    "e-mail",
                    controller: email,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: 500,
                  child: CosmosTextBox(
                    "parola",
                    controller: password,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 500,
                child: CosmosTextBox(
                  "parola tekrar",
                  controller: confirmPassword,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {
                  if (email.text.contains("@gmail.com")) {
                    if (password.text != "") {
                      if (password.text == confirmPassword.text) {
                        CosmosFirebase.signUp(
                          email: email.text,
                          password: password.text,
                          userDatas: [],
                          trError: true,
                          onError: (error) {
                            CosmosAlert.showIOSStyleAlert(
                                context, "hata", error);
                          },
                          onSuccess: () {
                            CosmosAlert.showIOSStyleAlert(
                                    context, "başarılı", "kayıt olundu")
                                .then(
                              (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Giris(),
                                ),
                              ),
                            );
                          },
                        );
                      } else {
                        CosmosAlert.showIOSStyleAlert(
                            context, "hata", "parolalar eşleşmiyor");
                      }
                    } else {
                      CosmosAlert.showIOSStyleAlert(
                          context, "hata", "lütfen parola giriniz");
                    }
                  } else {
                    CosmosAlert.showIOSStyleAlert(
                        context, "hata", "e-mail hatalı");
                  }
                },
                child: Text(
                  "kayıt ol",
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
                    "Hesabın var mı?",
                    style: GoogleFonts.concertOne(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Giris(),
                        ),
                      );
                    },
                    child: Text(
                      "giriş yap",
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
