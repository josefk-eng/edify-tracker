import 'package:edify_progress_tracker/core/app_export.dart';
import 'package:edify_progress_tracker/data/models/sheetmodels/month.dart';
import 'package:edify_progress_tracker/data/repositories/home_repository.dart';

class HomeCubit extends Cubit<HState>{
  final HomeRepository _repository;

  HomeCubit(this._repository) : super(DataFetchState());

  fetchData(int? month) async{
    try{
      _repository.getMonthlyData(month).then((value) {
        emit(DataLoadedState(periodic: value));
      });
    }catch(e){
      emit(DataErrorState(error: e.toString()));
    }
  }

}

abstract class HState {}

class DataFetchState extends HState {
  final bool loader;

  DataFetchState({this.loader = true});
}

class DataLoadedState extends HState {
  final Periodic periodic;

  DataLoadedState({required this.periodic});
}

class DataErrorState extends HState {
  final String error;

  DataErrorState({required this.error});
}