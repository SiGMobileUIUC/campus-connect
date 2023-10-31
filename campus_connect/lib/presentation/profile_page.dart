import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Account"),
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
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
