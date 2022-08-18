import 'package:conversor_de_moedas/controler/home_controler.dart';
import 'package:conversor_de_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeControler = HomeControler(toText, fromText);
  test("deve converter de real para dolar", () {
    toText.text = "2.0";
    homeControler.converter();
    expect(fromText.text, "0.36");
  });
  test("deve converter de dolar para real", () {
    toText.text = "1.0";
    homeControler.toCurrency =
        CurrencyModel("Dolar", 5.65, 1.0, 0.85, 0.000088);
    homeControler.fromCurrency =
        CurrencyModel("Real", 1.0, 0.18, 0.15, 0.000016);
    homeControler.converter();
    expect(fromText.text, "5.65");
  });
}
//Eu consigo voar!