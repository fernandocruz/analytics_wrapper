library analytics_wrapper;

import 'package:analytics_wrapper/analytics_event.dart';

import 'analytics_engine.dart';

class AnalyticsWrapper {

  final List<AnalyticsEngine> _engines;
  final String _prefixEventName;

  AnalyticsWrapper(this._engines, this._prefixEventName);

  void init(){
    _engines.forEach((engine) {
      engine.init();
    });
  }

  Future<void> log(AnalyticsEvent event) async {
    _engines.forEach((engine) async {
      await engine.sendAnalyticsEvent(event);
    });
  }

  Future<void> setUser(String user) async {
    _engines.forEach((engine) async {
      await engine.setUser(user);
    });
  }

}