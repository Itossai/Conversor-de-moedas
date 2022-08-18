import 'package:conversor_de_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';

class Currency_Box extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;

  const Currency_Box(
      {Key? key,
      required this.items,
      required this.controller,
      this.onChanged,
      required this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 57,
                child: DropdownButton<CurrencyModel>(
                    value: selectedItem,
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    items: items
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.name)))
                        .toList(),
                    onChanged: onChanged),
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 2,
              child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber))))),
        ],
      ),
    );
  }
}
