import 'package:beer_app/src/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formLoginKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: BeerAppColors.colorSecundary,
      appBar: AppBar(
        backgroundColor: BeerAppColors.colorSecundary,
        elevation: 0,
        leading: const LeadingBackButton(),
        actions: const [ActionsTextButton()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidgetLogin(
            texto: "Sign In",
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 10),
          const TextWidgetLogin(
            texto: "Welcome Sign In Application Flutter",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: size.height,
                decoration: const BoxDecoration(
                    color: BeerAppColors.colorPrimary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 2.0,
                          offset: Offset(5.0, 5.0))
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70, horizontal: 15),
                      child: Form(
                          key: _formLoginKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _email(email),
                              const SizedBox(height: 15),
                              _password(password),
                              const SizedBox(
                                height: 5,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: const ButtonStyle(
                                      foregroundColor: MaterialStatePropertyAll(
                                          BeerAppColors.colorSecundary)),
                                  child: const Text("Forgot Password?")
                                  // TextButton.styleFrom(
                                  //     foregroundColor: BeerAppColors.colorBlack),
                                  ),
                              const SizedBox(
                                height: 80,
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                width: double.infinity,
                                height: 55,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formLoginKey.currentState!
                                        .validate()) {
                                      print("INICIO DE SESION");
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          BeerAppColors.colorSecundary,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  child: const Text("Sign In"),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/512/300/300221.png",
                                height: 35,
                                width: 35,
                              ),
                              Spacer(),
                              Text(
                                "Continue with Google",
                                style: TextStyle(
                                    fontFamily: "OpenSans",
                                    color: Colors.black12,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black12,
                                  )),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: BeerAppColors.colorWhite,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  TextFormField _email(TextEditingController email) {
    return TextFormField(
      // autofocus: true,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return EmailValidator.validate(value!);
      },
      decoration: InputDecoration(
          hintText: "Username",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          filled: true,
          fillColor: BeerAppColors.colorWhite.withOpacity(.6)),
    );
  }

  TextFormField _password(TextEditingController password) {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value!.length < 6) {
          return "Min 6 Caracteres *";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: "Password",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          filled: true,
          fillColor: BeerAppColors.colorWhite.withOpacity(.6)),
    );
  }
}

///Widgets Internos

class ActionsTextButton extends StatelessWidget {
  const ActionsTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, "/register");
      },
      style: TextButton.styleFrom(foregroundColor: BeerAppColors.colorBlack),
      child: const Text(
        'Register',
      ),
    );
  }
}

class LeadingBackButton extends StatelessWidget {
  const LeadingBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          // Navigator.pushNamed(context, "/welcome");
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: BeerAppColors.colorBlack,
          size: 30,
        ));
  }
}

class TextWidgetLogin extends StatelessWidget {
  final String texto;
  final double fontSize;
  final FontWeight? fontWeight;
  const TextWidgetLogin({
    super.key,
    required this.texto,
    required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        texto,
        style: TextStyle(
            fontFamily: 'OpenSans', fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
