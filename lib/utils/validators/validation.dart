class HValidator {
  static String? validateEmail(String email) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (email.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    } else if (!emailRegExp.hasMatch(email)) {
      return 'يرجى إدخال بريد إلكتروني صالح';
    }
    return null;
  }

  static String? validatePassword(String password) {
    final RegExp passwordRegExp = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[!$%^&*?@#])[A-Za-z\d!$%^&*?@#]{8,}$',
    );
    if (password.isEmpty) {
      return 'كلمة المرور مطلوبة';
    } else if (!passwordRegExp.hasMatch(password)) {
      return 'يرجى إدخال كلمة مرور قوية (تحتوي على حرف وأرقام ورمز خاص)';
    }
    return null;
  }

  static String? validatePhoneNumber(String phoneNumber) {
    final RegExp phoneRegExp = RegExp(
      r'^\+?[1-9]\d{1,14}$',
    );
    if (phoneNumber.isEmpty) {
      return 'رقم الهاتف مطلوب';
    } else if (!phoneRegExp.hasMatch(phoneNumber)) {
      return 'يرجى إدخال رقم هاتف صالح';
    }
    return null;
  }
}
