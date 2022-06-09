import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/glass_button.dart';
import 'package:gs_tourismonmars/app/modules/login.dart';

class IntroPage extends StatelessWidget {
  Future<void> _showDialog({
    String about =
        'TURMA 3SIT  \nEQUIPE:\nIsabela Caovila  RM 84141\nMatheus Modanez RM 86065',
    required BuildContext context,
  }) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(about, textAlign: TextAlign.justify,),
            backgroundColor: Color.fromARGB(255, 1, 72, 87),
            contentTextStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Space Mono',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgintro.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 45,
            right: 45,
            top: 70,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image(
                image: AssetImage('assets/images/MarsCompany.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Bem-Vindx à plataforma de gestão de viagens da Tourism On Mars. \nAdicione, atualize e visualize todos os dados de viagens, espaçonave, e de sua tripulação. \nO sistema da Tourism on Mars está anos-luz à frente do mercado, quando se trata de viagem espacial.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Space Mono',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GlassButton(
                start: 0.1,
                end: 0.1,
                width: 300,
                height: 50,
                buttonText: 'COMEÇAR',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Login()),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 125,
              ),
              ElevatedButton(
                onPressed: () {
                  _showDialog(context: context);
                },
                child: Text(
                  'sobre a equipe',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Space Mono',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color.fromARGB(255, 1, 50, 65),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
