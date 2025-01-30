import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../Theming/light_theme.dart';

class languageBottomSheet extends StatefulWidget {
  const languageBottomSheet({super.key});

  @override
  State<languageBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<languageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                context.setLocale(Locale('ar'));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Arabic',
                    style: Theming.body().copyWith(
                      fontSize: 28,
                    ),
                  ),
                  context.locale == Locale('ar') ? Icon(Icons.done) : Text(''),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                context.setLocale(Locale('en'));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Engish',
                    style: Theming.body().copyWith(
                      fontSize: 28,
                    ),
                  ),
                  context.locale == Locale('en') ? Icon(Icons.done) : Text(''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
