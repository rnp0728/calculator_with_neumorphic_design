// ignore_for_file: prefer_const_constructors

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundButton extends StatefulWidget {
  final String buttonText;
  final Color colorText;
  final VoidCallback onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;
  final bool darkMode;
  const RoundButton({Key? key, required this.buttonText, required this.colorText, required this.onPressed, required this.buttonBoxShape, required this.buttonWidth, required this.darkMode}) : super(key: key);

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.darkMode ? Colors.blueGrey.shade700 : Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: widget.darkMode
              ? null
              : [
            BoxShadow(
              color:
              widget.darkMode ? Colors.black54 : Colors.blueGrey.shade200,
              offset: const Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
                color:
                widget.darkMode ? Colors.blueGrey.shade700 : Colors.white,
                offset: const Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0)
          ]),
      child: NeumorphicButton(
        onPressed: widget.onPressed,
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          depth: 0,
          shadowDarkColor: Colors.grey.shade500,
          // lightSource: widget.darkMode ?  LightSource(0, 0): LightSource.topLeft,
          boxShape: widget.buttonBoxShape,
          color: widget.darkMode ? Colors.blueGrey.shade700 : Color(0xFFEDEBEC),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height/14,
          width: MediaQuery.of(context).size.width / widget.buttonWidth,
          child: Center(
            child: Text(
              widget.buttonText,
              style: TextStyle(
                color: widget.colorText,
                fontSize: 23,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
