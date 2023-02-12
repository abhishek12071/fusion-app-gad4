import 'package:flutter/material.dart';
import '../util/my_button.dart';
import '../util/my_textfield.dart';
import '../util/square_tile.dart';
import '../layout/mobile_body.dart';
import '../util/my_halfcircle.dart';
import 'package:postgres/postgres.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // sign user in method
    void signUserIn() {
      // Your navigation code
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MobileScaffold()));
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // The containers in the background

            new Column(
              children: <Widget>[
                MyArc(diameter: 600),
              ],
            ),

            new Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  right: 20.0,
                  left: 20.0),
              child: new Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                child: new Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 6, color: Colors.white),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.iiitdmj.ac.in/revista.iiitdmj.ac.in/images/iiit_logo70x71_2x.png?crc=4236585444"),
                        fit: BoxFit.scaleDown),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),

            
            Future operation() async {

var connection = PostgreSQLConnection(
"ec2-31-242-24-212.compute-1.amazonaws.com", // hostURL
5432,                                                                               // port
"djb7v0k318g55",                                                         // databaseName
username: "ggfplrsgbytwdc",   
password: "b72bf90efb5e5f52b3c22a87f7ef5f76f80e663583",
useSSL: true
);

await connection.open();
      print("Connected");
}
            new Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .4,
                ),
                child: Column(
                  children: [
                    Text(
                      'Fusion IIIT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),

                    const SizedBox(height: 60),

                    // username textfield
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    // password textfield
                    MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    // forgot password?
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 35),

                    // sign in button
                    Container(
                      padding: const EdgeInsets.all(12.5),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MobileScaffold()));
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
