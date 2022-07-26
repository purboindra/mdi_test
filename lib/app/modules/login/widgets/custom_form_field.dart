import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/controllers/login_controller.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final String titleText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final InputBorder? enabledInputBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? titleStye;
  final bool obsecureText;
  final VoidCallback? onTap;

  const CustomFormField({
    Key? key,
    required this.hintText,
    required this.titleText,
    required this.controller,
    this.prefixIcon,
    this.hintStyle,
    this.fillColor,
    this.enabledInputBorder,
    this.focusedBorder,
    this.titleStye,
    this.errorBorder,
    this.obsecureText = false,
    this.focusedErrorBorder,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: titleStye,
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          onTap: onTap,
          obscureText: obsecureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: titleText == "Password"
                ? Obx(() => IconButton(
                      onPressed: () {
                        Get.find<LoginController>().isObsecure.toggle();
                      },
                      icon: Icon(
                        Get.find<LoginController>().isObsecure.isTrue
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.black,
                      ),
                    ))
                : SizedBox(),
            enabled: true,
            hintText: hintText,
            hintStyle: hintStyle,
            filled: true,
            fillColor: fillColor,
            focusedErrorBorder: focusedErrorBorder,
            enabledBorder: enabledInputBorder,
            errorBorder: errorBorder,
            focusedBorder: focusedBorder,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$titleText must be filled';
            }
            return null;
          },
        ),
      ],
    );
  }
}
