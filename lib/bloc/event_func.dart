part of 'bloc_func.dart';

abstract class EventFunctions {}

class SetData extends EventFunctions {
  String name, startDate, average, endDate;

  SetData(
      {required this.name,
      required this.startDate,
      required this.endDate,
      required this.average});
}

class FutureSetData extends EventFunctions {
  String endDate;

  FutureSetData({
    required this.endDate,
  });
}

class InitiatePhase extends EventFunctions {
  InitiatePhase();
}

class RecordsPhase extends EventFunctions {
  RecordsPhase();
}
