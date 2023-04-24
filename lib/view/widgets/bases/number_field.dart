import 'package:flutter/material.dart';

class NumberField extends StatelessWidget {
  final controller;
  final Function(String)? onChanged;

  const NumberField({
    super.key,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 2, 
                  minLines: 2, 
                  controller: controller,
                  onChanged: onChanged,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '0',
                    hintStyle: TextStyle(fontSize: 24),
                  ),
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.right,
                  readOnly: true,
                ),
              ),
            );
  }
}