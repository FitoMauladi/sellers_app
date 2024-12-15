import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? data;
  final String? hintText;
  final bool isObscure;
  final bool enabled;
  final String? Function(String?)?
      validator; // Memperbaiki validator menjadi opsional

  const CustomTextField({
    Key? key,
    this.controller,
    this.data,
    this.hintText,
    this.enabled = true,
    this.isObscure = false,
    this.validator, // Memasukkan validator di sini
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        obscureText: isObscure,
        cursorColor: Theme.of(context).primaryColor,
        validator: validator, // Menghubungkan validator ke TextFormField
        decoration: InputDecoration(
          prefixIcon: Icon(
            data,
            color: Colors.cyan,
          ),
          focusColor: Theme.of(context).primaryColor,
          hintText: hintText,
        ),
      ),
    );
  }
}
