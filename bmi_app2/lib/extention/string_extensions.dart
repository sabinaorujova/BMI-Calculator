extension StringExtension on String? {
  String? get checkValidation{
    if (this ==''){
      return'';
    }
    return null;
  }
  bool get isNull => this == null||this=='';
  }
