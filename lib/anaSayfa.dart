import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_one/renkler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Haunted_Dreams,
      appBar: AppBar(
        title: const Text(
          "Hoşgeldiniz",
        ),
        backgroundColor: Majorelle_Blue,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://static.vecteezy.com/system/resources/previews/014/216/496/original/3d-credit-card-icon-for-contactless-payments-online-payment-concept-3d-render-illustration-png.png"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Bilgiledirme(bilgi: "EFT"),
                Bilgiledirme(bilgi: "Havale"),
                Bilgiledirme(bilgi: "Fatura Ödeme"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Bankamızın müşterisi olmak için 'DEVAM ET' e tıklayınız.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Nauseous_Blue),
                ),
                child: const Text("DEVAM ET"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Bilgiledirme extends StatelessWidget {
  final String bilgi;

  const Bilgiledirme({required this.bilgi, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Nauseous_Blue,
        child: TextButton(
            onPressed: () {},
            child: Text(
              bilgi,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ),
    );
  }
}
