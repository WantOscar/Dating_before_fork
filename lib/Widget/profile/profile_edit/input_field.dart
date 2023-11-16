import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text1;
  final String text2;
  final double widthPoint;
  final double heightPoint;
  const InputField(
      {super.key,
      required this.text1,
      required this.text2,
      required this.widthPoint,
      required this.heightPoint});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 17.0),
          child: Text(text1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 17.0),
          child: Container(
            width: MediaQuery.of(context).size.width * widthPoint,
            height: MediaQuery.of(context).size.height * heightPoint,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  maxLength: 10,
                  style: const TextStyle(
                    decorationThickness: 0,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: text2,
                      // border: OutlineInputBorder(),
                      border: InputBorder.none,
                      isDense: true),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}