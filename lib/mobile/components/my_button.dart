import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color warna;
  final void Function()? onTap;
  final Widget child;
  const MyButton({
    super.key,
    required this.onTap,
    required this.child,
    required this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: warna, 
            borderRadius: BorderRadius.circular(100)),
        padding: EdgeInsets.all(10.0),
        child: child,
      ),
    );
  }
}
