import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/fonts/fonts.dart';
import 'package:furniture_shopping_app/core/functions/route.dart';
import 'package:furniture_shopping_app/feature/views/profile/customContainerProfile.dart';
import 'package:furniture_shopping_app/feature/views/profile/myReviews.dart';
import 'package:furniture_shopping_app/feature/views/profile/myorder.dart';
import 'package:furniture_shopping_app/feature/views/profile/settings.dart';
import 'package:furniture_shopping_app/feature/views/profile/shipping_Adress.dart';
import 'package:furniture_shopping_app/feature/views/register_login/login.dart';
import 'package:furniture_shopping_app/feature/widgets/customAppBarIcons.dart';
import 'package:furniture_shopping_app/feature/widgets/customWhiteContainer.dart';
import 'package:furniture_shopping_app/feature/widgets/custombutton.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  String? imagePath;
  String? confirmImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          leading: IconButton(
              onPressed: () {},
              icon: AppBarIcons(
                icon: 'search',
                ontap: () {},
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: AppBarIcons(
                  icon: 'Logout',
                  ontap: () {
                    FirebaseAuth.instance.signOut().then(
                      (value) {
                        gotoPushReplacement(context, const LoginView());
                      },
                    );
                  },
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 160,
                            child: CustomWhiteContainer(
                                widget: Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: CustomElevatedButton(
                                      onPressed: () async {
                                        await UploadImageFromGallery();
                                        AlertDialog(
                                          title: const Text(
                                              'Confirm Photo Change'),
                                          content: const Text(
                                              'Are you sure you want to change your profile photo?'),
                                          actions: [
                                            TextButton(
                                                onPressed: () {},
                                                child: const Text('Confrim')),
                                            TextButton(
                                                onPressed: () {},
                                                child: const Text('Cancle'))
                                          ],
                                        );
                                        setState(() {});
                                      },
                                      textName: 'Upload From Gallery'),
                                ),
                                const Gap(20),
                                SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: CustomElevatedButton(
                                      onPressed: () async {
                                        await UploadImageFromCamera();
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text(
                                                  'Confirm Photo Change'),
                                              content: const Text(
                                                  'Are you sure you want to change your profile photo?'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      imagePath = confirmImage;
                                                      setState(() {
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child:
                                                        const Text('Confrim')),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text('Cancle'))
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      textName: 'Take A Shoot'),
                                )
                              ],
                            )),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      backgroundImage: (imagePath == null)
                          ? const AssetImage('assets/me.jpg')
                          : FileImage(File(imagePath!)) as ImageProvider,
                      radius: 40,
                    ),
                  ),
                  const Gap(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmed Selim',
                        style: GetsmallFontsBlack(fontsize: 20),
                      ),
                      Text(
                        'ahmedshaabanselem@gmail.com',
                        style: GetsmallFontsGrey(fontsize: 14),
                      )
                    ],
                  )
                ],
              ),
              const Gap(50),
              ProfileContainer(
                titile: 'My Orders',
                subTitle: 'Already have 10 orders',
                ontap: () {
                  gotoPush(context, const MyOrderView());
                },
              ),
              const Gap(20),
              ProfileContainer(
                titile: 'Shipping Adress',
                subTitle: '01 Adress',
                ontap: () {
                  gotoPush(context, const ShippingAdressView());
                },
              ),
              const Gap(20),
              ProfileContainer(
                titile: 'Payment Method',
                subTitle: 'You have 1 card',
                ontap: () {},
              ),
              const Gap(20),
              ProfileContainer(
                titile: 'My Reviews',
                subTitle: 'Reviews for 0 times',
                ontap: () {
                  gotoPush(context, const MyReviwsView());
                },
              ),
              const Gap(20),
              ProfileContainer(
                titile: 'Settings',
                subTitle: 'Notification, Password, FAQ, Contact',
                ontap: () {
                  gotoPush(context, const SettingsView());
                },
              ),
            ],
          ),
        ));
  }

  UploadImageFromCamera() async {
    final imagepicked =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (imagepicked != null) {
      confirmImage = imagepicked.path;
      setState(() {});
    }
  }

  UploadImageFromGallery() async {
    final imagepicked =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imagepicked != null) {
      confirmImage = imagepicked.path;
      setState(() {});
    }
  }
}
