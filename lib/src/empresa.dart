import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }
enum SingingCharac { emprendedor, pequenia, mediana }

class Empresa extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Empresa> {
  var _lis = ['1 - 5', '6 - 25', '26 - 50', '51 - 100', '101 en adelante'];

  String _vis = 'Seleccione Opcion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracion (Empresa)'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                _crearInput1();
              },
              child: Icon(Icons.settings_rounded),
            ),
          ),
        ],
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.indigo[50],
          child: Column(
            children: <Widget>[
              _crearInput1(),
              _crearActualizar(),
              Divider(
                color: Colors.indigo[50],
              ),
              _crearTipoDireccion(),
              _crearDireccion(),
              _crearActualizarD(),
              Divider(
                color: Colors.indigo[50],
              ),
              _crearTipoEmpresa(),
              _crearActualizarT(),
              Divider(
                color: Colors.indigo[50],
              ),
              _crearNoE(),
              _crearActualizarN(),
              Divider(
                color: Colors.indigo[50],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearInput1() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 120, 0),
            child: Text(
              'Nombre de la Empresa:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: ''),
          ),
        ],
      ),
    );
  }

  Widget _crearActualizar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(180, 0, 30, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new SizedBox(
            width: 150.0,
            height: 38.0,
            child: RaisedButton(
              color: Colors.indigo,
              textColor: Colors.white,
              child: Text(
                'Actualizar',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  SingingCharacter? _character = SingingCharacter.lafayette;
  Widget _crearTipoDireccion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 160, 0),
            child: Text(
              'Tipo de Direccion: ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text('Fiscal'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Comercial'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    _character = value;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearDireccion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Calle'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'No. Externo'),
                ),
              ),
              Text('    ', style: TextStyle(fontSize: 14)),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'No. Interno'),
                ),
              )
            ],
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Colonia'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Codigo Postal'),
          ),
        ],
      ),
    );
  }

  Widget _crearActualizarD() {
    return Container(
      padding: const EdgeInsets.fromLTRB(180, 0, 30, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new SizedBox(
            width: 150.0,
            height: 38.0,
            child: RaisedButton(
              color: Colors.indigo,
              textColor: Colors.white,
              child: Text(
                'Actualizar',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  SingingCharac? _charac = SingingCharac.emprendedor;
  Widget _crearTipoEmpresa() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20, 200, 10),
            child: Text(
              'Tipo de Empresa: ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text('Emprendedor (Proyecto Letra)'),
            leading: Radio<SingingCharac>(
              value: SingingCharac.emprendedor,
              groupValue: _charac,
              onChanged: (SingingCharac? value) {
                setState(() {
                  _charac = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pequeña'),
            leading: Radio<SingingCharac>(
              value: SingingCharac.pequenia,
              groupValue: _charac,
              onChanged: (SingingCharac? value) {
                setState(
                  () {
                    _charac = value;
                  },
                );
              },
            ),
          ),
          ListTile(
            title: const Text('Mediana'),
            leading: Radio<SingingCharac>(
              value: SingingCharac.mediana,
              groupValue: _charac,
              onChanged: (SingingCharac? value) {
                setState(
                  () {
                    _charac = value;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearActualizarT() {
    return Container(
      padding: const EdgeInsets.fromLTRB(180, 0, 30, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new SizedBox(
            width: 150.0,
            height: 38.0,
            child: RaisedButton(
              color: Colors.indigo,
              textColor: Colors.white,
              child: Text(
                'Actualizar',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearNoE() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 218, 5),
            child: Text(
              'No. Empleados:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: DropdownButton(
              items: _lis.map(
                (String a) {
                  return DropdownMenuItem(
                    value: a,
                    child: Text(a),
                  );
                },
              ).toList(),
              onChanged: (String? _value) => {
                setState(
                  () {
                    _vis = _value!;
                  },
                ),
              },
              hint: Text(_vis),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearActualizarN() {
    return Container(
      padding: const EdgeInsets.fromLTRB(180, 0, 30, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new SizedBox(
            width: 150.0,
            height: 38.0,
            child: RaisedButton(
              color: Colors.indigo,
              textColor: Colors.white,
              child: Text(
                'Actualizar',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
