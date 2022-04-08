import 'package:flutter/material.dart';

void main() => runApp(GetConfirmationToken());

class ConfirmationTokenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login App',
      debugShowCheckedModeBanner: false,
      home: GetConfirmationToken(),
    );
  }
}

class GetConfirmationToken extends StatefulWidget {
  const GetConfirmationToken({Key? key}) : super(key: key);

  @override
  State<GetConfirmationToken> createState() => _loginPageState();
}

class _loginPageState extends State<GetConfirmationToken> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Stack(
          children: [
            _buildContainer(context),
            _buildEnviarButton(context)
          ],
        ),
      ),
    );
  }
}

Widget _buildContainer(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.26,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        "insira seu e-mail cadastrado",
                        style: TextStyle(color: Colors.yellow[700],fontSize: 20,),
                      ),
                    ],
                  ),
                  _buildEmail(context),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildEmail(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    width: MediaQuery.of(context).size.width * 0.85,
    height: 50,
    alignment: Alignment.center,
    child: Form(
      child: TextField (
        cursorColor: Colors.black,
        showCursor: false,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.grey[500],fontSize: 20,),
            // fillColor: Colors.grey.shade200,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: (Colors.yellow[700])!,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: (Colors.yellow[700])!,
                width: 1.0,
              ),
            ),
            filled: true,
            hoverColor: Colors.yellow.shade200,
            contentPadding: EdgeInsets.only(top: 17, left: 15),
            suffixIcon: Icon(Icons.email_outlined,color: Colors.black87,size: 35,)
        ),
      ),
    ),
  );
}

Widget _buildEnviarButton (BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 200,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.5,
            // width: MediaQuery.of(context).size.width * 0.5,
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Enviar',style: TextStyle(color: Colors.black87,fontSize: 25,),),
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[700],
                  fixedSize: const Size(180,55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
