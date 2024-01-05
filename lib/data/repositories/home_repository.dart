import 'package:edify_progress_tracker/data/apiClient/api_client.dart';
import 'package:edify_progress_tracker/data/models/sheetmodels/month.dart';

class HomeRepository{
  Future<Periodic> getMonthlyData(int? query) async{
    Periodic p = Periodic();
    await UserSheetApi.init(query).then((value){
      p = p.copyWith(nsMonthly: int.parse(value[5]), nsQuarterly: int.parse(value[7]));
    });
    return p;
  }
}



//[, , 4, JANUARY, Quarter 2, 1, 1, 36, -35, , , , , , , , , Servant Leadership, ECD /Parish fellowship, Cliet, 1, 40, -39, , 10, -10, , 4, -4, , , , 0, , , 0, , , 0, Client (0), Core (0), Client (75), Core (5), -80, , , , 0, , 200, -200, , 12, -12, , , , , , 80, -80, , , 0, , 30, -30, , 10, -10, , , 0, , 50, -50, , , 60, -60, -]