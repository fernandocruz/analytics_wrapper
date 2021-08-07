import 'package:analytics_wrapper/analytics_event.dart';

abstract class AnalyticsEngine {
  void init();
  Future<void> sendAnalyticsEvent(AnalyticsEvent event);
  Future<void> setUser(dynamic user);
}