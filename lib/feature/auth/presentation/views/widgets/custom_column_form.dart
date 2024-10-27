import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/functions/email_validate.dart';
import 'package:furniture_shopping_app/feature/auth/presentation/views/widgets/custom_textform.dart';

class CustomColumnForm extends StatefulWidget {
  const CustomColumnForm(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController});
  final TextEditingController nameController,
      emailController,
      passwordController,
      confirmPasswordController;
  @override
  State<CustomColumnForm> createState() => _CustomColumnFormState();
}

class _CustomColumnFormState extends State<CustomColumnForm> {
  bool isvisble = true;
  bool isvisble1 = true;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextForm(
          controller: widget.nameController,
          hintText: 'Name',
          validator: (value) {
            if (value!.isEmpty) {
              return 'This Field is Required';
            } else if (value.length < 3) {
              return 'you Should Enter 3 letter at least';
            }
            return null;
          },
        ),
        CustomTextForm(
          controller: widget.emailController,
          hintText: 'Email',
          validator: (value) {
            if (value!.isEmpty) {
              return 'This Field is Required';
            } else if (!emailValidate(value)) {
              return 'Enter a Valid Email';
            }
            return null;
          },
        ),
        CustomTextForm(
          obsecureText: isvisble,
          controller: widget.passwordController,
          hintText: 'Password',
          validator: (value) {
            if (value!.isEmpty) {
              return 'This Field is Required';
            } else if (value.length < 7) {
              return 'you Should Enter 8 letter at least';
            }
            return null;
          },
          suffixIcon: IconButton(
              onPressed: () {
                isvisble = !isvisble;
                setState(() {});
              },
              icon: (isvisble == true)
                  ? const Icon(CupertinoIcons.eye)
                  : const Icon(CupertinoIcons.eye_slash)),
        ),
        CustomTextForm(
          obsecureText: isvisble1,
          controller: widget.confirmPasswordController,
          hintText: 'Confirm Password',
          validator: (value) {
            if (value!.isEmpty) {
              return 'This Field is Required';
            } else if (value != widget.passwordController.text) {
              return 'You entered two different passwords';
            }
            return null;
          },
          suffixIcon: IconButton(
              onPressed: () {
                isvisble1 = !isvisble1;
                setState(() {});
              },
              icon: (isvisble1 == true)
                  ? const Icon(CupertinoIcons.eye)
                  : const Icon(CupertinoIcons.eye_slash)),
        ),
      ],
    );
  }
}
