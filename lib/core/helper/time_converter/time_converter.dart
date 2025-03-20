// ignore_for_file: unused_local_variable

import 'package:intl/intl.dart';

class DateConverter {
  static String estimatedDate(DateTime dateTime) {
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  static String dateFormetString(String dateTimeStr) {
    // Parse the input string to a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeStr);

    // Format the DateTime object
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String formattedDate() {
    DateTime now = DateTime.now();
    String formatteDatas = DateFormat('EEE, dd, MMMM, yyyy').format(now);
    // Return the total minutes as a string
    return formatteDatas;
  }

  static String timeFormetString(String dateTimeStr) {     
    
    if(dateTimeStr.isEmpty) return "Select Date";

    // Parse the input string to a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeStr);

    // Format the DateTime object
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  ///=============== Calculate Time of Day ===============

  static String getTimePeriod() {
    // Get the current hour of the day
    int currentHour = DateTime.now().hour;

    // Define the boundaries for morning, noon, and evening
    int morningBoundary = 6;
    int noonBoundary = 12;
    int eveningBoundary = 18;

    // Determine the time period based on the current hour
    if (currentHour >= morningBoundary && currentHour < noonBoundary) {
      return "Good Morning";
    } else if (currentHour >= noonBoundary && currentHour < eveningBoundary) {
      return "Good Noon";
    } else {
      return "Good Evening";
    }
  }

//================== Get Age =================

  static String getAge({required String dOB}) {
    // Parse the date of birth from the string input
    List<String> dobParts = dOB.split("-");
    int day = int.parse(dobParts[0]);
    int month = int.parse(dobParts[1]);
    int year = int.parse(dobParts[2]);

    // Create a DateTime object for the date of birth
    DateTime birthDate = DateTime(year, month, day);
    DateTime currentDate = DateTime.now();

    // Calculate age
    int age = currentDate.year - birthDate.year;

    // Adjust age if the birthday has not yet occurred this year
    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }

    return age.toString();
  }

  ///======================= Calculate CreatedAt time and show it =========================

  static String formatTimeAgo(String dateTimeString) {
    // Parse the string into a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeString);

    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 1) {
      // If the time is more than 1 day ago, return the date in "dd MMM yyyy" format
      return '${dateTime.day} ${_getMonthName(dateTime.month)} ${dateTime.year}';
    } else if (difference.inDays == 1) {
      // If the time is 1 day ago, return "Yesterday"
      return 'Yesterday';
    } else if (difference.inHours >= 1) {
      // If the time is today but more than an hour ago, return in hours ago format
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes >= 1) {
      // If the time is less than an hour ago, return in minutes ago format
      return '${difference.inMinutes}m ago';
    } else {
      // If the time is less than a minute ago, return "Just now"
      return 'Just now';
    }
  }

  // Helper method to get month name
  static String _getMonthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[month - 1];
  }

  static List<String> calculateAgeAndLifeSpan(String dob, int targetAge) {
    // Parse the input date string
    DateTime birthDate = DateTime.parse(dob);
    DateTime currentDate = DateTime.now();

    // Calculate the total difference in days
    Duration difference = currentDate.difference(birthDate);
    int totalDaysLived = difference.inDays;

    // Calculate years, months, and days
    int years = currentDate.year - birthDate.year;
    int months = currentDate.month - birthDate.month;
    int days = currentDate.day - birthDate.day;

    // Adjust if negative months or days (correct for partial year)
    if (days < 0) {
      months--;
      days += DateTime(currentDate.year, currentDate.month, 0)
          .day; // Add days of previous month
    }
    if (months < 0) {
      years--;
      months += 12;
    }

    // Calculate weeks and remaining days from total days lived
    int weeks = days ~/ 7;
    int remainingDays = days % 7;

    // Calculate life span percentage
    int targetAgeDays = targetAge * 365; // Approximation of target age in days
    double lifeSpentPercent = (totalDaysLived / targetAgeDays) * 100;

    // Prepare result list
    List<String> result = [
      "$years years",
      "$months months",
      "$weeks weeks",
      "$remainingDays days",
      "${lifeSpentPercent.toStringAsFixed(2)}%"
    ];

    return result;
  }

  static List<String> calculateRemainingLife(String dob, int targetAge) {
    // Parse the input date string
    DateTime birthDate = DateTime.parse(dob);
    DateTime currentDate = DateTime.now();

    // Calculate the target date (when the user reaches the target age)
    DateTime targetDate =
        DateTime(birthDate.year + targetAge, birthDate.month, birthDate.day);

    // Calculate the difference between the current date and the target date
    Duration remainingDuration = targetDate.difference(currentDate);

    if (remainingDuration.isNegative) {
      return ["0 years", "0 months", "0 weeks", "0 days", "0%"];
    }

    int totalDaysRemaining = remainingDuration.inDays;

    // Calculate the total number of days lived so far
    Duration totalLivedDuration = currentDate.difference(birthDate);
    int totalDaysLived = totalLivedDuration.inDays;

    // Breakdown remaining years, months, weeks, and days
    int remainingYears = targetDate.year - currentDate.year;
    int remainingMonths = targetDate.month - currentDate.month;
    int remainingDays = targetDate.day - currentDate.day;

    if (remainingDays < 0) {
      remainingMonths--;
      remainingDays += DateTime(currentDate.year, currentDate.month + 1, 0)
          .day; // Adjust for negative days
    }
    if (remainingMonths < 0) {
      remainingYears--;
      remainingMonths += 12;
    }

    // Calculate weeks and remaining days from total remaining days
    int weeks = remainingDays ~/ 7;
    int extraDays = remainingDays % 7;

    // Calculate remaining life percentage
    int targetAgeDays = targetAge * 365; // Approximation of target age in days
    double lifeRemainingPercent =
        ((targetAgeDays - totalDaysLived) / targetAgeDays) * 100;

    // Prepare result list
    List<String> result = [
      "$remainingYears years",
      "$remainingMonths months",
      "$weeks weeks",
      "$extraDays days",
      "${lifeRemainingPercent.toStringAsFixed(2)}%"
    ];

    return result;
  }

  static String formatDayOfWeek(String isoDateString) {
    // Parse the ISO date string
    final dateTime = DateTime.parse(isoDateString);

    // Format to the weekday name (Monday, Tuesday, etc.)
    final formatter = DateFormat('EEEE');
    return formatter.format(dateTime);
  }

  static List<int> calculateSpentAndTotalWeeks(String dob, int targetAge) {
    int weeksInYear = 52;
    // Parse the input date of birth string
    DateTime birthDate = DateTime.parse(dob);
    DateTime currentDate = DateTime.now();

    // Calculate the total weeks for the target age
    int totalWeeks = targetAge * weeksInYear;

    // Calculate the number of days lived so far
    Duration lifeLivedDuration = currentDate.difference(birthDate);
    int spentWeeks = lifeLivedDuration.inDays ~/ 7;

    // Return spent weeks and total weeks as a list of two integers
    return [spentWeeks, totalWeeks];
  } 



static String formatServerTime(String serverTime) {
  // Parse the server time
  DateTime serverDateTime = DateTime.parse(serverTime).toLocal();
  DateTime now = DateTime.now();
  
  // Determine if the date is today, yesterday, or another day
  if (DateFormat('yyyy-MM-dd').format(serverDateTime) == 
      DateFormat('yyyy-MM-dd').format(now)) {
    // If today
    return "Today ${DateFormat('hh:mm a').format(serverDateTime)}";
  } else if (DateFormat('yyyy-MM-dd').format(serverDateTime) == 
             DateFormat('yyyy-MM-dd').format(now.subtract(const Duration(days: 1)))) {
    // If yesterday
    return "Yesterday ${DateFormat('hh:mm a').format(serverDateTime)}";
  } else {
    // If other day
    return DateFormat('EEEE, MMMM yyyy, hh:mm a').format(serverDateTime);
  }
}

}
