import 'bloc/appointment_bloc.dart';
import 'models/appointment_model.dart';
import 'package:edify_progress_tracker/core/app_export.dart';
import 'package:edify_progress_tracker/widgets/app_bar/appbar_leading_image.dart';
import 'package:edify_progress_tracker/widgets/app_bar/appbar_title.dart';
import 'package:edify_progress_tracker/widgets/app_bar/appbar_trailing_image.dart';
import 'package:edify_progress_tracker/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentBloc>(
        create: (context) => AppointmentBloc(
            AppointmentState(appointmentModelObj: AppointmentModel()))
          ..add(AppointmentInitialEvent()),
        child: AppointmentScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 81.v),
                        _buildScriptureScroll(context),
                        SizedBox(height: 8.v),
                        Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 38.h, vertical: 31.v),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl_october".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimaryContainerBold),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgArrowDown,
                                          height: 9.v,
                                          width: 15.h,
                                          margin: EdgeInsets.only(
                                              left: 36.h,
                                              top: 3.v,
                                              bottom: 4.v))
                                    ])))
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 5.v),
            onTap: () {
              onTapMegaphone(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_my_appointments".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame5,
              margin: EdgeInsets.fromLTRB(26.h, 4.v, 26.h, 6.v))
        ]);
  }

  /// Section Widget
  Widget _buildScriptureScroll(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  width: 360.h,
                  margin: EdgeInsets.only(bottom: 3.v),
                  child: Text("msg_i_press_toward_the2".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleSmallGray5002))),
          Container(
              width: 1.h,
              margin: EdgeInsets.only(left: 2.h),
              child: Text("msg_many_are_the_plans".tr,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallGray5002))
        ]));
  }

  /// Navigates to the sideMenuScreen when the action is triggered.
  onTapMegaphone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sideMenuScreen,
    );
  }
}
