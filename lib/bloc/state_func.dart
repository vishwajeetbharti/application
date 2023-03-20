part of 'bloc_func.dart';

abstract class StateFunctions {}

class ErrorMassage extends StateFunctions {
  ErrorMassage();
}

class LoginPhase extends StateFunctions {
  LoginPhase();
}

class HomePhase extends StateFunctions {
  String userName;
  HomePhase({required this.userName});
}

class RecordsState extends StateFunctions {
  List record;
  RecordsState({required this.record});
}
