import 'package:gsheets/gsheets.dart';

class UserSheetApi{
  static const _credentials = r'''
    {
  "type": "service_account",
  "project_id": "test-gsheet-409320",
  "private_key_id": "d38fe7629415d0d71dd15c0c06ad61c2e17257d3",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC3VVTOqt2oZvE+\nCqF9EZbeDnU2fyk6pWEGI2xFlkvvLLn5LC7Yxb1QHVxO8oIKxrYL6t8WxwJevSCy\nmjijitK9Ubasewg6MNlgswAH1UbzhZGjgXmT7bBLwoxDwyDK9F8ST/T0qcxcBo1M\nFpDANAMvq9e1Rb/4GP8HN90zvwjTq5X2OkXAFXqkPJbs9Ii+40kSwycfCrWBQV+Z\nm10IM6YVr68Qigiwkwp3S/b8B3F+DMzNlN/YfHUFH2uDyvnO/7V/WJaO4CVviQCe\nrJWdTw0mbVvwik++O/Ka7bUM77ZiSzKXkiFKKuy71UKPyKYlcQQR9HZEYR6UiizQ\nw5RpUGJnAgMBAAECggEAEGZXOEeLnYFb6i9cQ8pbgxCrBo14fDEIDVsE1/K6ZzJK\njpIXvLdvmGeP9tX1sQ4WgdloTGrP+PaVIrTuBR8pe9r/6sz0rvPotiA9C/ZVqvoT\nTZuK6yMzhotoLbWaTN1wVbyGTo6T49WINTq9hxv//vcxzBrpscFWqugh5vubSAfl\n0eKhCxvuXefGtay84R/q276uhO6tkqqJh78/Oc50yOuHMeG6Mu/hHRZHW3BxsBsM\nrfX3C4MeoPpX9Zl9VBz/jTM8ce6dlGx0HiOx/Hzq+6q2xtp//Piuj0WWC3uc03sk\n8FLXxC5WDqLa9Pws8GTxByoIflinRHIZ5zD8R2cYAQKBgQDz3CPFe7zWmefRuDaK\nCgOez19oC9j60azd1sGarGBPnPlSzgw0bjBJG5ZPO5jRpFWP2pILkZVOaVJ8cQKv\nKxbsaEzRVA9/XsJb1J5T924kbbptt1WXX6o1Bh1RfuTlMkzQAG3CurcZu2wiOgsI\n0afSP/6FVUeE7UKoqmeg+Z2oAQKBgQDAddA+TAhnLNgNINqd1iKhN43UiFLJA/v9\nb8LmiOd25mQhNBtEshVf305RoU5Tq6h85lHB+zhdsNPbnz2hAoWycJhff86NWRwI\nkK9XA+BzqtkIZivXPlXZcW/kWUkCAOZT8P9KtmY2ILTdAb2eLP4fdBK7nxK3ts8Q\n/HcXbFHKZwKBgQCBux5opCBdBnmWT2rsWtF8PhQidRMUtFFDn0lV8Ng34mmdTLKf\nffNAIWYAdtMgzE0cf4nsj6GfmlZgj3p/F+xVDlO3lQG9n/rEAcPNJbe5t4pTbhIh\nuqoBFWSpg1lgOTc1/NRnoQ9hqBypxLk0Et019AeChVDL/bDVq/n/YGwoAQKBgE4R\nfB9JCD+R2TG6GfPcYL+0oTuM8MfJbfYn149cCUgZvJQbZtQ+yJzTIBnMrNET2IyR\ngKiHFx4qFEYKGh2twD3ZnnVeipKbituOlRFe6TUCIHdfunjdOEWz1gdykELXypZS\nM7xCsMNUEQl1I01+QrbPhqnEpPsQlH33avd9YNARAoGBAI8fnTf4q1movcXezO0v\naXQe6UUx3YF7G3wZzN16O4YSS+5EFpAPiJ6tvOaqIsKVf8SsuLLQnf4D5yDlPopb\nbMsYapFl98xsj44Q3IVicFuJteYAAa085QLawQd+zsibqU/gvDrIzn5jFj9ufogg\nFfwyN0Qj7qKxQl2Woaw7guOO\n-----END PRIVATE KEY-----\n",
  "client_email": "test-gsheet@test-gsheet-409320.iam.gserviceaccount.com",
  "client_id": "110596286448518726335",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/test-gsheet%40test-gsheet-409320.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

   ''';

  static final _spreadsheetId = '19POe2aj2VhaFf4EK7-nIWL2Bead-_yT2LryTr01Fhe4';
  static final _gSheets = GSheets(_credentials);
  static Worksheet? _userWorksheet;

  static Future<List<String>> init(int? mo) async{
    final spreadsheet = await _gSheets.spreadsheet(_spreadsheetId);
    _userWorksheet = await _getWorksheet(spreadsheet, title: 'Mollson');
    var date = DateTime.now();
    int month = mapMonths(mo ?? date.month);
    return _userWorksheet?.values.row(month) ?? Future(() => List.empty());
  }

  static Future<Worksheet> _getWorksheet(Spreadsheet spreadsheet, {required String title}) async {
    try {
      return await spreadsheet.addWorksheet(title);
    }catch(e){
      return await spreadsheet.worksheetByTitle(title)!;
    }
  }

  static int mapMonths(int month){
    int res = month;
    switch (month){
      case 1:
        res = 13;
        break;
      case 2:
        res = 14;
        break;
      case 3:
        res = 15;
        break;
      case 4:
        res = 16;
        break;
      case 5:
        res = 17;
        break;
      case 6:
        res = 18;
        break;
      case 7:
        res = 19;
        break;
      case 8:
        res = 20;
        break;
      case 9:
        res = 21;
        break;
    }
    return res;
  }
}
