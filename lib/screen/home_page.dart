import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEn = true;

  void changeLanguages() {
    setState(() {
      isEn = !isEn;
      isEn ? context.setLocale(const Locale('it')) : context.setLocale(const Locale('en'));
      debugPrint(isEn.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.router.push(DetailsRoute());
              },
              child: Text('goDetails'.tr()),
            ),
          ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              changeLanguages();
            }, child: Text('Translate')
            )
        ],
      ),
    );
  }
}
