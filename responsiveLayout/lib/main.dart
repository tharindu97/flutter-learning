import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() => runApp(MaterialApp(
  title: 'Responsive Layout',
  home: HomePage(),
  debugShowCheckedModeBanner: false,
),
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 12,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.purple,
                  child: Text('Column 1'),
                )
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text('Column 2'),
                )
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.orangeAccent,
                  child: Text('Column 3'),
                )
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: Text('Column 3'),
                )
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text('Column 4'),
                )
              ),
              ResponsiveGridCol(
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.pinkAccent,
                  child: Text('Column 5'),
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}