import 'package:flutter/material.dart';
import 'package:tempo_template/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/clima.jpg'), //Coloquei a imagem clima para decorar somente, pois as outras passadas pelo professor ainda estao em images!
            fit: BoxFit.cover,                     // basta somente alterar o campo `image`
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: null,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Obter Previsão',
                  style: kButtonTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
