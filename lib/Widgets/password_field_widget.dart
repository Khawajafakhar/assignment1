import '../user_authentication/validation.dart';
import 'package:flutter/material.dart';
import '../Widgets/text_field_widget.dart';
import '../utility/app_strings.dart';

class PasswordFieldWidget extends StatefulWidget {
  // const PasswordFieldWidget({Key? key}) : super(key: key);

  String? hint;
  TextInputAction? action;
  TextEditingController? controller;
  String? Function(String?)? validate;
  void Function(String?)? onSave;
  PasswordFieldWidget({
    this.hint,
    this.action,
    this.controller,
    this.validate,
    this.onSave
  });

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  var _isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      onSave: widget.onSave,
      validate: widget.validate,
      suffix: IconButton(
          onPressed: () {
            setState(() {
              _isObsecure = !_isObsecure;
            });
          },
          icon: _isObsecure
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility)),
      obsecure: _isObsecure,
      hint: widget.hint,
      action: widget.action,
      controller: widget.controller,
    );
  }
}
