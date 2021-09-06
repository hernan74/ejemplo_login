import 'package:ejemplo_login/src/helpers/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
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
                  Positioned(
                    top: 60,
                    child: Container(
                        width: 120,
                        height: 120,
                        child: SvgPicture.asset('assets/welcome.svg')),
                  ),
                  HeaderFondoBlanco(),
                  Positioned(
                      top: 180,
                      child: Hero(
                        tag: 'titleLabel',
                        flightShuttleBuilder: flightShuttleBuilder,
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      )),
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
            height: 40,
          ),
          Hero(
            tag: 'email',
            //Esto es necesario para usar el hero en un textfield
            flightShuttleBuilder: (BuildContext flightContext,
                    Animation<double> animation,
                    HeroFlightDirection flightDirection,
                    BuildContext fromHeroContext,
                    BuildContext toHeroContext) =>
                Material(
              child: toHeroContext.widget,
              color: Colors.white,
            ),
            child: CustomTextField(
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'Password',
            //Esto es necesario para usar el hero en un textfield
            // flightShuttleBuilder: (BuildContext flightContext,
            //       Animation<double> animation,
            //     HeroFlightDirection flightDirection,
            //   BuildContext fromHeroContext,
            // BuildContext toHeroContext) =>
            //  Material(
            // child: toHeroContext.widget,
            //  color: Colors.white,
            //),
            child: Material(
              color: Colors.white,
              child: CustomTextField(
                labelText: 'Password',
              ),
            ),
          ),
          RadioListTile(
            title: Text('Remember Me',
                style: TextStyle(
                    color: Color(0xff601FFC),
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            value: 1,
            groupValue: 1,
            selected: true,
            activeColor: Color(0xff601FFC),
            onChanged: (value) {},
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'SING IN',
            child: Boton(
              usaGradiente: true,
              fondo1: Color(0xff5C18FC),
              fondo2: Color(0xff7D4EFF),
              widget: Text('SING IN',
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
            tag: 'SING UP',
            child: Boton(
              widget: Text(
                'SING UP',
                style: TextStyle(
                    color: Color(0xff601FFC),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              ancho: double.infinity,
              alto: 50,
              fondo1: Colors.white,
              onPressed: () {
                Navigator.push(context, trancicionConvinada(RegisterPage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
