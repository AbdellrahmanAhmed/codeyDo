import 'package:codey_do/views/home/task_provider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'classes/provider.dart';
import 'core/constants/app_strings.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(AppStrings.appName)),
        body: Center(
          child: ChangeNotifierProvider(
            create: (context) => providerClass(),
            child: ProviderScreen(),
          ),
        ),
      ),
    ),
  );
}
