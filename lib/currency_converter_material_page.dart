import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Currency Converter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style:
                    const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    label: Text('Please enter the amount in USD: '),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              ElevatedButton(
                  onPressed: convert,
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                  child: const Text('Convert'))
            ],
          ),
        ));
  }
}
