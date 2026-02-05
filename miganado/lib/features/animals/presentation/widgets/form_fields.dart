import 'package:flutter/material.dart';
import 'package:miganado/features/animals/domain/entities/etapa_vida.dart';

/// Field de texto personalizado para el formulario
class FormTextField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final int? maxLength;
  final int maxLines;
  final bool required;

  const FormTextField({
    required this.label,
    this.initialValue,
    required this.onChanged,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.maxLines = 1,
    this.required = false,
    super.key,
  });

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (widget.required)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _controller,
          onChanged: widget.onChanged,
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength,
          maxLines: widget.maxLines,
          minLines: widget.maxLines == 1 ? 1 : null,
          decoration: InputDecoration(
            hintText: 'Ingresa ${widget.label.toLowerCase()}',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.green,
                width: 2,
              ),
            ),
            counterText: '',
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

/// Dropdown field personalizado
class FormDropdown<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<dynamic>? items; // Can be List<T> or List<DropdownMenuItem<T>>
  final String Function(T)? itemLabel;
  final ValueChanged<T?> onChanged;
  final bool required;

  const FormDropdown({
    required this.label,
    this.value,
    this.items,
    this.itemLabel,
    required this.onChanged,
    this.required = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Handle List<DropdownMenuItem<T>> format (from helpers)
    List<DropdownMenuItem<T>> menuItems = [];

    if (items is List<DropdownMenuItem<T>>) {
      menuItems = items as List<DropdownMenuItem<T>>;
    } else if (items != null && itemLabel != null) {
      menuItems = (items as List<T>).map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(itemLabel!(item)),
        );
      }).toList();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (required)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<T>(
          value: value,
          items: menuItems,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: 'Selecciona $label',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.green,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

/// Date picker field personalizado
class FormDateField extends StatelessWidget {
  final String label;
  final DateTime? value;
  final ValueChanged<DateTime?> onChanged;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool required;

  const FormDateField({
    required this.label,
    this.value,
    required this.onChanged,
    this.firstDate,
    this.lastDate,
    this.required = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (required)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () async {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: value ?? DateTime.now(),
              firstDate: firstDate ?? DateTime(1900),
              lastDate: lastDate ?? DateTime.now(),
            );
            if (pickedDate != null) {
              onChanged(pickedDate);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value != null
                      ? '${value!.day}/${value!.month}/${value!.year}'
                      : 'Selecciona fecha',
                  style: TextStyle(
                    color: value != null ? Colors.black : Colors.grey,
                  ),
                ),
                Icon(
                  Icons.calendar_today,
                  color: Colors.green.shade700,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

/// Checkbox field personalizado
class FormCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const FormCheckbox({
    required this.label,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (newValue) {
              if (newValue != null) onChanged(newValue);
            },
            activeColor: Colors.green,
          ),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}

/// Helper para mostrar lista de especies
List<DropdownMenuItem<Species>> getEspecieItems() {
  return Species.values.map((especie) {
    return DropdownMenuItem(
      value: especie,
      child: Text(especie.descripcion),
    );
  }).toList();
}

/// Helper para mostrar lista de categorías para una especie
List<DropdownMenuItem<Category>> getCategoriaItems(Species? especie) {
  if (especie == null) return [];
  return especie.categoriasValidas.map((categoria) {
    return DropdownMenuItem(
      value: categoria,
      child: Text(categoria.descripcion),
    );
  }).toList();
}

/// Helper para mostrar lista de etapas para una especie
List<DropdownMenuItem<LifeStage>> getEtapaItems(Species? especie) {
  if (especie == null) return [];

  final etapas = especie == Species.cattle
      ? [
          LifeStage.calfMale,
          LifeStage.calfFemale,
          LifeStage.heifer,
          LifeStage.youngBull,
          LifeStage.steer,
          LifeStage.cow,
          LifeStage.bull,
        ]
      : [
          LifeStage.colt,
          LifeStage.filly,
          LifeStage.horse,
          LifeStage.mare,
          LifeStage.donkey,
          LifeStage.donkeyFemale,
          LifeStage.mule,
        ];

  return etapas.map((etapa) {
    return DropdownMenuItem(
      value: etapa,
      child: Text(etapa.descripcion),
    );
  }).toList();
}

/// Helper para mostrar lista de sexos
List<DropdownMenuItem<Sex>> getSexoItems() {
  return Sex.values.map((sexo) {
    final label = sexo == Sex.male ? 'Macho' : 'Hembra';
    return DropdownMenuItem(
      value: sexo,
      child: Text(label),
    );
  }).toList();
}

/// Labels para Sexo
String _getSexoLabel(Sex sexo) {
  switch (sexo) {
    case Sex.male:
      return 'Macho';
    case Sex.female:
      return 'Hembra';
  }
}
