// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.authcode,
    this.id,
    this.name,
    this.email,
    this.image_path,
    this.image,
    this.user,
    this.homeModelObj,
  });

  HomeModel? homeModelObj;

  var authcode;

  var id;

  var name;

  var email;

  var image_path;

  var image;

  var user;

  @override
  List<Object?> get props => [
        authcode,
        id,
        name,
        email,
        image_path,
        image,
        user,
        homeModelObj,
      ];
  HomeState copyWith({
    var authcode,
    var id,
    var name,
    var email,
    var image_path,
    var image,
    var user,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      authcode: authcode ?? this.authcode,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      image_path: image_path ?? this.image_path,
      image: image ?? this.image,
      user: user ?? this.user,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
