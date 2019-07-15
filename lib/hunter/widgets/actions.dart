import 'package:flutter_web/material.dart';
import 'package:h_design/hunter/custom_function.dart';
import 'package:h_design/hunter/custom_popup.dart';
import 'package:h_design/hunter/settings_menu.dart';

ActionBuild settingAction = (BuildContext context, {ThemeDataSwitch themeDataSwitch, Widget targetPage}) => SizedBox(
      width: 80,
      child: InkWell(
        child: Icon(Icons.settings),
        onTap: () {
          Navigator.push(
            context,
            PopRoute(
              child: CustomPopup(
                right: 0,
                top: 0,
                child: SettingsMenu(themeDataSwitch: themeDataSwitch),
              ),
            ),
          );
        },
      ),
    );

ActionBuild homeAction = (BuildContext context, {ThemeDataSwitch themeDataSwitch, Widget targetPage}) => SizedBox(
      width: 80,
      child: InkWell(
        onTap: () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => targetPage),
          ModalRoute.withName('/'),
        ),
        child: Icon(Icons.home),
      ),
    );
