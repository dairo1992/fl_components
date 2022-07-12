import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 50;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sliders & Checks Screen')),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: _sliderEnabled
                    ? (value) {
                        print(value);
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value ?? true;
            //       setState(() {});
            //     }),
            CheckboxListTile(
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(() {});
                }),
            // Switch.adaptive(
            //     value: _sliderEnabled,
            //     onChanged: (value) {
            //       _sliderEnabled = value;
            //       setState(() {});
            //     }),
            SwitchListTile.adaptive(
                title: const Text('Habilitar Slider'),
                value: _sliderEnabled,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  _sliderEnabled = value;
                  setState(() {});
                }),
            const AboutListTile(
                applicationName: 'Informacion de la App',
                applicationVersion: '0.1',
                icon: Icon(Icons.info),
                applicationIcon: Icon(Icons.dashboard_sharp),
                applicationLegalese: 'Informacion legal'),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cl.buscafs.com/www.sandiegored.com/public/uploads/images/100945.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ));
  }
}
