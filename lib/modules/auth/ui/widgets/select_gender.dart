import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key, required this.onGenderSelected});

  final ValueChanged<String> onGenderSelected;

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  String? selectedGender; // Local state for selected gender

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedGender,
      items: [
        DropdownMenuItem(
          value: '1',
          child: Text('Male'),
        ),
        DropdownMenuItem(
          value: '0',
          child: Text('Female'),
        ),
      ],
      decoration: InputDecoration(
        labelText: 'Gender',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        setState(() {
          selectedGender = value;
        });
        if (value != null) {
          widget.onGenderSelected(value); // Call the callback with the selected value
        }
      },
      validator: (value) =>
      value == null ? 'Please select your gender' : null,
    );
  }
}