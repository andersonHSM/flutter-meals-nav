import 'package:alimentos_nav/models/settings.dart';
import 'package:flutter/material.dart';

import 'package:alimentos_nav/components/app_drawer.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChange;
  final Settings settings;

  const SettingsScreen(this.onSettingsChange, this.settings);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings settings;

  @override
  void initState() {
    super.initState();

    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);

        widget.onSettingsChange(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _createSwitch(
                'Sem Glúten',
                'Só exibe refeições sem Glúten',
                settings.isGlutenFree,
                (value) {
                  setState(() {
                    settings.isGlutenFree = value;
                  });
                },
              ),
              _createSwitch(
                'Sem Lactose',
                'Só exibe refeições sem Lactose',
                settings.isLactoseFree,
                (value) {
                  setState(() {
                    settings.isLactoseFree = value;
                  });
                },
              ),
              _createSwitch(
                'Vegana',
                'Só exibe refeições Veganas',
                settings.isVegan,
                (value) {
                  setState(() {
                    settings.isVegan = value;
                  });
                },
              ),
              _createSwitch(
                'Vegetariana',
                'Só exibe refeições Vegetarianas',
                settings.isVegetarian,
                (value) {
                  setState(() {
                    settings.isVegetarian = value;
                  });
                },
              ),
            ],
          ))
        ],
      ),
    );
  }
}
