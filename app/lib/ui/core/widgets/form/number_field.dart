import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

/// A form field that takes number input, with buttons to incremenet or decrement the value
class NumberTextField extends StatefulWidget {
  /// name of the form field
  final String name;

  /// title of the field
  final String title;
  final double? initialValue;
  final Color? color;

  /// if true, increment and decrement buttons will change the value by 1, otherwise by 0.5
  final bool changeValueAsInt;
  final TextStyle? labelStyle;
  final int? max;
  final int? min;

  /// wether to update the form field value on every change
  final bool updateOnChanged;
  const NumberTextField(
      {super.key,
      required this.title,
      required this.name,
      this.initialValue,
      this.color,
      this.labelStyle,
      this.max,
      this.min,
      this.changeValueAsInt = false,
      this.updateOnChanged = false});

  @override
  State<NumberTextField> createState() => _NumberTextFieldState();
}

class _NumberTextFieldState extends State<NumberTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.initialValue?.toString());
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: widget.name,
      builder: (field) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.title, style: widget.labelStyle),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: widget.color),
              clipBehavior: Clip.hardEdge,
              width: 220,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: TextFormField(
                      onChanged: widget.updateOnChanged
                          ? (value) {
                              field.didChange(int.tryParse(value));
                            }
                          : null,
                      onSaved: (value) {
                        field.didChange(int.parse(value ?? '0'));
                      },
                      validator: (value) {
                        if (value == null) return null;

                        final n = double.tryParse(value);
                        if (n == null) {
                          return 'Please enter a valid number';
                        }
                        final max = widget.max;
                        final min = widget.min;
                        if (max != null && n > max) {
                          return 'Max value can be $max';
                        }
                        if (min != null && n < min) {
                          return 'Min value can be $min';
                        }
                        return null;
                      },
                      controller: _controller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        errorMaxLines: 2,
                        constraints:
                            BoxConstraints(minWidth: 170, maxWidth: 170),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        iconSize: 8,
                        constraints:
                            const BoxConstraints(minWidth: 9, minHeight: 9),
                        onPressed: () {
                          final n = double.tryParse(_controller.text);
                          if (n != null) {
                            if (widget.max != null && n >= widget.max!) {
                              return;
                            }
                            _controller.text =
                                (n + (widget.changeValueAsInt ? 1 : 0.5))
                                    .toString();
                          }
                        },
                        icon: const Icon(Icons.arrow_upward),
                      ),
                      IconButton(
                        iconSize: 8,
                        constraints:
                            const BoxConstraints(minWidth: 9, minHeight: 9),
                        onPressed: () {
                          final n = double.tryParse(_controller.text);
                          if (n != null) {
                            if (widget.min != null && n <= widget.min!) {
                              return;
                            }
                            _controller.text =
                                (n - (widget.changeValueAsInt ? 1 : 0.5))
                                    .toString();
                          }
                        },
                        icon: const Icon(Icons.arrow_downward),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
