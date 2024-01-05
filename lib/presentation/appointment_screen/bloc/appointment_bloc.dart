import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:edify_progress_tracker/presentation/appointment_screen/models/appointment_model.dart';
part 'appointment_event.dart';
part 'appointment_state.dart';

/// A bloc that manages the state of a Appointment according to the event that is dispatched to it.
class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  AppointmentBloc(AppointmentState initialState) : super(initialState) {
    on<AppointmentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AppointmentInitialEvent event,
    Emitter<AppointmentState> emit,
  ) async {}
}
