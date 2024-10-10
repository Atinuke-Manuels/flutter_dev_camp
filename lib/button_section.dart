import 'package:flutter/material.dart';

import 'button_with_text.dart';

class ButtonSection extends StatefulWidget {
  const ButtonSection({super.key});


  @override
  State<ButtonSection> createState() => _ButtonSectionState();
}

class _ButtonSectionState extends State<ButtonSection> {
  bool isVisible = true;

  void _showButton(){
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Column(
        children: [
          TextButton(onPressed: _showButton, child: isVisible ? const Text("Hide Buttons") : const Text("Show Buttons")),
          Visibility(
            visible: isVisible,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWithText(
                  color: color,
                  icon: Icons.call,
                  label: 'CALL',
                ),
                ButtonWithText(
                  color: color,
                  icon: Icons.near_me,
                  label: 'ROUTE',
                ),
                ButtonWithText(
                  color: color,
                  icon: Icons.share,
                  label: 'SHARE',
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}