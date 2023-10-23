import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoping_list_application/product/constant/image/image_constants.dart';
import 'package:shoping_list_application/product/utility/extension/context_extension.dart';

@RoutePage(name: 'SignUpRoute')
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: context.width,
        height: context.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstants.instance.createAccount),
                fit: BoxFit.fill,
                opacity: 0.6)),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  padding: context.paddingHorizontal2,
                  onPressed: () => context.router.pop(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 24.sp,
                  )),
            ),
            SizedBox(height: 50.h),
            Text("Create a New Account"),
            SizedBox(height: 10.h),
            TextField(),
            TextField(),
            TextField(),
            ElevatedButton(onPressed: () {}, child: Text("Create an account")),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Already a member?"), Text("Sign in")],
            )
          ],
        ),
      ),
    );
  }
}
