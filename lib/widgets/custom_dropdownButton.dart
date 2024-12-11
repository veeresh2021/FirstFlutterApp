import 'package:flutter/material.dart';

class CustomDropdownbuttonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownbuttonClass({
    required this.values,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        width: width,
        decoration: BoxDecoration(
            color: Color.fromRGBO(133, 99, 183, 1),
            borderRadius: BorderRadius.circular(10)),
        child: DropdownButton(
          value: values.first,
          onChanged: (_) {},
          items: values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          underline: Container(),
          dropdownColor: Color.fromRGBO(171, 152, 197, 1),
          style: TextStyle(
            color: Color.fromARGB(255, 11, 10, 10),
          ),
        ));
  }
}
