import 'package:flutter/material.dart';

class DwTextFormField extends StatelessWidget {
  final String? label;
  final IconData? icon;
  final bool? isPassword;
  final TextEditingController? controll;
  final Color? colorIcon;
  final Function? funValidarCampo;
  final bool? isNotNull;
  final bool? isNumeric;
  final bool? isNotMinLength;
  final Function? onTap;

  const DwTextFormField({
    super.key,
    this.label,
    this.icon,
    this.isPassword,
    this.controll,
    this.colorIcon,
    this.funValidarCampo,
    this.isNotNull = false,
    this.isNumeric,
    this.isNotMinLength = false,
    this.onTap,
  });

  validarCampo(value) {
    if (funValidarCampo != null) {
      funValidarCampo!();
    } else {
      if (isNotNull! && value.isEmpty) {
        return "O campo é de preenchimento obrigatório.";
      }

      if ((isNotNull! && (value.length < 8)) ||
          (isNotMinLength! && (value.length < 1))) {
        return 'O campo precisa ter mais de 8 caracteres.';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
      child: TextFormField(
        onTap: () => onTap,
        controller: controll,
        keyboardType:
            isNumeric != null ? TextInputType.number : TextInputType.name,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
        style: const TextStyle(fontSize: 16),
        obscureText: isPassword != null,
        validator: (value) => validarCampo(value),
      ),
    );
  }
}
