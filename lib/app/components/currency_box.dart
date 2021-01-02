import 'package:app_convertion_currency/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  
  final CurrencyModel selected;
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox({Key key, this.items, this.controller, this.onChanged, this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 66.0,
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Colors.blueAccent,
              isExpanded: true,
              value: selected,
              underline: Container(
                height: 1,
                color: Colors.blueAccent,
              ),
              items: items
                  .map((e) => DropdownMenuItem(value: e, child: Text(e.nome)))
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
                //color for TextField FocusBorder
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent))),
          ),
        ),
      ],
    );
  }
}
