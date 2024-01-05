import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:edify_progress_tracker/data/models/sheetmodels/month.dart';
import 'package:edify_progress_tracker/presentation/home_screen/cubits/home_cubit.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:edify_progress_tracker/core/app_export.dart';
import 'package:edify_progress_tracker/widgets/app_bar/appbar_leading_image.dart';
import 'package:edify_progress_tracker/widgets/app_bar/appbar_trailing_image.dart';
import 'package:edify_progress_tracker/widgets/app_bar/custom_app_bar.dart';
import 'package:edify_progress_tracker/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    // var arg =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(
            homeModelObj: HomeModel(),
            authcode: "", //arg[NavigationArgs.authcode],
            id: "", //arg[NavigationArgs.id],
            name: "", //arg[NavigationArgs.name],
            email: "", //arg[NavigationArgs.email],
            image_path: "", //arg[NavigationArgs.imagePath],
            image: "", //arg[NavigationArgs.image],
            user: "")) //arg[NavigationArgs.user]))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: _buildScriptureScroll(context),
                        ),
                        Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 10.v),
                              decoration: AppDecoration.fillOnPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL30),
                              child: BlocBuilder<HomeCubit, HState>(
                                builder: (context, state) {
                                  if (state is DataFetchState) {
                                    context.read<HomeCubit>().fetchData(null);
                                  }
                                  return Stack(
                                    children: [
                                        Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: DButton()),
                                              SizedBox(height: 10.v),
                                              _buildProgramGrowthTitle(context),
                                              SizedBox(height: 20.v),
                                              _buildSixtyFive(context, state is DataLoadedState ? state.periodic:Periodic()),
                                              SizedBox(height: 27.v)
                                            ]),
                                      if (state is DataFetchState)      
                                        Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.2)),
                                        ),
                                      if (state is DataFetchState)  
                                        Align(
                                          alignment: Alignment.center,
                                          child: CircularProgressIndicator(),
                                        )
                                    ],
                                  );
                                },
                              )),
                        )
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
        title: Text(""), //AppbarTitle(text: "lbl_home".tr),
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
        child: _buildCarousel());
  }

  Widget _buildCarousel() {
    return CarouselSlider(
        items: ["msg_i_press_toward_the2".tr, "msg_many_are_the_plans".tr]
            .map((e) => Text(
                  e,
                  style: CustomTextStyles.titleSmallGray5002,
                  textAlign: TextAlign.center,
                ))
            .toList(),
        options: CarouselOptions(
            viewportFraction: 1, aspectRatio: 30 / 8, autoPlay: true));
  }

  /// Section Widget
  Widget _buildProgramGrowthTitle(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("msg_a_program_growth".tr,
                style: CustomTextStyles.titleSmallOnPrimaryContainerBold),
          )),
      CustomImageView(
          imagePath: ImageConstant.imgClockLightBlue900,
          height: 34.adaptSize,
          width: 34.adaptSize,
          margin: EdgeInsets.only(left: 32.h))
    ]);
  }

  /// Section Widget`
  Widget _buildSixtyFive(BuildContext context, Periodic p) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(child: PWidget(plan: p.nspQuarterly, actual: p.nsMonthly)
              // Padding(
              //     padding: EdgeInsets.only(right: 14.h),
              //     child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Padding(
              //               padding: EdgeInsets.only(left: 13.h),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Text("lbl_new_schools".tr,
              //                       style: theme.textTheme.labelLarge),
              //                   CustomIconButton(
              //                       height: 30.adaptSize,
              //                       width: 30.adaptSize,
              //                       padding: EdgeInsets.all(8.h),
              //                       decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL16,
              //                       child: CustomImageView(imagePath: ImageConstant.imgPlus))
              //                 ],
              //               )),
              //           SizedBox(height: 10.v),
              //           Column(children: [
              //             PWidget(plan: 150, actual: 10),
              //             // SizedBox(height: 11.v),
              //             // Padding(
              //             //     padding: EdgeInsets.only(right: 2.h),
              //             //     child: _buildSixtySeven(context,
              //             //         ten: "lbl_10".tr,
              //             //         of: "lbl_of".tr,
              //             //         plannedValue: "lbl_02".tr))
              //           ])
              //         ]))
              ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("lbl_core_schools".tr,
                                style: theme.textTheme.labelLarge)),
                        SizedBox(height: 10.v),
                        Column(children: [
                          SizedBox(
                              height: 189.adaptSize,
                              width: 189.adaptSize,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 189.adaptSize,
                                        width: 189.adaptSize,
                                        child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor:
                                                appTheme.blueGray100,
                                            color: theme.colorScheme
                                                .onPrimaryContainer))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_0".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnPrimaryContainer))
                              ])),
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(right: 2.h),
                              child: _buildSixtySeven(context,
                                  ten: "lbl_10".tr,
                                  of: "lbl_of".tr,
                                  plannedValue: "lbl_02".tr))
                        ])
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildSixtySeven(
    BuildContext context, {
    required String ten,
    required String of,
    required String plannedValue,
  }) {
    return SizedBox(
        width: 186.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 114.h,
              margin: EdgeInsets.only(top: 4.v),
              padding: EdgeInsets.symmetric(vertical: 6.v),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(ten,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: appTheme.black900))),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(of,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: appTheme.black900))),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: Text(plannedValue,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: appTheme.black900))),
                    CustomIconButton(
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgTelevision))
                  ])),
          CustomIconButton(
              height: 37.adaptSize,
              width: 37.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL16,
              child: CustomImageView(imagePath: ImageConstant.imgPlus))
        ]));
  }

  /// Navigates to the sideMenuScreen when the action is triggered.
  onTapMegaphone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sideMenuScreen,
    );
  }
}

class DButton extends StatefulWidget {
  const DButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DButtonState();
}

class DButtonState extends State<StatefulWidget> {
  String value = "October";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        elevation: 0,
        value: value,
        padding: EdgeInsets.all(0),
        items: [
          'October',
          'November',
          'December',
          'January',
          'February',
          'March',
          'April',
          'May',
          'June',
          'July',
          'August',
          'September'
        ]
            .map((e) => DropdownMenuItem<String>(
                value: e,
                child: Text(e,
                    style: CustomTextStyles.titleSmallOnPrimaryContainerBold)))
            .toList(),
        onChanged: (newValue) {
          setState(() {
            value = newValue!;
          });
        });
  }
}

class PWidget extends StatefulWidget {
  final int plan;
  final int actual;

  const PWidget({Key? key, required this.actual, required this.plan})
      : super(key: key);
  @override
  State<PWidget> createState() => PWidgetState();
}

class PWidgetState extends State<PWidget> {
  double percent = 0.0;
  int cachedPlan = 0;
  int cachedActual = 0;
  bool _isEnable = false;
  bool _isActualChanged = false;

  @override
  Widget build(BuildContext context) {
    cachedPlan = widget.plan;
    cachedActual = widget.actual;
    TextEditingController _controller =
        TextEditingController(text: cachedActual.toString());
    percent = int.parse(_controller.text) / cachedPlan;
    // _controller.addListener(() {
    //   percent = int.parse(_controller.text)/cachedPlan;
    // });

    final style = TextStyle(
        fontWeight: FontWeight.bold,
        color: theme.colorScheme.onPrimaryContainer);
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_new_schools".tr, style: theme.textTheme.labelLarge),
                  CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration:
                        IconButtonStyleHelper.fillOnPrimaryContainerTL16,
                    child: CustomImageView(imagePath: ImageConstant.imgPlus),
                    onTap: () {
                      _controller.text =
                          (int.parse(_controller.text) + 1).toString();
                    },
                  )
                ],
              )),
          SizedBox(height: 10.v),
          Container(
              child: new CircularPercentIndicator(
            radius: 70,
            lineWidth: 13.0,
            animation: true,
            percent: percent,
            center: new Text(
              percent.toStringAsFixed(1) + "%",
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 30),
                    child: IntrinsicWidth(
                      child: TextField(
                        style: style,
                        controller: _controller,
                        onChanged: (newValue) {
                          print(newValue);
                        },
                        enabled: _isEnable,
                      ),
                    ),
                  ),
                  Text("Of"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    cachedPlan.toString(),
                    style: style,
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isEnable = !_isEnable;
                      _isActualChanged = !_isActualChanged;
                    });
                  },
                  icon: Icon(
                    _isEnable || _isActualChanged
                        ? Icons.check_circle
                        : Icons.edit,
                    color: theme.colorScheme.onPrimaryContainer,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
