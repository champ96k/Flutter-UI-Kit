import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final TextAlign textAlign;
  final double borderRadius;
  final Widget suffixIcon;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String obscuringCharacter;
  final Function(String) validator;
  final Function(String) onChanged;
  final double height;
  final double width;
  const CustomTextFormFiled({
    Key key,
    this.textAlign = TextAlign.left,
    this.validator,
    this.height = 0.0,
    this.width = 0.0,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.obscuringCharacter = '•',
    this.controller,
    this.onChanged,
    this.borderRadius = 20.0,
    this.suffixIcon,
    this.hintText = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: width == 0.0 ? size.width * 0.8 : width,
      child: TextFormField(
        controller: controller,
        enabled: true,
        autofocus: true,
        obscureText: obscureText,
        autocorrect: true,
        validator: validator,
        keyboardType: keyboardType,
        obscuringCharacter: obscuringCharacter,
        onChanged: onChanged,
        textAlign: textAlign,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabled: true,
          filled: true,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          suffixIcon: suffixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: suffixIcon,
                )
              : Text(''),
          hintText: "  $hintText",
        ),
      ),
    );
  }
}
