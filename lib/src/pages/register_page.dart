import 'package:animate_do/animate_do.dart';
import 'package:ejemplo_login/src/helpers/export.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  HeaderFondo(),
                  CuboConAngulo(
                    opacidad: 0.6,
                    size: 170,
                    posicionTop: 50,
                  ),
                  CuboConAngulo(
                    opacidad: 0.4,
                    size: 240,
                    posicionleft: 75,
                    posicionTop: 10,
                  ),
                  CuboConAngulo(
                    opacidad: 0.3,
                    size: 300,
                    posicionleft: 45,
                    posicionTop: -10,
                  ),
                  HeaderFondoBlanco(),
                  Hero(
                    tag: 'titleLabel',
                    child: Text(
                      'Sing Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ],
              ),
              _CrearFormularioLogin()
            ],
          ),
        ));
  }
}

class _CrearFormularioLogin extends StatelessWidget {
  const _CrearFormularioLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          SizedBox(
            height:20,
          ),
          ZoomIn(
            delay: Duration(milliseconds: 500),
            child: CustomTextField(
              labelText: 'Fist Name',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ZoomIn(
            delay: Duration(milliseconds: 500),
            child: CustomTextField(
              labelText: 'Last Name',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'email',
            child: CustomTextField(
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'Password',
            child: Material(
              color: Colors.white,
              child: CustomTextField(
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'SING UP',
            child: Boton(
              usaGradiente: true,
              fondo1: Color(0xff5C18FC),
              fondo2: Color(0xff7D4EFF),
              widget: Text('SING UP',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
              ancho: double.infinity,
              alto: 50,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'SING IN',
            child: Boton(
              widget: Text('SING IN',
                  style: TextStyle(
                      color: Color(0xff601FFC),
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
              ancho: double.infinity,
              alto: 50,
              fondo1: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
