import 'package:day2/utils/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState?.validate()==true) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedButton = false;
      }
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset('assets/images/hey.png',
                  fit:BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Text('Welcome $name !',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter username',
                            labelText: 'username'
                        ),
                        onChanged: (value){
                          name = value;
                          setState(() {
                          });
                        },
                          validator: (value){
                            if(value?.isEmpty==true){
                              return "username can't be null";
                            }
                            return null;
                          }
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter password',
                            labelText: 'password',
                        ),
                        validator: (value){
                          if(value?.isEmpty==true){
                            return "password can't be null";
                          }
                          else if(value!.length<6){
                            return "Password length should be atleast 6";
                          }
                           return null;
                        },
                      )
                    ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              Material(
                color: Colors.deepPurple,
                borderRadius:
                  BorderRadius.circular(changedButton?50:8),
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () =>moveToHome(context),
                  child: AnimatedContainer(
                    height: 50,
                    width: changedButton?50:150,
                    alignment: Alignment.center,
                     duration: Duration(seconds: 1),
                    child :changedButton?Icon(Icons.done) :Text('Login',style:
                      TextStyle(
                        color: Colors.white
                      )
                      ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
