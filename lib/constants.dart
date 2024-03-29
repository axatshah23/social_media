import 'package:flutter/material.dart';

/// Theme Colors
const kPrimaryThemeColor = Color(0xFFFF2D55);
const kSecondaryScaffoldBackgroundGrey = Color(0xFFF7F8FA);
const kSecondaryAppBarBackgroundGrey = Color(0xFFF7F8FA);
const kSubTextColor = Color(0xFFBDBDBD);
const kActiveDotColor = Color(0xFF7ED321);
// End of Theme Colors

/// Auth Module
const kSigninCardBackgroundColor = Colors.white;
const kGradientColorList = [Color(0x00000000), Color(0xFF000000)];
const kWelcomeBackHeadingTextStyle = TextStyle(
  fontSize: 36.0,
  fontWeight: FontWeight.bold,
);
const kLoginToYourAccountHeadingTextStyle = TextStyle(
  color: kSubTextColor,
  fontSize: 17.0,
);
const kSocialButtonsLabelStyle = TextStyle(
  color: Colors.white,
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
);
const kGreetingTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const kDontHaveAccountTextStyle = TextStyle(
  decoration: TextDecoration.underline,
  color: kPrimaryThemeColor,
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
);
const kAlreadyHaveAccountTextStyle = TextStyle(
  decoration: TextDecoration.underline,
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
);
const kEnterYourDetailsTextStyle = TextStyle(
  fontSize: 46.0,
  fontWeight: FontWeight.w800,
);
const kCustomBottomStickyButton = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
);
// End of Auth Module

/// Chat Module
const kOnlineUserHeadingTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 18.0,
);
const kOnlineUserTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 13.0,
  fontWeight: FontWeight.w600,
);
const kChatBarNameTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const kLastMessageDisplayTextStyle = TextStyle(
  color: kSubTextColor,
  fontSize: 14.0,
);
// End of Chat Module

/// Find Friends Module
const kSearchBarBorderColor = Color(0xFFACB1C0);
const kCancelButtonTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);
const kNextButtonTextStyle = TextStyle(
  color: kPrimaryThemeColor,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);
const kFindFriendsTitleTextStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.bold,
);
// End of Find Friends Module

/// Home Module
const kHomeSearchBarBackground = Color(0xFFF1F2F6);
const kHomeSearchBarTextIconColor = Color(0xFFACB1C0);
const kCreateButtonGradient = [
  Color(0xFFFF906A),
  kPrimaryThemeColor,
];
const kHomeSearchBarTextStyle = TextStyle(
  color: kHomeSearchBarTextIconColor,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);
const kUserStoryTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 11.0,
  fontWeight: FontWeight.w600,
);
const List<BoxShadow> kPostElevation = [
  BoxShadow(
    color: Color(0x24000000),
    offset: Offset(
      2.0,
      2.0,
    ),
    blurRadius: 8.0,
    spreadRadius: 2.0,
  ),
];
BoxDecoration kPostContainerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(12.0),
  boxShadow: kPostElevation,
  color: Colors.white,
);
const kPostTitleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18.0,
);
const kCommentTitleTextStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 16.0,
);
const kPostLocationTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 15.0,
  color: kSubTextColor,
);
const kCommentLocationTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 13.0,
  color: kSubTextColor,
);
const kPostCaptionTextStyle = TextStyle(fontSize: 16.0);
const kLightBlackBackground = Color(0x55000000);
double commonVolume = 1.0;
// End of Home Module

/// Notification Module
const kTabBarUnselectedTabColor = Color(0xFFF1F2F6);
const kTabBarSelectedTabColor = Colors.white;
const kSelectedTabTextColor = Colors.black;
const kUnselectedTabTextColor = Color(0xFFACB1C0);
const kTabBarLabelTextStyle =
    TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0);
const kNotificationNameTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);
const kNotificationFollowUpTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 15.0,
);
// End of Notification Module

/// Permission Module
const kPermissionModuleHeadingTextStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.w700,
);
const kPermissionToggleTextStyle = TextStyle(
  fontSize: 19.0,
  fontWeight: FontWeight.w500,
);
// End of Permission Module

/// Profile Module
const kProfileNameTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);
const kProfileUserNameTextStyle = TextStyle(
  fontSize: 13.5,
);
const kCountTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
const kCountLabelTextStyle = TextStyle(
  color: kSubTextColor,
  fontSize: 15.0,
);
const List<BoxShadow> kShortcutCardBoxShadow = [
  BoxShadow(
      color: Color(0x21000000),
      offset: Offset(
        4.0,
        4.0,
      ),
      blurRadius: 4.0),
];
const kShortcutBottomButtonTextStyle = TextStyle(
  fontSize: 18.0,
);

const kEditHintTextStyle = TextStyle(
  fontSize: 15.0,
  color: kSubTextColor,
);
const kEditFieldTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);
// End of Profile Module

/// Stream Module
// End of Stream Module

/// OTP Field
const kOTPFieldLength = 4;
const kOTPFieldBorderColor = kPrimaryThemeColor;
const kOTPFieldFillColor = Color(0xFFF1F2F6);
const kOTPFieldEnteredTextColor = kPrimaryThemeColor;
const kOTPFieldSubmittedTextColor = Colors.white;
const kOTPFieldSubmittedFillColor = kPrimaryThemeColor;
// End of OTP Field

/// Input field colors
const kFieldFillColor = Color(0xFFF1F2F6);
const kHintTextColor = Color(0xFFACB1C0);
const kFieldFocusBorderColor = Color(0xFF263238);
const kFieldEnteredTextColor = Color(0xFF263238);
// End of Input field colors

/// Navigation Bar
const kNavBarBackgroundColor = Colors.white;
const kNavBarSelectedItemColor = kPrimaryThemeColor;
const kNavBarUnselectedItemColor = Color(0xFFACB1C0);
const double kNavBarFontSize = 13;
// End of Navigation Bar

/// Dating Module
const kDatingCardNameTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);
const kDatingProfessionTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 17.0,
  fontWeight: FontWeight.w500,
);
const kDatingDetailTitleTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
const kDatingDetailContentTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  color: Colors.grey,
  fontSize: 15.0,
);
const kChipLabelStyle = TextStyle(
  color: Colors.grey,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);
// End of Dating Module

/// Others
const kAppBarTitleTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontSize: 20.0,
);
const kCustomBottomStickyButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
);
const kFollowBarNameTextStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
);
const kFollowBarSubTextStyle = TextStyle(
  color: kSubTextColor,
  fontSize: 15.0,
);
