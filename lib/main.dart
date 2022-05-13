import 'package:flutter/material.dart';
import 'package:formu_val/src/blocs/provider.dart';
import 'package:formu_val/src/pages/home_page.dart';
import 'package:formu_val/src/pages/login_page.dart';
import 'package:formu_val/src/pages/producto_page.dart';
import 'package:formu_val/src/pages/registro_page.dart';
import 'package:formu_val/src/preferencias_usuario/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   final prefs = new PreferenciasUsuario();
    await prefs.initPrefs();
     
     runApp(MyApp());
}


class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {

 
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'home': (BuildContext context) => HomePage(),
          'producto': (BuildContext context) => ProductoPage(),
          'registro': (BuildContext context) => RegistroPage(),
          
        },
          theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,

          primary: Color.fromARGB(255, 252, 0, 42), 
          onPrimary: Colors.white, 

          secondary: Color.fromARGB(255, 9, 1, 124), 
          onSecondary: Colors.white, 
           
          error: Colors.red,
          onError: Color.fromARGB(255, 0, 0, 0),

          background: Colors.white,
          onBackground: Color.fromARGB(255, 0, 0, 0), 
          
          surface: Color.fromARGB(255, 0, 0, 0), 
          onSurface: Colors.white,
        ),
      ),
      ),
      
    );
  }
}
