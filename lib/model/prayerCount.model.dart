import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrayerCount extends ChangeNotifier {
  final String _type;
  int _count = 0;
  int maxValue;

  PrayerCount(this._type, this.maxValue);

  String get type => _type;

  int get count => _count;

  void incrementCount() {
     if(_count<maxValue){
    _count++;
   }
    else {
   _count=0;

    }
     saveCount();
    notifyListeners();
  }

  Future<void> loadCount() async {
    final prefs = await SharedPreferences.getInstance();
    _count = prefs.getInt('count_${_type}') ?? 0;
    notifyListeners();
  }

  Future<void> saveCount() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('count_${_type}', _count);
  }
  void resetValue(){
    _count=0;
  saveCount();
    notifyListeners();
  }

}

class SubhanAllahWbehamdaCount extends PrayerCount {
  SubhanAllahWbehamdaCount() : super('SubhanAllahWBehamdo',100);
}

// AstaghfirullahCount inherits from PrayerCount
class AstaghfirullahCount extends PrayerCount {
  AstaghfirullahCount() : super('Astaghfirullah',100);

}
class SubhanAllahCount extends PrayerCount {
  SubhanAllahCount() : super('SubhanAllah',33);
}
class ElhamedAllahCount extends PrayerCount {
  ElhamedAllahCount() : super('ElhamedAllah',33);
}
class LaelAllahCount extends PrayerCount {
  LaelAllahCount() : super('LaelAllah',33);
}
class LaHawlaCount extends PrayerCount {
  LaHawlaCount() : super(' LaHawla',100);
}
class AlhamSaliCount extends PrayerCount {
  AlhamSaliCount() : super(' AlhamSali',10000);
}
class GhersElGanaCount extends PrayerCount {
  GhersElGanaCount() : super(' GhersElGana',100);
}
class SalaNariaCount extends PrayerCount {
  SalaNariaCount() : super(' SalaNaria',4444);
}
class SalaSahabiaCount extends PrayerCount {
  SalaSahabiaCount() : super(' SalaSahabia',4000);
}