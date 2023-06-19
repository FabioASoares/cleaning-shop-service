import 'package:flutter/material.dart';

import '../clientes/clientes_page.dart';
import '../components/card_image_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'), // Caminho para a imagem
            fit: BoxFit.cover, // Define como a imagem é ajustada ao plano de fundo
          ),),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 250,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.purple,
                          radius: 18,
                          child: Icon(Icons.person),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Bem vinda de volta,', 
                        style: TextStyle(
                          fontFamily: 'Quicksand', 
                          fontSize: 15, 
                          color: Color.fromARGB(255, 58, 4, 61), 
                          fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Izilda', 
                          style: TextStyle(
                            fontFamily: 'Quicksand', 
                            fontSize: 35, 
                            color: Color.fromARGB(255, 58, 4, 61), 
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 20, 40, 0,),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  width: 220,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [Color.fromARGB(255, 138, 35, 159), Color.fromARGB(255, 71, 4, 85)], // Defina as cores do gradiente
                                      begin: Alignment.topLeft, // Defina o ponto inicial do gradiente
                                      end: Alignment.bottomRight, // Defina o ponto final do gradiente
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Padding(
                                    padding:  EdgeInsets.only(left: 12, top: 8, bottom: 8, right: 12),
                                    child:  Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text('Ganhos de hoje', 
                                            style: TextStyle(
                                              fontFamily: 'Quicksand', 
                                              fontSize: 13,
                                              color: Colors.white
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(thickness: 1, color: Colors.white,),
                                        Expanded(
                                          flex: 1,
                                          child: Text('R\$400,00', 
                                            style: TextStyle(
                                              fontFamily: 'Quicksand', 
                                              fontSize: 16,
                                              color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.only(right: 20)),
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [Color.fromARGB(255, 138, 35, 159), Color.fromARGB(255, 71, 4, 85)], // Defina as cores do gradiente
                                      begin: Alignment.topLeft, // Defina o ponto inicial do gradiente
                                      end: Alignment.bottomRight, // Defina o ponto final do gradiente
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.calendar_today_outlined),
                                    onPressed: (){},
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    Row(
                      children: [
                        Expanded(
                          flex: 1, 
                          child: CustomCardButton(
                            imageName: 'assets/images/vender-produto.png', 
                            imageHeight: 200, 
                            imageWidth: 120, 
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
                            imageName: 'assets/images/lista-produtos.png', 
                            imageHeight: 200, 
                            imageWidth: 150, 
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
                            imageWidth: 180, 
                            buttonName: "Fornecedores", 
                            onTap: (){
              
                            },
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 4,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ultimas vendas", 
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(152, 1, 134, 1),
                                ),
                              ),
                              Divider(
                                thickness: 1, 
                                color: Color.fromRGBO(152, 1, 134, 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10.0), // Defina o valor de raio desejado
              //   ),
              //   elevation: 4,
              //   child: Expanded(
              //     flex: 1,
              //     child: SizedBox(
              //       width: MediaQuery.of(context).size.width,
              //       child: const Padding(
              //         padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
                          // Text("Ultimas vendas", 
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //     fontFamily: 'Quicksand',
                          //     fontWeight: FontWeight.w500,
                          //     color: Color.fromRGBO(152, 1, 134, 1),
                          //   ),
                          // ),
              //             Divider(
              //               thickness: 1,
              //               color: Color.fromRGBO(152, 1, 134, 1),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}