
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ride_share/core/uitls/colors.dart';

class PasswordField extends HookWidget {
  final String hintText;

  const PasswordField({
    super.key,
    required this.hintText
  }); 

  @override
  Widget build(BuildContext context) {
    final obscureText  = useState(true);

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      // ),
      child: TextField(
        style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w500
                ),
        obscureText: obscureText.value,
        autocorrect: false,
        enableSuggestions: false,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              obscureText.value ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              obscureText.value = !obscureText.value;
            },
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: greyTextFieldColor,
          hintText: hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
  
}