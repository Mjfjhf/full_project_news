import 'package:flutter/material.dart';
import 'package:news_app_sunday/layout/content_of_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
static const String routeName="setteng";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          backgroundColor: Colors.green,
          title: Text(AppLocalizations.of(context)!.settings),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Image.asset("assets/images/pattern.png",fit: BoxFit.cover,height: double.infinity,),
            ContentSettings()
          ],
        ),
      ),
    );
  }
}
