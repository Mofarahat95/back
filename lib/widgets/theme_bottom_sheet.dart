import 'package:flutter/material.dart';
import 'package:islami_2/providers/My_Provider.dart';
import 'package:provider/provider.dart';

import '../Theming/light_theme.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  static String selected = '';
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ligth',
                    style: Theming.body().copyWith(
                      fontSize: 28,
                    ),
                  ),
                  pro.MyTheme==ThemeMode.light?Icon(Icons.done):
                      Text(''),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dark',
                    style: Theming.body().copyWith(
                      fontSize: 28,
                    ),
                  ),
                 pro.MyTheme == ThemeMode.dark ? Icon(Icons.done) : Text(''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
