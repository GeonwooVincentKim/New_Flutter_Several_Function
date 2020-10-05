import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provide.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Products()),
          // ChangeNotifierProvider(create: (_) => Cart()),
        ],
        child: MaterialApp(
        )
    );
  }
}