class CurrencyModel {
  final String nome;
  final double real;
  final double dolar;
  final double euro;
  //final double kwanza;

  CurrencyModel({this.nome, this.real, this.dolar, this.euro});

  //Lista de Model com 3 tipos(real/dolar/euro) de modelos ja mapeado com os seus correspondentes valores!
  static List<CurrencyModel> getcurrencies() {
    return <CurrencyModel>[
      CurrencyModel(nome: "Real", real: 1.0, dolar: 0.18, euro: 0.15),
      CurrencyModel(nome: "Dolar", real: 5.56, dolar: 1.0, euro: 0.85),
      CurrencyModel(nome: "Euro", real: 6.62, dolar: 1.17, euro: 1.0),
    ];
  }
}
