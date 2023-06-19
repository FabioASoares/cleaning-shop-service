import 'package:flutter/material.dart';

import '../components/card_image_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 227, 227),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Bom dia, Izilda",
                style: TextStyle(fontSize: 22),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomCardButton(imageName: 'assets/images/lista-produtos.png', imageHeight: 100, imageWidth: 150, buttonName: "Lista de Produtos", onTap: (){},),),
                  const Padding(padding: EdgeInsets.only(left: 10),),
                  Expanded(flex: 1, child: CustomCardButton(imageName: 'assets/images/lista-clientes.png', imageWidth: 120, buttonName: "Lista de Produtos", onTap: (){})),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10),),
              Row(
                children: [
                  Expanded(flex: 1, child: CustomCardButton(imageName: 'assets/images/vender-produto.png', imageHeight: 200, imageWidth: 120, buttonName: "Lista de Produtos", onTap: (){})),
                  const Padding(padding: EdgeInsets.only(left: 10),),
                  Expanded(flex: 1, child: CustomCardButton(imageName: 'assets/images/lista-fornecedores.png', buttonName: "Lista de Produtos", onTap: (){})),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}