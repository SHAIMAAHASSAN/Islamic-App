import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*class TasbehProvider extends ChangeNotifier {
  Map<String, double> _widgetValues = {};

  Map<String, double> get widgetValues => _widgetValues;

  void incrementCount(String widgetId) {
    double value = _widgetValues[widgetId] ?? 0;
    if (value < 33) {
      value++;
    } else {
      value = 0;
    }
    _widgetValues[widgetId] = value;
    _saveValues(value);
    notifyListeners();
  }

  void resetValue(String widgetId) {
    double value = _widgetValues[widgetId] ?? 0;
    _widgetValues[widgetId] = 0;
    _saveValues(value);
    notifyListeners();
  }

  Future<void> _saveValues(double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('widgetValues', _encodeWidgetValues());
  }

  String _encodeWidgetValues() {
    return _widgetValues.entries.map((entry) {
      return '${entry.key}:${entry.value}';
    }).join(',');
  }

  Future<void> _loadSavedValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? widgetValuesString = prefs.getString('widgetValues');
    if (widgetValuesString != null && widgetValuesString.isNotEmpty) {
      List<String> keyValuePairs = widgetValuesString.split(',');
      _widgetValues = keyValuePairs.fold<Map<String, double>>({}, (map, pair) {
        var split = pair.split(':');
        map[split[0]] = double.parse(split[1]);
        return map;
      });
    }
  }

  Future<void> initialize() async {
    await _loadSavedValues();
    notifyListeners();
  }
}*/

class TasbehProvider extends ChangeNotifier{


  double _value = 0.0;
 // final String id;

  double get value => _value;

 /*TasbehProvider({required this.id}) {
    loadSavedValue(); // Load initial value based on id
  }
*/
  set value(double newValue) {
    _value = newValue;
    notifyListeners();
  }

  void incrementCount() {
    if(_value<33){
  _value++;
  _saveValue(_value);}
  else {
    _value=0;
  _saveValue(value);
  }

  notifyListeners();


  }

  void _saveValue(double value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('barValue', value);
  }

  void loadSavedValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _value = prefs.getDouble('barValue') ?? 0;
    notifyListeners();
  }

  void resetValue(){
    _value=0;
    _saveValue(value);
    notifyListeners();
  }

}
