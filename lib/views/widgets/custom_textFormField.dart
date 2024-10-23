import 'package:flutter/material.dart';

class CustomTextformfield extends StatefulWidget {
  const CustomTextformfield(
      {required this.title,
      required this.onPressed,
      this.backgroundColor,
      this.hintText = "",
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      required this.controller,
      this.suffixIcon,
      this.isPasswordVisible = false,

      // this.obscuretext = false,

      super.key});
  final String title;
  final void Function()? onPressed;

  final Color? backgroundColor;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool isPasswordVisible;

  @override
  State<CustomTextformfield> createState() => _CustomTextformfieldState();
}

class _CustomTextformfieldState extends State<CustomTextformfield> {
  late bool _isSecurepassword;

  @override
  void initState() {
    super.initState();
    _isSecurepassword = widget.isPasswordVisible;
  }

  //final String? hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some phone number';
        }
      },
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      controller: widget.controller,
      obscureText: _isSecurepassword,
      decoration: InputDecoration(
        hintText: (widget.hintText),
        suffixIcon: widget.isPasswordVisible
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      _isSecurepassword = !_isSecurepassword;
                    },
                  );
                },
                icon: _isSecurepassword
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility))
            : const SizedBox.shrink(),

        // labelText: 'phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey, // Color when not focused
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey, // Color when focused
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red, // Color when error
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        filled: true,
        fillColor: const Color.fromRGBO(153, 153, 153, 0.1),
      ),
    );
  }

  Widget togglePasword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurepassword = !_isSecurepassword;
        });
        _isSecurepassword = !_isSecurepassword;
      },
      icon: _isSecurepassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
    );
  }
}
