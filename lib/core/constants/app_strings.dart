import 'dart:ui';

class AppStrings {
  static final String _langCode = PlatformDispatcher.instance.locale.languageCode;

  static String _tr(Map<String, String> map) {
    return map[_langCode] ?? map['en']!;
  }

  static String get appName => _tr({'en': 'CodeyDo', 'ar': 'CodeyDo'});
  static String get welcome => _tr({'en': 'Welcome!', 'ar': 'أهلاً بيك!'});
  static String get login => _tr({'en': 'Login', 'ar': 'تسجيل الدخول'});
  static String get logout => _tr({'en': 'Logout', 'ar': 'تسجيل الخروج'});
  static String get confirm => _tr({'en': 'Confirm', 'ar': 'تأكيد'});
  static String get cancel => _tr({'en': 'Cancel', 'ar': 'إلغاء'});
  static String get settings => _tr({'en': 'Settings', 'ar': 'الإعدادات'});
  static String get language => _tr({'en': 'Language', 'ar': 'اللغة'});
  static String get networkError => _tr({'en': 'Check your internet connection', 'ar': 'تحقق من اتصالك بالإنترنت'});
  static String get loading => _tr({'en': 'Loading...', 'ar': 'جاري التحميل...'});
  static String get noData => _tr({'en': 'No data available', 'ar': 'لا توجد بيانات'});
  static String get profile => _tr({'en': 'Profile', 'ar': 'الملف الشخصي'});
  static String get home => _tr({'en': 'Home', 'ar': 'الرئيسية'});
  static String get search => _tr({'en': 'Search', 'ar': 'بحث'});
  static String get notifications => _tr({'en': 'Notifications', 'ar': 'الإشعارات'});
  static String get toDo => _tr({'en': 'To Do', 'ar': 'يلا بينا'});
  static String get add => _tr({'en': 'Add', 'ar': 'أضف'});
}
