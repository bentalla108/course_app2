import 'dart:ui';

class Colours {
  const Colours._();

  /// #EDF8FF #FDC1E8, #FDFAE1, #FFFFFF
  static const gradient = [
    Color(0xFFEDF8FF),
    Color(0xFFFDC1E8),
    Color(0xFFFFFFFF),
    Color(0xFFFDFAE1),
  ];

  /// #458CFF
  static const primaryColour = Color(0xFF458CFF);

  /// #757C8E
  static const neutralTextColour = Color(0xFF757C8E);

  /// #D3D5FE
  static const physicsTileColour = Color(0xFFD3D5FE);

  /// #FFEFDA
  static const scienceTileColour = Color(0xFFFFEFDA);

  /// #FFE4F1
  static const chemistryTileColour = Color(0xFFFFE4F1);

  /// #CFE5FC
  static const biologyTileColour = Color(0xFFCFE5FC);

  /// #FFCECA
  static const mathTileColour = Color(0xFFFFCECA);

  /// #DAFFD6
  static const languageTileColour = Color(0xFFDAFFD6);

  /// #D5BEFB
  static const literatureTileColour = Color(0xFFD5BEFB);

  /// #FF5C5C
  static const redColour = Color(0xFFFF5C5C);

  /// #28CA6C
  static const greenColour = Color(0xFF28CA6C);

  /// #F4F5F6
  static const chatFieldColour = Color(0xFFF4F5F6);

  /// #E8E9EA
  static const chatFieldColourDarker = Color(0xFFE8E9EA);

  static const currentUserChatBubbleColour = Color(0xFF2196F3);

  static const otherUserChatBubbleColour = Color(0xFFEEEEEE);

  static const currentUserChatBubbleColourDarker = Color(0xFF1976D2);

  static const otherUserChatBubbleColourDarker = Color(0xFFE0E0E0);
}


// # Colours Class Documentation

// The `Colours` class provides a set of constant color values for use in a 
//Flutter application. These colors are defined as static constants, making
// them easily accessible throughout the application.


// ## Gradient Colors

// ### `gradient`

// - Description: An array of colors forming a gradient.
// - Colors:
//   - `Color(0xFFEDF8FF)`
//   - `Color(0xFFFDC1E8)`
//   - `Color(0xFFFFFFFF)`
//   - `Color(0xFFFDFAE1)`

// ## Primary Colors

// ### `primaryColour`

// - Description: The primary color used in the application.
// - Color: `Color(0xFF458CFF)`

// ## Subject Title Colors

// ### `physicsTitleColour`

// - Description: Color for physics subject title.
// - Color: `Color(0xFFD3D5FE)`

// ### `scienceTitleTextColour`

// - Description: Color for science subject title text.
// - Color: `Color(0xFFFFEFDA)`

// ### `chemistryTitleTextColour`

// - Description: Color for chemistry subject title text.
// - Color: `Color(0xFFFFE4F1)`

// ### `biologyTitleTextColour`

// - Description: Color for biology subject title text.
// - Color: `Color(0xFFCFE5FC)`

// ### `mathTitleTextColour`

// - Description: Color for math subject title text.
// - Color: `Color(0xFFFFCECA)`

// ### `langageTitleTextColour`

// - Description: Color for language subject title text.
// - Color: `Color(0xFFDAFFD6)`

// ### `literatureTitleTextColour`

// - Description: Color for literature subject title text.
// - Color: `Color(0xFFD5BEFB)`

// ## Additional Colors

// ### `redColour`

// - Description: A red color.
// - Color: `Color(0xFFFF5C5C)`

// ### `greenColour`

// - Description: A green color.
// - Color: `Color(0xFF28CA6C)`

// ## Chat Bubble Colors

// ### `chatFieldColor`

// - Description: Background color for chat field.
// - Color: `Color(0xFFF4F5F6)`

// ### `chatFieldColorDarker`

// - Description: Darker background color for chat field.
// - Color: `Color(0xFFE8E9EA)`

// ### `currentUserChatBubbleColour`

// - Description: Chat bubble color for the current user.
// - Color: `Color(0xFF2196F3)`

// ### `othertUserChatBubbleColour`

// - Description: Chat bubble color for other users.
// - Color: `Color(0xFFEEEEEE)`

// ### `currentUserChatBubbleColourDarker`

// - Description: Darker chat bubble color for the current user.
// - Color: `Color(0xFF1976D2)`

// ### `othertUserChatBubbleColourDarker`

// - Description: Darker chat bubble color for other users.
// - Color: `Color(0xFFE0E0E0)`

// ---

// This `Colours` class provides a centralized location for managing the color
// palette of the application, making it easy to maintain a consistent look and
// feel throughout different components. The constant values defined in this
// class can be directly used in Flutter widgets for styling purposes.