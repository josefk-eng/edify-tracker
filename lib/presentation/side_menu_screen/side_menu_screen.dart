import 'package:edify_progress_tracker/domain/googleauth/google_auth_helper.dart';

import 'bloc/side_menu_bloc.dart';
import 'models/side_menu_model.dart';
import 'package:edify_progress_tracker/core/app_export.dart';
import 'package:edify_progress_tracker/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SideMenuBloc>(
      create: (context) => SideMenuBloc(SideMenuState(
        sideMenuModelObj: SideMenuModel(),
      ))
        ..add(SideMenuInitialEvent()),
      child: SideMenuScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SideMenuBloc, SideMenuState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 300.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 88.v),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                          child: IconButton(
                          onPressed: (){
                            NavigatorService.pushNamed(
                              AppRoutes.homeScreen,
                            );
                          },
                          icon: Icon(Icons.close, color: Colors.white,))),
                      CustomImageView(
                      imagePath: ImageConstant.imgUnsplashKzv7w34tlua,
                      height: 119.v,
                      width: 118.h,
                      radius: BorderRadius.circular(
                        59.h,
                      ),
                      margin: EdgeInsets.only(left: 32.h),
                    ),]
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "lbl_joseph_kigozi".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "msg_jkigozi_edify_org".tr,
                      style: CustomTextStyles.titleSmallOnPrimary,
                    ),
                  ),
                  SizedBox(height: 54.v),
                  Expanded(
                    child: Container(
                      width: 300.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.h,
                        vertical: 37.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 18.v),
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgHome,
                                height: 19.v,
                                width: 25.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_home".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30.v),
                          Padding(
                            padding: EdgeInsets.only(right: 48.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgClock,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    top: 3.v,
                                  ),
                                  child: Text(
                                    "lbl_my_appointments".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CustomElevatedButton(
                            height: 39.v,
                            width: 107.h,
                            text: "lbl_log_out".tr,
                            buttonStyle:
                                CustomButtonStyles.fillOnPrimaryContainer,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumGray5001,
                            onPressed: (){
                              googleSignOut(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

googleSignOut(BuildContext context) async {
  await GoogleAuthHelper().googleSignOutProcess().then((googleUser){
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }).catchError((onError) {
    print(onError.toString());
  });

}
