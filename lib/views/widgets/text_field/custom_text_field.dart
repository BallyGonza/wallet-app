import 'package:flutter/material.dart';
import 'package:wallet_app/data/data.dart';

class CustomDialogTextField extends StatelessWidget {
  const CustomDialogTextField({
    required this.hint,
    required this.controller,
    super.key,
  });

  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.sentences,
      controller: controller,
      cursorColor: Colors.white, // Mejora la visibilidad del cursor
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ), // Ajusta el tamaño de la fuente
      decoration: InputDecoration(
        filled: true, // Añade un fondo al campo de texto
        fillColor: Colors.grey[850], // Define un color de fondo oscuro
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ), // Suaviza los bordes del campo
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: accentColor,
            width: 2,
          ), // Resalta el borde cuando está enfocado
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white70,
        ), // Hace que el texto de sugerencia sea menos prominente
      ),
    );
  }
}
