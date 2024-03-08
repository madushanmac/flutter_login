import 'package:flutter/material.dart';

class SquireTile extends StatelessWidget {
  const SquireTile({super.key, required this.imagepath});
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]
      ),
      
      child: Image.asset(imagepath,height: 50,),
    );
  }
}
