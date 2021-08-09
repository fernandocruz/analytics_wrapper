import 'analytics_event.dart';

class AnalyticsEventFactory {
  static String createName({String? prefix, required String eventName}) {
    if (prefix != null && prefix.isNotEmpty) {
      return '${prefix}_${eventName
          .split('.')
          .last}'.toLowerCase();
    }
    return '${eventName
        .split('.')
        .last}'.toLowerCase();
  }
  static AnalyticsEvent createEvent({required String name, Map<String, dynamic>? meta}) {
    return AnalyticsEvent(eventName: name, meta: meta);
  }
}