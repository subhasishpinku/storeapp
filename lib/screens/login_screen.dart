import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";
  String _company = "";
  bool hidePassword = true;
  void _toggle() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  Widget buildUsername() => Column(
        children: [
          Container(
            child: createdTextField(
              prefixIcon: FontAwesomeIcons.user,

              // image: 'images/email.svg',
              obscureText: false,
              label: 'Username',
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Username can't be empty";
                }
                if (value.length < 3) {
                  return 'Must be more than 2 characters';
                }
                return null;
              },
              onSaved: (value) {
                _username = value;
              },
            ),
          ),
        ],
      );
  Widget buildPassword() => Column(
        children: [
          Container(
            child: createdTextField(
              prefixIcon: FontAwesomeIcons.lock,
              suffixIcon: IconButton(
                splashColor: Colors.transparent,
                onPressed: _toggle,
                icon: FaIcon(
                  hidePassword
                      ? FontAwesomeIcons.eyeSlash
                      : FontAwesomeIcons.eye,
                  size: 15,
                  color: AppColor.defaultBlack.withOpacity(0.7),
                ),
              ),
              obscureText: hidePassword,
              label: 'Password',
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password can't be empty";
                }
                if (value.length < 6) {
                  return 'Password must at least 6 characters';
                }
                return null;
              },
              onSaved: (value) {
                _password = value;
              },
            ),
          ),
        ],
      );

  Widget buildCompany() => Column(
        children: [
          Container(
            child: createdTextField(
              prefixIcon: FontAwesomeIcons.solidBuilding,

              // image: 'images/email.svg',
              obscureText: false,
              label: 'Company Name',
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Username can't be empty";
                }
                if (value.length < 3) {
                  return 'Must be more than 2 characters';
                }
                return null;
              },
              onSaved: (value) {
                _company = value;
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.defaultWhite,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: AppColor.defaultWhite,
      body: SafeArea(
        child: _loginUISetup(context),
      ),
    );
  }

  Widget _loginUISetup(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/theme2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(children: [
          Center(
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 60,
                          height: 60,
                          child: Center(
                              child:
                                  Image.asset('assets/images/app_logo.png'))),
                      const Text(
                        "assetcomply",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.defaultBlack,
                          fontSize: 33,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 55,
                          height: 6,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Fixed Asset Management at \nyour Finger Tips",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: AppColor.defaultBlack.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Form(
              key: loginFormKey,
              child: _loginUI(context),
            ),
          )
        ]),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 19, bottom: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "LOGIN",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        buildUsername(),
        const SizedBox(
          height: 5,
        ),
        buildPassword(),
        const SizedBox(
          height: 5,
        ),
        buildCompany(),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () async {
            // if (validateAndSave()) {
            //   FocusScopeNode currentFocus = FocusScope.of(context);
            //   if (!currentFocus.hasPrimaryFocus &&
            //       currentFocus.focusedChild != null) {
            //     FocusManager.instance.primaryFocus!.unfocus();
            //   }
            // //await loginProvider.login(context, _username,  _company);
            // }
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const HomeScreen(),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColor.primaryColor, AppColor.yellowColor],
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Text(
              "Sign in",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const ForgetPasswordScreen(),
              ),
            );
          },
          child: Container(
            width: 250,
            height: 43,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.primaryColor,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: const Center(
              child: Text(
                "Forgot password?",
                style: TextStyle(color: AppColor.primaryColor, fontSize: 12.0),
              ),
            ),
          ),
        ),
      ],
    );
  }

  bool validateAndSave() {
    final form = loginFormKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
