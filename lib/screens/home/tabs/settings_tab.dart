import 'package:flutter/material.dart';
import 'package:islami_2/Theming/light_theme.dart';
import 'package:islami_2/widgets/language_bottom_sheet.dart';
import 'package:islami_2/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Theming',
            style: Theming.bodyreg(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => ThemeBottomSheet(),
              );
            },
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Ligth',
                  style: Theming.body(),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'langauge',
            style: Theming.bodyreg(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => languageBottomSheet(),
              );
            },
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Arabic',
                  style: Theming.body(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
