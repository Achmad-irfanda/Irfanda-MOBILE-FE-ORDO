// // apps button widget

// import 'package:irfanda_mobile_fe_ordo/apps_common_libs.dart';

// enum ButtonType { primary, secondary, small}

// class AppsElevtedButton extends StatelessWidget {
//   final ButtonType buttonType; 
//   final String titleButton; 
//   final Function() navigatorButton; 

//   const AppsElevtedButton({super.key, required this.buttonType, required this.titleButton, required this.navigatorButton});

//   @override
//   Widget build(BuildContext context) {
//     final stylePrimary = ElevatedButton.styleFrom();
//     final styleSecondary = ElevatedButton.styleFrom();
//     final styleSmall = ElevatedButton.styleFrom();

//     return ElevatedButton(
//       style: (buttonType == ButtonType.primary) ? stylePrimary : (buttonType == ButtonType.secondary) ? styleSecondary : styleSmall, 
//       onPressed: navigatorButton,
//       child: Text(
//         titleButton, 
//         style: (buttonType == ButtonType.primary) ? 
//         TextStyle(fontWeight: FontWeight.w400, fontSize: )
//       );
//     );
//   }
// }
