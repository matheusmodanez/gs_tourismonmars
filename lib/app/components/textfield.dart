import 'dart:ui';
import 'package:flutter/material.dart';

class StandardTextField extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;
  final double? width;
  final double? height;

  StandardTextField({
    required this.label,
    this.userInputController,
    this.onEditingComplete,
    this.focusNode,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.white.withOpacity(0.1),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
          ),
          child: TextFormField(
            focusNode: focusNode,
            controller: userInputController,
            onEditingComplete: onEditingComplete,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              label: Text(
                label,
                style: TextStyle(color: Colors.grey, fontFamily: 'Space Mono'),
              ),
              // border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
