import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

final TitleCenteredStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'CM Sans Serif',
    fontSize: 30,
    fontWeight: FontWeight.bold);

final kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);

class _OnboardingPageState extends State<OnboardingPage> {
  final int _numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color.fromRGBO(0, 0, 0, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Widget _titlePage(String text) {
    return Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TitleCenteredStyle,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.9],
              colors: const [
                Color.fromRGBO(255, 221, 0, 1),
                Color.fromRGBO(251, 176, 52, 1),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => {Modular.to.navigate("/login")},
                    child: Text(
                      'skip'.i18n(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _titlePage(
                                'Alta performance direto no seu Android'),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 50),
                              child: Image.asset(
                                "lib/assets/images/icon-side.png",
                                width: double.infinity,
                              ),
                            ),
                            Text(
                              """BiriLuk OBD APP é a melhor opção para uma experiênca completa em pista.\nConecte seu carro via interface obd e descubra o que pode melhorar na suas voltas.""",
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _titlePage("Baixo custo na palma da mão"),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 40, left: 40),
                              child: Image.asset(
                                  'lib/assets/images/interlakes.png'),
                            ),
                            Text(
                              """Telemetria, métricas em tempo real, erros e estatisticas para você arrasar no seu trackday.""",
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                    child: FlatButton(
                      onPressed: () {
                        if (_currentPage == _numPages - 1) {
                          Modular.to.navigate("/login");
                        } else {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'next'.i18n(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
