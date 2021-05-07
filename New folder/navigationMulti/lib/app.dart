// import 'package:flutter/material.dart';
// import 'package:navigationMulti/rootPage.dart';
// import 'package:nested_navigators/nested_nav_bloc.dart';
// import 'package:nested_navigators/nested_nav_bloc_provider.dart';

// class App extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   final NestedNavigatorsBloc _bloc = NestedNavigatorsBloc<NestedNavItemKey>();

//   @override
//   Widget build(BuildContext context) {
//     return NestedNavigatorsBlocProvider(
//       bloc: _bloc,
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: RootPage(),
//         onGenerateRoute: (routeSettings) => Routes.generateRoute(routeSettings),
//       ),
//     );
//   }
// }