import 'package:flutter/material.dart';

class CustomCardButton extends StatelessWidget {
  final String imageName;
  final String buttonName;
  final void Function()? onTap;
  const CustomCardButton({super.key, required this.imageName, required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 200,
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Image.asset(imageName),
              ),
              Expanded(
                flex: 1,
                child: Text(buttonName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}