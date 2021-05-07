// import 'package:flutter/material.dart';
// import 'package:nested_navigators/nested_nav_item.dart';
// import 'package:nested_navigators/nested_navigators.dart';

// class RootPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _RootPageState();
// }

// class _RootPageState extends State<RootPage> {
//   @override
//   Widget build(BuildContext context) {
//     return NestedNavigators(
//       items: {
//         NestedNavItemKey.blue: NestedNavigatorItem(
//           initialRoute: Routes.blue,
//           icon: Icons.access_time,
//           text: "Blue",
//         ),
//         NestedNavItemKey.red: NestedNavigatorItem(
//           initialRoute: Routes.red,
//           icon: Icons.send,
//           text: "Red",
//         ),
//         NestedNavItemKey.green: NestedNavigatorItem(
//           initialRoute: Routes.green,
//           icon: Icons.perm_identity,
//           text: "Green",
//         ),
//       },
//       generateRoute: Routes.generateRoute,
//     );
//   }
// }