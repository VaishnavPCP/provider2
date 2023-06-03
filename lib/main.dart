import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/frontpage.dart';
import 'package:provider2/providerkart.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context)=>Providerkart(),
    child: MaterialApp(
    home:  Provider02()
    ),
  ));
}

