import 'package:flutter/material.dart';

import '../components/card_image_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
          child: Column(
            children: [
              const Text(
                "Bom dia, Izilda",
                style: TextStyle(fontSize: 22),
              ),
              CustomCardButton(imageName: 'assets/images/lista-produtos.png', buttonName: "Lista de Produtos", onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}