import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracion (Personal)'),
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
              _crearApellidoP(),
              _crearApellidoM(),
              _crearActualizar(),
              Divider(
                color: Colors.indigo.shade50,
              ),
              _crearSexo(),
              _crearActualizar(),
              Divider(
                color: Colors.indigo[50],
              ),
              _crearFecha(),
              _crearActualizar(),
              Divider(
                color: Colors.indigo[50],
              ),
              _crearCorreo(),
              _crearActualizar(),
              Divider(
                thickness: 3,
                color: Colors.red,
              ),
              _crearPass(),
              _crearPassN(),
              _crearActualizarP(),
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
            padding: EdgeInsets.fromLTRB(0, 20, 200, 0),
            child: Text(
              'Nombre(s):',
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

  Widget _crearApellidoP() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 155, 0),
            child: Text(
              'Apellido Paterno:',
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

  Widget _crearApellidoM() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 150, 0),
            child: Text(
              'Apellido Materno:',
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
            // ignore: deprecated_member_use
            child: RaisedButton(
              color: Colors.indigo,
              textColor: Colors.white,
              child: Text(
                'Actualizar',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Image.asset(
                          'assets/img/aceptado.png',
                          height: 130,
                          width: 50,
                        ),
                        Text(
                          'Actualizacion de Datos se ha hecho correctamente',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          'Se cargue la pagina para observar los cambios',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('personal');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SingingCharacter? _character = SingingCharacter.lafayette;
  Widget _crearSexo() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 240, 0),
            child: Text(
              'Sexo:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text('Maculino'),
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
            title: const Text('Femenino'),
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

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2022));
    if (picked != null && picked != selectedDate)
      setState(
        () {
          selectedDate = picked;
        },
      );
  }

  Widget _crearFecha() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 170, 0),
            child: Text(
              'Fecha de Nacimiento:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text("${selectedDate.toLocal()}".split(' ')[0]),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Expanded(
                  child: IconButton(
                    icon: Icon(Icons.date_range),
                    onPressed: () => _selectDate(context),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 10),
            child: Divider(
              height: 0,
              thickness: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearCorreo() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 240, 0),
            child: Text(
              'Correo:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'prueba@gmail.com'),
          ),
        ],
      ),
    );
  }

  Widget _crearPass() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 35, 80, 0),
            child: Text(
              'Ingrese Contraseña ACTUAL:',
              style: TextStyle(color: Colors.redAccent[700], fontSize: 16),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: '  '),
            obscureText: true,
          ),
        ],
      ),
    );
  }

  Widget _crearPassN() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 90, 0),
            child: Text(
              'Ingrese Contraseña NUEVA:',
              style: TextStyle(color: Colors.redAccent[700], fontSize: 16),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: '   '),
            obscureText: true,
          ),
        ],
      ),
    );
  }

  Widget _crearActualizarP() {
    return Container(
      padding: const EdgeInsets.fromLTRB(85, 0, 85, 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          new SizedBox(
            width: 200.0,
            height: 38.0,
            // ignore: deprecated_member_use
            child: RaisedButton(
              color: Colors.redAccent[700],
              textColor: Colors.white,
              child: Text(
                'Cambiar Cotraseña',
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Image.asset(
                          'assets/img/aceptado.png',
                          height: 130,
                          width: 50,
                        ),
                        Text(
                          'Actualizacion de Datos se ha hecho correctamente',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          'Se cargue la pagina para observar los cambios',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.indigo,
                        textColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: Text(
                          'OK',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('personal');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
