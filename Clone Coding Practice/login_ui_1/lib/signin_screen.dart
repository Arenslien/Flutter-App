import 'package:flutter/material.dart';
import 'package:login_ui_1/constants.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/person.jpeg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SIGN IN",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: kPrimaryColor
                        ),  
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.alternate_email, color: kPrimaryColor),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email Address",
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Icon(Icons.lock, color: kPrimaryColor),
                      ),
                      Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                          hintText: "Password",
                        )),
                      )
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white.withOpacity(0.5)),
                          ),
                          child: Icon(Icons.android, color: Colors.white.withOpacity(0.5))
                        ),
                        const SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white.withOpacity(0.5)),
                          ),
                          child: Icon(Icons.chat, color: Colors.white.withOpacity(0.5))
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor
                          ),
                          child: const Icon(Icons.arrow_forward, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ]
              ),
            ),
          ),
        ],
      )
    );
  }
}