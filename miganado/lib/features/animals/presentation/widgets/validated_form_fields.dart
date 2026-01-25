import 'package:flutter/material.dart';
import 'package:miganado/core/validators/input_validators.dart';

/// Widget de TextField con validación integrada
class ValidatedTextField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final int? maxLength;
  final int maxLines;
  final bool required;
  final String Function(String?)? customValidator;
  final String
      validationType; // 'text', 'number', 'email', 'phone', 'animalName', 'weight', 'price', 'code'

  const ValidatedTextField({
    required this.label,
    this.initialValue,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.maxLines = 1,
    this.required = false,
    this.customValidator,
    this.validationType = 'text',
    super.key,
  });

  @override
  State<ValidatedTextField> createState() => _ValidatedTextFieldState();
}

class _ValidatedTextFieldState extends State<ValidatedTextField> {
  late TextEditingController _controller;
  String? _errorMessage;

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

  String? _validate(String? value) {
    // Custom validator first
    if (widget.customValidator != null) {
      final error = widget.customValidator!(value);
      return error;
    }

    // Tipo de validación específica
    switch (widget.validationType) {
      case 'animalName':
        return InputValidators.validateAnimalName(value);
      case 'number':
        return InputValidators.validateNumber(value, widget.label);
      case 'weight':
        return InputValidators.validateWeight(value);
      case 'price':
        return InputValidators.validatePrice(value);
      case 'email':
        return InputValidators.validateEmail(value);
      case 'phone':
        return InputValidators.validatePhone(value);
      case 'code':
        return InputValidators.validateCode(value);
      case 'text':
      default:
        if (widget.required) {
          return InputValidators.validateNotEmpty(value, widget.label);
        }
    }

    return null;
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
                style: const TextStyle(fontWeight: FontWeight.w500),
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
          onChanged: (value) {
            setState(() {
              _errorMessage = _validate(value);
            });
            widget.onChanged(value);
          },
          validator: _validate,
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
              borderSide: BorderSide(
                color: _errorMessage != null ? Colors.red : Colors.green,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            counterText: '',
            errorText: _errorMessage,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

/// Widget de Dropdown con validación
class ValidatedDropdown<T> extends StatefulWidget {
  final String label;
  final T? value;
  final List<T> items;
  final String Function(T)? itemLabel;
  final ValueChanged<T?> onChanged;
  final bool required;

  const ValidatedDropdown({
    required this.label,
    this.value,
    required this.items,
    this.itemLabel,
    required this.onChanged,
    this.required = false,
    super.key,
  });

  @override
  State<ValidatedDropdown<T>> createState() => _ValidatedDropdownState<T>();
}

class _ValidatedDropdownState<T> extends State<ValidatedDropdown<T>> {
  String? _errorMessage;

  String? _validate(T? value) {
    if (widget.required &&
        (value == null || (value is String && value.isEmpty))) {
      return InputValidators.validateSelection(value, widget.label);
    }
    return null;
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
                style: const TextStyle(fontWeight: FontWeight.w500),
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
        DropdownButtonFormField<T>(
          value: widget.value,
          items: widget.items.map((item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(
                widget.itemLabel != null
                    ? widget.itemLabel!(item)
                    : item.toString(),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _errorMessage = _validate(value);
            });
            widget.onChanged(value);
          },
          decoration: InputDecoration(
            hintText: 'Selecciona ${widget.label}',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: _errorMessage != null ? Colors.red : Colors.green,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red, width: 2),
            ),
            errorText: _errorMessage,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

/// Widget de DatePicker con validación
class ValidatedDateField extends StatefulWidget {
  final String label;
  final DateTime? value;
  final ValueChanged<DateTime?> onChanged;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool required;

  const ValidatedDateField({
    required this.label,
    this.value,
    required this.onChanged,
    this.firstDate,
    this.lastDate,
    this.required = false,
    super.key,
  });

  @override
  State<ValidatedDateField> createState() => _ValidatedDateFieldState();
}

class _ValidatedDateFieldState extends State<ValidatedDateField> {
  String? _errorMessage;

  String? _validate(DateTime? value) {
    if (widget.required && value == null) {
      return 'Selecciona ${widget.label}';
    }
    return null;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.value ?? DateTime.now(),
      firstDate: widget.firstDate ?? DateTime(1900),
      lastDate: widget.lastDate ?? DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _errorMessage = _validate(picked);
      });
      widget.onChanged(picked);
    }
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
                style: const TextStyle(fontWeight: FontWeight.w500),
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
        GestureDetector(
          onTap: () => _selectDate(context),
          child: InputDecorator(
            decoration: InputDecoration(
              hintText: widget.value != null
                  ? '${widget.value?.day}/${widget.value?.month}/${widget.value?.year}'
                  : 'Selecciona ${widget.label.toLowerCase()}',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: _errorMessage != null ? Colors.red : Colors.green,
                  width: 2,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.red, width: 2),
              ),
              errorText: _errorMessage,
              suffixIcon: const Icon(Icons.calendar_today),
            ),
            child: Text(
              widget.value != null
                  ? '${widget.value?.day}/${widget.value?.month}/${widget.value?.year}'
                  : 'Selecciona ${widget.label.toLowerCase()}',
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
