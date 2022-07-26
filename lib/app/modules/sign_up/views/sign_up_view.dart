import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/controllers/login_controller.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/widgets/custom_form_field.dart';
import 'package:modern_digital_indonesia_test/app/routes/app_pages.dart';
import 'package:modern_digital_indonesia_test/app/utils/global_variable.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    final signUpForm = GlobalKey<FormState>();
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1600266573467-16ab6cb278ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGZsb3dlcnxlbnwwfDF8MHx3aGl0ZXw%3D&auto=format&fit=crop&w=800&q=60",
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.softLight,
            color: GlobalVariable.whiteColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 36),
            margin: EdgeInsets.only(top: 89),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: headingTextStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: titleTextStyle.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Form(
                    key: signUpForm,
                    child: Column(
                      children: [
                        CustomFormField(
                          titleText: "Name",
                          hintText: "Your Name",
                          controller: controller.nameController,
                          titleStye: titleTextStyle.copyWith(
                            fontSize: 20,
                          ),
                          fillColor: GlobalVariable.secondaryColor,
                          enabledInputBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        CustomFormField(
                          titleText: "Email",
                          hintText: "Email Address",
                          controller: controller.emailController,
                          titleStye: titleTextStyle.copyWith(
                            fontSize: 20,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: GlobalVariable.secondaryColor,
                          enabledInputBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: GlobalVariable.primaryColor,
                              width: 1,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Obx(
                          () => CustomFormField(
                            titleText: "Password",
                            hintText: "Password",
                            obsecureText:
                                Get.find<LoginController>().isObsecure.value,
                            controller: controller.passwordController,
                            titleStye: titleTextStyle.copyWith(
                              fontSize: 20,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: GlobalVariable.primaryColor,
                                width: 1,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: GlobalVariable.secondaryColor,
                            enabledInputBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: GlobalVariable.primaryColor,
                                width: 1,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: GlobalVariable.primaryColor,
                                width: 1,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: GlobalVariable.primaryColor,
                                width: 1,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree to the",
                            style: titleTextStyle,
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: " Terms of Service",
                            style: titleTextStyle.copyWith(
                              color: GlobalVariable.primaryColor,
                            ),
                          ),
                          TextSpan(
                            text: " and",
                            style: titleTextStyle,
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: " Privacy Policy",
                            style: titleTextStyle.copyWith(
                              color: GlobalVariable.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(Get.width, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: GlobalVariable.primaryColor,
                    ),
                    onPressed: () {
                      if (signUpForm.currentState!.validate()) {
                        ///Navigate
                      }
                    },
                    child: Text(
                      "Create Account",
                      style: titleTextStyle.copyWith(
                        fontSize: 20,
                        color: GlobalVariable.whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: titleTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(Routes.LOGIN);
                              },
                            text: " Login",
                            style: titleTextStyle.copyWith(
                              fontSize: 18,
                              color: GlobalVariable.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
