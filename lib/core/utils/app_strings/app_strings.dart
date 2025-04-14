class AppStrings {
  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');
  static RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCantBeEmpty = "Field can't be empty";
  static const String emailFieldCantBeEmpty = "Please enter your email";
  static const String passwordFieldCantBeEmpty = "Please enter your password";
  static const String checknetworkconnection = "Check network connection";
  static const String enterThe8Character = "Please Enter The 8 character";
  static const String passwordNotMatch = "Passwords do not match";
  static const String typeHere = "Type here";
  static const String whatWillYouDoOnIBadi = "What will you do on CarVerify?";
  static const String thisDecisionIsNotFinal = "This decision is not final. You can later be both a client and a professional from the account if you wish.";

  static const String home = "Home";
  static const String report = "Report";
  static const String manageCar = "Manage Car";
  static const String profile = "Profile";
  static const String inspection = "Inspection";
  static const String employee = "Employee";

  ///============================ Commom Auth =========================//


 // static const String service = 'Service';
 

}
