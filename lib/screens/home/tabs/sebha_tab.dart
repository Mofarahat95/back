import 'package:flutter/material.dart';
import 'package:islami_2/Theming/App_Colors.dart';
import 'package:islami_2/providers/sebha_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SebhaProveder(),
      builder: (context, child) {
        var pro=Provider.of<SebhaProveder>(context);
      return Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/head_sebha.png',
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
pro.calcIndex();
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: pro.angle,
                      child: Image.asset(
                        'assets/images/body_sebha.png',
                        width: 300,
                        height: 375,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  textAlign: TextAlign.center,
                  '${pro.counter}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  textAlign: TextAlign.center,
                  pro.Azkar[pro.index],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            )
          ],
        ),
      );
      },
    );
  }
}
