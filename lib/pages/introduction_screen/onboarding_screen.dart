import 'package:curiosity/model/introduction_screen/page_view_model.dart';
import 'package:curiosity/pages/introduction_screen/introduction_screen.dart';
import 'package:curiosity/pages/planck/registrar_page.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => RegistrarPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _lottieAnimationJimaMoneda() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 100,
              right: 35,
            ),
            child: Lottie.asset(
                'assets/json/jimador3d.json', //archivo a reproducir
                repeat: true, //si se repite la animacion
                fit: BoxFit.fill),
          ),
          Text(
            'Ya finalizado el proceso, recibiras tus ganancias',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      );
    }

    Widget _lottieAnimationLogo() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 150,
              right: 35,
            ),
            child: Lottie.asset(
                //'assets/json/aaaa.json',
                'assets/json/greendata.json', //archivo a reproducir
                repeat: true, //si se repite la animacion
                fit: BoxFit.fill),
          ),
          Text(
            'Bienvenido a Agave Investment',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ],
      );
    }

    Widget _lottieAnimationJimador1() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 110,
                right: 35,
                bottom: MediaQuery.of(context).size.height * 0.0001),
            child: Lottie.asset(
                //'assets/json/aaaa.json',
                'assets/json/Jimador2.json', //archivo a reproducir
                repeat: true, //si se repite la animacion
                fit: BoxFit.fill),
          ),
          Text(
            'Nosotros sembramos y cuidamos tus plantas de agave',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      );
    }

    Widget _lottieAnimationCamionMoviendose() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 170,
              right: 35,
            ),
            child: Lottie.asset(
                'assets/json/camionmovin.json', //archivo a reproducir
                repeat: true, //si se repite la animacion
                fit: BoxFit.fill),
          ),
          Text(
            'Posteriormente se transporta y se vende a las tequileras compradoras',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      );
    }

    Widget _lottieAnimationCarga() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 150,
              right: 35,
            ),
            child: Lottie.asset(
              'assets/json/Carga.json', //archivo a reproducir
              repeat: true, //si se repite la animacion
              fit: BoxFit.fill,
            ),
          ),
          Text(
            'Una vez madurada tu siembra, la cosechamos',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      );
    }

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: _lottieAnimationLogo(),
        ),
        PageViewModel(
          title: "¿Como funciona tu inversion?",
          bodyWidget: _lottieAnimationJimador1(),
        ),
        PageViewModel(
          title: "",
          bodyWidget: _lottieAnimationCarga(),
        ),
        PageViewModel(
          title: "",
          bodyWidget: _lottieAnimationCamionMoviendose(),
        ),
        PageViewModel(
          title: "",
          bodyWidget: _lottieAnimationJimaMoneda(),
        ),
        PageViewModel(
          title: "",
          body:
              "El mejor momento para invertir, es hoy. Siembra tu presente, cosecha tu futuro. -Agave Investment",
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Saltar'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
