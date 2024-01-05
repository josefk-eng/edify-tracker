import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:edify_progress_tracker/core/app_export.dart';
import 'package:edify_progress_tracker/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:edify_progress_tracker/domain/googleauth/google_auth_helper.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v),
                  child: Column(children: [
                    Spacer(flex: 52),
                    _buildSigninCard(context),
                    Spacer(flex: 47),
                    SizedBox(
                        width: 246.h,
                        child: Text("msg_copyright_20242".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumOnPrimary))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildSigninCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 63.h, vertical: 34.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEdify1, height: 194.v, width: 210.h),
          SizedBox(height: 30.v),
          CustomElevatedButton(
              text: "msg_login_with_your".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 17.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGoogleLogo,
                      height: 21.v,
                      width: 20.h)),
              onPressed: () {
                googleSignIn(context);
              })
        ]));
  }

  googleSignIn(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        onSuccessGoogleAuthResponse(googleUser, context);
      } else {
        onErrorGoogleAuthResponse(context);
      }
    }).catchError((onError) {
      onErrorGoogleAuthResponse(context);
    });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onSuccessGoogleAuthResponse(
    GoogleSignInAccount googleUser,
    BuildContext context,
  ) {
    NavigatorService.popAndPushNamed(AppRoutes.homeScreen, arguments: {
      NavigationArgs.authcode: googleUser.serverAuthCode,
      NavigationArgs.id: googleUser.id,
      NavigationArgs.name: googleUser.displayName,
      NavigationArgs.email: googleUser.email,
      NavigationArgs.imagePath: googleUser.photoUrl,
      NavigationArgs.image: googleUser.photoUrl,
      NavigationArgs.user: googleUser.displayName
    });
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Something went wrong while Signing you in, please try again`
  onErrorGoogleAuthResponse(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('An Error Ocurred'),
              content: const Text(
                  'Something went wrong while Signing you in, please try again'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok'))
              ],
            ));
  }
}
