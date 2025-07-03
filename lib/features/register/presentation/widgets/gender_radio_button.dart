import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/uitls/colors.dart';

class GenderRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GenderRadioButtonState();
}

class _GenderRadioButtonState extends State<GenderRadioButton> {
  String selected = 'gender';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomRadioButton<String>(
          value: 'female',
          label: 'Female',
          groupValue: selected,
          assetsURL: 'assets/images/female.svg',
          onChanged: (val) => setState(() => selected = val),
        ),
        const SizedBox(width: 20),
        CustomRadioButton<String>(
          value: 'male',
          label: 'Male',
          groupValue: selected,
          assetsURL: 'assets/images/male.svg',
          onChanged: (val) => setState(() => selected = val),
        ),
      ],
    );
  }
}

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final String label;
  final T groupValue;
  final String assetsURL;
  final ValueChanged<T> onChanged;

  const CustomRadioButton({
    required this.value,
    required this.label,
    required this.groupValue,
    required this.assetsURL,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;

    return GestureDetector(
      onTap: () => onChanged(value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(isSelected ? 1.05 : 1.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: isSelected ? 2 : 1,
            color: isSelected ? primaryColor : greyBorderColor,
          ),
          color: isSelected ? primaryColor.withOpacity(0.1) : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                assetsURL,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? primaryColor : Colors.grey,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}