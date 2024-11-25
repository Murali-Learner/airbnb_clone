import 'package:airbnb_clone/models/country_model.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier {
  final TextEditingController mobileController = TextEditingController();

  bool _isDropdownFocused = false;
  bool _isTextFieldFocused = false;
  bool _showDivider = true;
  Country _selectedCountry = Country(name: "India", code: "+91");
  String _mobileNumberError = "";
  final String _otpError = "";
  String _otpValue = '';

  final List<Country> countries = [
    Country(name: "India", code: "+91"),
    Country(name: "Colombia", code: "+57"),
    Country(name: "USA", code: "+1"),
    Country(name: "Canada", code: "+1"),
    Country(name: "Australia", code: "+61"),
  ];

  bool get isDropdownFocused => _isDropdownFocused;
  Country get selectedCountry => _selectedCountry;
  String get otpValue => _otpValue;
  bool get isTextFieldFocused => _isTextFieldFocused;
  bool get showDivider => _showDivider;
  String get mobileNumberError => _mobileNumberError;

  void focusDropdown() {
    _showDivider = false;
    _isDropdownFocused = true;
    _isTextFieldFocused = false;
    notifyListeners();
  }

  void changeCountry(Country country) {
    _selectedCountry = country;
    notifyListeners();
  }

  void setMobileError() {
    _mobileNumberError = "Enter valid mobile number";
    notifyListeners();
  }

  void setOtpError() {
    _otpValue = "Sorry something went wrong, Please try again!";
    notifyListeners();
  }

  void setOtpValue(String value) {
    _otpValue = value;
    notifyListeners();
  }

  void setDropdownFocus() {
    _isDropdownFocused = !_isDropdownFocused;
    _showDivider = false;
    notifyListeners();
  }

  void focusTextField() {
    _isTextFieldFocused = true;
    _showDivider = false;
    _isDropdownFocused = false;

    notifyListeners();
  }

  void resetFocus() {
    _isDropdownFocused = false;
    _isTextFieldFocused = false;
    _showDivider = true;
    notifyListeners();
  }
}
