import 'package:flutter/material.dart';

class CustomCardButton extends StatelessWidget {
  final String imageName;
  final String buttonName;
  final double? imageHeight;
  final double? imageWidth;
  final void Function()? onTap;
  const CustomCardButton({super.key, required this.imageName, required this.buttonName, required this.onTap, this.imageHeight, this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 200,
        child: Card(
          elevation: 4,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Image.asset(imageName, width: imageWidth, height: imageHeight,),
              ),
              Expanded(
                flex: 1,
                child: Text(buttonName, style: const TextStyle(color: Color.fromRGBO(152, 1, 134, 1), fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}