import 'dart:ui';

import 'package:app_convertion_currency/app/components/currency_box.dart';
import 'package:app_convertion_currency/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  HomeController homeController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 200, right: 20, left: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      CurrencyBox(
                        selected: homeController.toCurrency,
                        controller: toText,
                        items: homeController.currencies,
                        onChanged: (model) {
                          setState(() {
                            homeController.toCurrency = model;
                          });
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CurrencyBox(
                        selected: homeController.fromCurrency,
                        controller: fromText,
                        items: homeController.currencies,
                        onChanged: (model) {
                          setState(() {
                            homeController.fromCurrency = model;
                          });
                        },
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  onPressed: () => {
                    homeController.convert(),
                  },
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
