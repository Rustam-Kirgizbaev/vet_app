import 'package:flutter/material.dart';

class PasswordBox extends StatefulWidget {
  final TextEditingController controller;
  const PasswordBox({Key? key, required this.controller}) : super(key: key);

  @override
  _PasswordBoxState createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {
  bool _isShown = false;

  void _toggle() {
    setState(() {
      _isShown = !_isShown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: _isShown
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
            onPressed: _toggle,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          fillColor: Colors.white70),
      obscureText: !_isShown,
    );
  }
}
