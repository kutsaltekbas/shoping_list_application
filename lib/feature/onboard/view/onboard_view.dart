import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_list_application/product/constant/image/image_constants.dart';
import 'package:shoping_list_application/product/init/navigation/app_router.dart';
import 'package:shoping_list_application/product/utility/extension/context_extension.dart';

@RoutePage(name: 'OnBoardRoute')
class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: context.width,
        height: context.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageConstants.instance.onboard),
              fit: BoxFit.fill,
              opacity: 0.6),
        ),
        child: Padding(
          padding: context.paddingHorizontal3,
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Text("Welcome to Shoping App"),
              Text("The Right Way to Make Your Shopping Easier"),
              const Spacer(),
              Text("Save Your Time & Energy"),
              SizedBox(height: 10.h),
              Text(
                  "Make shopping smarter, avoid extra trips to the supermarkets & malls and get more organized using Shopifylist."),
              SizedBox(height: 30.h),
              Row(
                children: [
                  SizedBox(
                      height: 30.h,
                      width: 150.w,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Sign in"))),
                  const Spacer(),
                  SizedBox(
                      height: 30.h,
                      width: 150.w,
                      child: ElevatedButton(
                          onPressed: () {
                            context.router.push(const SignUpRoute());
                          },
                          child: Text("Sign up"))),
                ],
              ),
              SizedBox(height: 30.h)
            ],
          ),
        ),
      ),
    );
  }
}
