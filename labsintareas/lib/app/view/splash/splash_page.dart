import 'package:flutter/material.dart';
import 'package:labsintareas/app/view/components/shape.dart';
import 'package:labsintareas/app/view/task_list/task_list_page.dart';

import '../components/h1.dart';

class SplashPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return  Scaffold(
       body: Column(     
children: [
const Row(
  children: [
    Shape(),
  ],
),

            const SizedBox(height: 79),
            Image.asset(
              'assets/images/onboarding-image.png',
              width: 180,
              height: 168,
            ),
             const SizedBox(height: 99),
             const H1('Lista de tareas'),
              const SizedBox(height: 21),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32)),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const TaskListPage();
                    }));
                  },
                  child: const Text(
                    'La mejor forma para que no se te olvide nada es Anotarlo, Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                    textAlign: TextAlign.center,
                    ),
                ),

                 ],
       )
               );
             

  }
}

/*
/////tarea lab 10

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Bienvenido a CineApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/flutter.png',
              width: 180,
              height: 180,
            ),
            SizedBox(height: 20),
            Text(
              'Descubre las mejores películas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Explora nuestra amplia selección de películas de todos los géneros y disfruta de una experiencia cinematográfica única.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text('Explorar películas'),
            ),
          ],
        ),
      ),
    );
  }
}

/////////////codigo lab 10 final:

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return  Scaffold(
       body: Column(
       
           children: [
            Row(
children: [
Image.asset(
              'assets/images/Vector.png',
              width: 141,
              height: 129,
             )
],

            ),

            const SizedBox(height: 79),
            Image.asset(
              'assets/images/onboarding-image.png',
              width: 180,
              height: 168,
            ),
             const SizedBox(height: 99),
             Text('Lista de Tareas', style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600)),

              const SizedBox(height: 21),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32)),
                const Text(
                  'La mejor forma para que no se te olvide nada es Anotarlo, Guardar tus tareas y ve completando poco a poco para aumentar tu productividad',
                  textAlign: TextAlign.center,
                  ),

                 ],
               ),
             );
  }
}



//Primera parte del lab 10:

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return  Scaffold(
       body: SafeArea(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             const Text('Lista de Tareas'),
             const Padding(
               padding: EdgeInsets.symmetric(vertical: 30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('ASSETS'),
                   Text('IMAGENES'),
                 ],
               ),
             ),
             const Image(image: AssetImage('assets/images/flutter.png'), width:300, height: 300, fit: BoxFit.cover),
             ElevatedButton(onPressed: () { }, child: Text("Entrar"))
           ],
         ),
       ),
      
    );
  }
}

//TAREA LAB 9
import 'package:flutter/material.dart';
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/presentacion.png',
                width: 500,
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 44),
              const Text(
                'Bienvenido a Flutter',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 34),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 163, 149, 149),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Francisco Tapia',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(221, 115, 2, 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
