import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/certificate_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/certification_controller.dart';

class CertificateStack extends StatelessWidget {
  final controller = Get.put(CertificationController());
  CertificateStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {},
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  certificateList[index].name,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: textColor, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      certificateList[index].organization,
                      style: const TextStyle(color: Colors.amber),
                    ),
                    Text(
                      certificateList[index].date,
                      style:
                          const TextStyle(color: bodyTextColor, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Text.rich(
                  maxLines: 1,
                  TextSpan(
                      text: 'Skills : ',
                      style: const TextStyle(
                        color: textColor,
                      ),
                      children: [
                        TextSpan(
                          text: certificateList[index].skills,
                          style: const TextStyle(
                              color: bodyTextColor,
                              overflow: TextOverflow.ellipsis),
                        )
                      ]),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                InkWell(
                  onTap: () {
                    launchUrl(Uri.parse(certificateList[index].credential));
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                          linearColorOne,
                          linearColorTwo,
                        ]),
                        boxShadow: const [
                          BoxShadow(
                              color: boxShadowOne,
                              offset: Offset(0, -1),
                              blurRadius: 5),
                          BoxShadow(
                              color: boxShadowTwo,
                              offset: Offset(0, 1),
                              blurRadius: 5),
                        ]),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Credentials',
                          style:
                              TextStyle(color: buttonTextColor, fontSize: 10),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.arrow_turn_up_right,
                          color: buttonTextColor,
                          size: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
