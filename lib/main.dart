import 'package:flutter/material.dart';

void main() => runApp(const AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo TabBar',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Nairobi Montiel'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Boletos',
                icon: Icon(Icons.search),
              ),
              Tab(text: 'Ventas', icon: Icon(Icons.payment_rounded)),
              Tab(text: 'Artistas', icon: Icon(Icons.mic_external_on_rounded)),
              Tab(text: 'Festival', icon: Icon(Icons.calendar_month_outlined)),
            ], //Texto Icono
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text('Alerta',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Center(
              child: Text(
                'Opción 2',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                'Opción 3',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                'Opción 4',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
