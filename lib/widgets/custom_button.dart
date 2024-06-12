import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/colors.dart';

typedef CustomButtonBuilder = CustomButton Function(
    String title,
    bool showActions,
    );

class CustomButton extends ConsumerWidget {
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    this.title,
    this.showActions = true,
    required this.onPressed,
  });

  final String? title;

  final bool showActions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: customButtonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              style: TextStyle(color: Colors.white),
            ),
            (showActions)?Icon(Icons.arrow_downward, color: Colors.white):SizedBox(), // Right arrow icon
          ],
        ),
      )
    );
  }
}