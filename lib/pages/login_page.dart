import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email = "";
  String _password = "";

  void _submit( ) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Iniciar Sesion" ),
      ) ,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration( labelText: "Email" ),
                    onChanged: (text) => _email = text,
                    validator: (text){
                      if( text.contains("@") ) return null;
                      return "Invalid email";
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password"
                    ),
                    onChanged: (text) => _password = text,
                    validator: (text){
                      if( text.trim().length > 5 ){
                        return null;
                      }
                      return "Invalid password";
                    },
                  ),
                  SizedBox(height: 20,),
                  TextButton(
                      onPressed: _submit,
                      child: Text("Enviar"))
                ],
              ),
            ),
          ),
        )



      ),
    );
  }
}
