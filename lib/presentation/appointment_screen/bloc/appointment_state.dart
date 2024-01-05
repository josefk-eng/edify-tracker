// ignore_for_file: must_be_immutable

part of 'appointment_bloc.dart';

/// Represents the state of Appointment in the application.
class AppointmentState extends Equatable {
  AppointmentState({this.appointmentModelObj});

  AppointmentModel? appointmentModelObj;

  @override
  List<Object?> get props => [
        appointmentModelObj,
      ];
  AppointmentState copyWith({AppointmentModel? appointmentModelObj}) {
    return AppointmentState(
      appointmentModelObj: appointmentModelObj ?? this.appointmentModelObj,
    );
  }
}
