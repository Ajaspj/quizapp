import 'package:flutter/material.dart';

class CustomContainerOption extends StatefulWidget {
  const CustomContainerOption({super.key});

  @override
  State<CustomContainerOption> createState() => _CustomContainerOptionState();
}

class _CustomContainerOptionState extends State<CustomContainerOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Volleyball",
            style: TextStyle(color: Colors.white),
          ),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
