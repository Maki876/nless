import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String? valueChoose;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      style: const TextStyle(color: Colors.grey),
      dropdownColor: Colors.grey[300],
      hint: const Text(
        '- Select the size of portion -',
        style: TextStyle(fontSize: 20),
      ),
      value: valueChoose,
      onChanged: (newValue) {
        setState(() {
          valueChoose = newValue;
        });
      },
      items: <String>['Small', 'Medium', 'Large']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
