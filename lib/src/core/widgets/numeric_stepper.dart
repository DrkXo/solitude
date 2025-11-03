import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class NumericStepper extends StatelessWidget {
  const NumericStepper({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.step,
    required this.onChanged,
    required this.formatter,
  });

  final double value;
  final double min;
  final double max;
  final double step;
  final ValueChanged<double> onChanged;
  final String Function(double) formatter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(LucideIcons.minus),
          onPressed: value > min ? () => onChanged(value - step) : null,
        ),
        SizedBox(
          width: 60,
          child: Text(
            formatter(value),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        IconButton(
          icon: const Icon(LucideIcons.plus),
          onPressed: value < max ? () => onChanged(value + step) : null,
        ),
      ],
    );
  }
}