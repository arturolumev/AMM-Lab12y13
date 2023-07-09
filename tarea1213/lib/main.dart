import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactividades',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _displayText = 'Texto inicial';
  String _selectedItem = 'Opción 1';
  double _sliderValue = 0.0;
  String _inputText =
      ''; // Variable para almacenar el texto ingresado por el usuario

  void _onButtonPressed() {
    setState(() {
      _displayText = 'Botón presionado';
    });
  }

  void _onDropdownChanged(String? value) {
    setState(() {
      _selectedItem = value ??
          'Opción 1'; // Asigna un valor predeterminado si el valor es nulo
    });
  }

  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  void _onTextChanged(String value) {
    setState(() {
      _inputText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactividades'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _displayText,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _onButtonPressed,
              child: Text('Presionar'),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: _selectedItem,
              onChanged: _onDropdownChanged,
              items: <String>[
                'Opción 1',
                'Opción 2',
                'Opción 3',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: _onTextChanged,
              decoration: InputDecoration(
                labelText: 'Ingresa un texto',
              ),
            ),
            SizedBox(height: 20.0),
            Slider(
              value: _sliderValue,
              onChanged: _onSliderChanged,
              min: 0.0,
              max: 100.0,
            ),
            Text('Valor: $_sliderValue'),
            SizedBox(height: 20.0),
            Text(
                'Texto ingresado: $_inputText'), // Muestra el texto ingresado por el usuario
          ],
        ),
      ),
    );
  }
}
