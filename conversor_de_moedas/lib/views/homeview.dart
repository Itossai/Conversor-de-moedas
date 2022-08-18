import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:conversor_de_moedas/controler/home_controler.dart';
import 'package:flutter/material.dart';

class Homeview extends StatefulWidget {
  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  final TextEditingController toText = TextEditingController();
  late HomeControler homeControler;
  final TextEditingController fromText = TextEditingController();
  @override
  void initState() {
    super.initState();
    homeControler = HomeControler(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
          child: Column(
            children: [
              Image.asset("assets/Logo.png", width: 150, height: 150),
              Container(height: 20),
              Currency_Box(
                  selectedItem: homeControler.toCurrency!,
                  items: homeControler.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeControler.toCurrency = model;
                    });
                  },
                  controller: toText),
              Container(height: 10),
              Currency_Box(
                  selectedItem: homeControler.fromCurrency!,
                  items: homeControler.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeControler.fromCurrency = model;
                    });
                  },
                  controller: fromText),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    homeControler.converter();
                  },
                  child: Text("Converter".toUpperCase()),
                  style: ElevatedButton.styleFrom(primary: Colors.grey))
            ],
          ),
        ),
      ),
    );
  }
}
