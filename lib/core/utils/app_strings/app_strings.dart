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

  //================== Custom Controller String ===================//

  ///============================ Commom Auth =========================//

  static const String signUp = 'Sign Up';
  static const String pending = 'pending';
  static const String completed = 'completed';
  static const String register = 'Register';
  static const String setNewPassword = 'Set new password';
  static const String signUpwithGoogle = 'Sign Up with Google';
  static const String signUpwithFacebook = 'Sign Up with Facebook';
  static const String signUpwithApple = 'Sign Up with Apple';
  static const String alreadyHaveAnAccount = 'Already have an account?';
  static const String logIn = 'Log In';
  static const String submit = 'Submit';
  static const String verifyCode = 'Verify Code';
  static const String forgotPassword = 'Forgot Password?';
  static const String dontHaveAnAccount = 'Don’t have an account?';
  static const String registerNow = 'Register Now';
  static const String letsStart = 'Let’s Start';
  static const String enterYourEmail = 'Enter your email';
  static const String enterVerificationCode = 'Enter Verification Code';
  static const String enterYourPassword = 'Enter your password';
  static const String password = 'Password';
  static const String confirmPassword = 'Confirm Password';
  static const String confirm = 'Confirm';
  static const String profile = 'Profile';
  static const String inbox = 'Inbox';
  static const String notification = 'Notification';
  static const String favourites = 'Favourites';
  static const String service = 'Service';
  static const String calendar = 'Calendar';
  static const String home = 'Home';
  static const String cleaning = 'Cleaning';
  static const String care = 'Care';
  static const String tallapoosa = 'Tallapoosa county, east-central Alabama, U.S';
  static const String handyman = 'Handyman';
  static const String others = 'Others';
  static const String pets = 'Pets';
  static const String support = 'Support';
  static const String serviceAddress = 'Service address';
  static const String children = 'Children';
  static const String elders = 'Elders';
  static const String whendoyouneedit = 'When do you need it?';
  static const String frequency = 'Frequency';
  static const String starttime = 'Start time';
  static const String justonce = 'Just once';
  static const String flexiblestart = 'Flexible start';
  static const String exactstart = 'Exact start';
  static const String oneTime = 'One-Time';
  static const String recurring = 'Recurring';
  static const String weekly = 'Weekly';
  static const String showmonth = 'Show month';
  static const String duration = 'Duration';
 // static const String service = 'Service';
 

}
