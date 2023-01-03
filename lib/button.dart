import 'package:flutter/material.dart';

import 'const_data.dart';
class GradientButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  const GradientButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                  offset: Offset(5, 5),
                  spreadRadius: 4,
                  blurRadius: 10,
                  color: Colors.grey
              )
            ],
            gradient: LinearGradient(
              colors: [Colors.blueGrey.shade100, Colors.blueGrey.shade600],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: ColorSelect.containerTextColor,),
            Text(text,style: TextStyle(color: ColorSelect.containerTextColor), ),
          ],
        ),
      ),
    );
  }
}