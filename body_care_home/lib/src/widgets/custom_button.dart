import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final double borderRadius;
  final String buttonText;
  final Color buttonTextColor;
  final Function onPressed;
  final double height;
  final double width;
  final Widget image;
  final EdgeInsetsGeometry imagePadding;

  const CustomButton({
    Key key,
    this.height = 0.0,
    this.width = 0.0,
    this.imagePadding = const EdgeInsets.all(6.0),
    this.backgroundColor = Colors.transparent,
    this.borderRadius = 25.0,
    this.buttonText = '',
    this.image,
    @required this.onPressed,
    this.buttonTextColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: width == 0.0 ? size.width * 0.8 : width,
      height: height == 0.0 ? size.height * 0.055 : height,
      child: OutlinedButton(
        child: Row(
          children: [
            image != null
                ? Expanded(
                    flex: 1,
                    child: Padding(
                      padding: imagePadding,
                      child: image,
                    ),
                  )
                : Container(),
            Expanded(
              flex: 5,
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        style: OutlinedButton.styleFrom(
          primary: buttonTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
