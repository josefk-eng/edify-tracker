// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [appointment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentModel extends Equatable {
  AppointmentModel() {}

  AppointmentModel copyWith() {
    return AppointmentModel();
  }

  @override
  List<Object?> get props => [];
}
