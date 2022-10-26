import '../DataBase.dart';
import '../model/user_details_model.dart';

class UserDetailsRepo {
  Future<bool> insert(UserDetailsModel userDetails) async {
    bool status = false;
    DataBaseHelper dataBaseHelper = DataBaseHelper.instance;

    int number = await dataBaseHelper.insert(userDetails.toMap());
    if (number > 0) {
      status = true;
    }
    return status;
  }

  Future<String> readName(String name) async {
    DataBaseHelper dataBaseHelper = DataBaseHelper.instance;
    return name;
  }
}
