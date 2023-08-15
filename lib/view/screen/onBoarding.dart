import 'package:ecommerce_course/core/constant/color.dart';
import 'package:ecommerce_course/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Title'),
      // ),
      body: SafeArea(
        child: PageView.builder(
          itemCount: onboardingList.length,
          itemBuilder: ((context, index) => Column(
                children: [
                  Text(
                    onboardingList[index].title!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 80),
                  Image.asset(onboardingList[index].image!),
                  const SizedBox(height: 80),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onboardingList[index].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColor.grey,
                        height: 2,
                        // fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
