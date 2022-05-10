import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

getUtills(context) {
  return ScreenUtil.init(context,
      designSize: Size(414, 896),
      minTextAdapt: true,
      orientation: Orientation.portrait);
}

Widget customTextfield22(String title, String subtitle,
    TextEditingController controller, String errormsg) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "$title",
          size: 16,
          color: Colors.black,
          weight: FontWeight.bold,
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black54),
              hintText: "$subtitle"),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$errormsg';
            }
            return null;
          },
        )
      ],
    ),
  );
}

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  CustomText({this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      overflow: TextOverflow.clip,
      maxLines: 2,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
