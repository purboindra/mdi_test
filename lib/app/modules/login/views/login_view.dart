import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modern_digital_indonesia_test/app/modules/login/widgets/custom_form_field.dart';
import 'package:modern_digital_indonesia_test/app/routes/app_pages.dart';
import 'package:modern_digital_indonesia_test/app/utils/global_variable.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final loginForm = GlobalKey<FormState>();

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
                    'Welcome Back',
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
                    key: loginForm,
                    child: Column(
                      children: [
                        CustomFormField(
                          titleText: "Email",
                          hintText: "Email Address",
                          titleStye: titleTextStyle.copyWith(
                            fontSize: 20,
                          ),
                          controller: controller.emailController,
                          hintStyle: titleTextStyle,
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
                        Obx(() => CustomFormField(
                              titleText: "Password",
                              hintText: "Password",
                              obsecureText: controller.isObsecure.value,
                              controller: controller.emailController,
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
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                          color: GlobalVariable.primaryColor,
                        ),
                      ),
                    ],
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
                      if (loginForm.currentState!.validate()) {
                        Get.offAllNamed(Routes.MAIN);
                      }
                    },
                    child: Text(
                      "Login",
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
                    child: Text(
                      "OR",
                      style: titleTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 2,
                        color: GlobalVariable.primaryColor,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: GlobalVariable.primaryColor,
                      fixedSize: Size(Get.width, 56),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Login with Google",
                          style: titleTextStyle.copyWith(
                            fontSize: 20,
                            color: GlobalVariable.darkGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: titleTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(Routes.SIGN_UP);
                                },
                              text: " Sign Up",
                              style: titleTextStyle.copyWith(
                                color: GlobalVariable.primaryColor,
                                fontSize: 18,
                              )),
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
