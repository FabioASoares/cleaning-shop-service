import 'package:flutter/material.dart';

import '../clientes/clientes_page.dart';
import '../components/card_image_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 232, 247),
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
                  Expanded(
                    flex: 1, 
                    child: CustomCardButton(
                      imageName: 'assets/images/lista-produtos.png', 
                      imageHeight: 100, 
                      imageWidth: 150, 
                      buttonName: "Meus Produtos", 
                      onTap: (){
                          
                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10),),
                  Expanded(
                    flex: 1, 
                    child: CustomCardButton(
                      imageName: 'assets/images/lista-clientes.png', 
                      imageWidth: 120, 
                      buttonName: "Meus Clientes", 
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => ClientesPage(),
                            ),
                          );
                      },
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10),),
              Row(
                children: [
                  Expanded(
                    flex: 1, 
                    child: CustomCardButton(
                      imageName: 'assets/images/vender-produto.png', 
                      imageHeight: 200, 
                      imageWidth: 120, 
                      buttonName: "Vender", 
                      onTap: (){

                      },
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10),),
                  Expanded(
                    flex: 1, 
                    child: CustomCardButton(
                      imageName: 'assets/images/lista-fornecedores.png', 
                      imageHeight: 200, 
                      imageWidth: 120, 
                      buttonName: "Fornecedores", 
                      onTap: (){

                      },
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Card(
                elevation: 4,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ultimas vendas", style: TextStyle(fontSize: 16),),
                          Divider(thickness: 1,)
                        ],
                      ),
                    ),
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