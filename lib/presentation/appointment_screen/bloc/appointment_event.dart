// ignore_for_file: must_be_immutable

part of 'appointment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Appointment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentEvent extends Equatable {}

/// Event that is dispatched when the Appointment widget is first created.
class AppointmentInitialEvent extends AppointmentEvent {
  @override
  List<Object?> get props => [];
}
