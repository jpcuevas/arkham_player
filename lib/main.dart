import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Jugador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _damage = 0;
  int _horror = 0;
  int _resource = 0;
  int _clue = 0;

  void _incrementDamage() {
    setState(() {
      _damage++;
    });
  }

  void _decrementDamage() {
    setState(() {
      _damage--;
    });
  }

  void _incrementHorror() {
    setState(() {
      _horror++;
    });
  }

  void _decrementHorror() {
    setState(() {
      _horror--;
    });
  }

  void _incrementResource() {
    setState(() {
      _resource++;
    });
  }

  void _decrementResource() {
    setState(() {
      _resource--;
    });
  }

  void _incrementClue() {
    setState(() {
      _clue++;
    });
  }

  void _decrementClue() {
    setState(() {
      _clue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/agnes_b_01.png'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daño: $_damage',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Horror: $_horror',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: _incrementDamage,
                        tooltip: 'Incrementar Daño',
                        child: const Icon(Icons.add),
                        backgroundColor: Colors.red,
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        onPressed: _decrementDamage,
                        tooltip: 'Decrementar Daño',
                        child: const Icon(Icons.remove),
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: _incrementHorror,
                        tooltip: 'Incrementar Horror',
                        child: const Icon(Icons.add),
                        backgroundColor: Colors.blue,
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        onPressed: _decrementHorror,
                        tooltip: 'Decrementar Horror',
                        child: const Icon(Icons.remove),
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recursos: $_resource',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Pistas: $_clue',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: _incrementResource,
                        tooltip: 'Incrementar Recursos',
                        child: const Icon(Icons.add),
                        backgroundColor: Colors.yellow,
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        onPressed: _decrementResource,
                        tooltip: 'Decrementar Recursos',
                        child: const Icon(Icons.remove),
                        backgroundColor: Colors.yellow,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: _incrementClue,
                        tooltip: 'Incrementar Pistas',
                        child: const Icon(Icons.add),
                        backgroundColor: Colors.green,
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        onPressed: _decrementClue,
                        tooltip: 'Decrementar Pistas',
                        child: const Icon(Icons.remove),
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
