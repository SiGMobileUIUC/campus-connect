import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(150.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.orange,
            centerTitle: true,
            title: const Text(
              "Account",
              style: TextStyle(
                  fontFamily: 'Monteserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(400, 200),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: Image.network(
                    'https://cdn.vox-cdn.com/thumbor/u7jCCxWCVBktYRsDMeeKrI91rl8=/0x0:1920x1080/920x613/filters:focal(807x387:1113x693):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/72009235/captain_pikachu.6.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                color: Colors.white,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.person_2_outlined,
                            color: Colors.orange, size: 50)),
                    Text(
                      "Insert Name Here",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Monteserrat',
                          fontSize: 30),
                    )
                  ]),
              const Divider(
                height: 20,
                thickness: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.calendar_month_outlined,
                          color: Colors.orange, size: 50)),
                  Text(
                    "Insert Birthday Here",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Monteserrat',
                        fontSize: 30),
                  )
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.lock_outline,
                        color: Colors.orange, size: 50),
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Monteserrat',
                        fontSize: 30),
                  )
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.archive_outlined,
                        color: Colors.orange, size: 50),
                  ),
                  Text(
                    "Past Posts",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Monteserrat',
                        fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        )); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
