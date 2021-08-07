import 'analytics_event.dart';

class AnalyticsEventFactory {
  static String createName({String prefix, String eventName}) {
    return '${prefix}_${eventName.split('.').last}'.toLowerCase();
  }
  static AnalyticsEvent createEvent({String name, Map<String, dynamic> meta}) {
    return AnalyticsEvent(eventName: name, meta: meta);
  }
}