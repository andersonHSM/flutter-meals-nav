import 'package:flutter/material.dart';

import 'package:alimentos_nav/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  Widget _createNavLink(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).accentColor,
              alignment: Alignment.bottomRight,
              child: Text(
                'Vamos Cozinhar?',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _createNavLink(Icons.restaurant, 'Refeições', () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            }),
            _createNavLink(Icons.settings, 'Configurações', () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS);
            }),
          ],
        ),
      ),
    );
  }
}
