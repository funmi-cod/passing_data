import 'package:flutter/material.dart';
import 'package:flutter_example/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // To access text from the textfeild
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 270,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your name",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50),
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: 'enter name',

                    // Set border for enabled state (default)
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.purple),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                      // the data is passed as arguments of the RouteSettings.
                      // WelcomeScreen reads the arguments from these settings.
                      settings: RouteSettings(
                        arguments: controller.text.trim(),
                      ),
                    ),
                  ),
                  child: Container(
                    height: 55,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Educative platform',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   // getWriterName function of type `Future` which computes a future
//   // the return type is String
//   Future<String> getWriterName() {
//     // 3 seconds delay to simulate a call to cloud storage or db
//     return Future.delayed(const Duration(seconds: 3), () => "Maria Elijah");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.deepPurpleAccent,
//         title: const Text('Flutter FutureBuilder'),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Center(
//           child: FutureBuilder(
//             //call the getWriterName()
//             // Future that needs to be resolved
//             future: getWriterName(),
//             initialData: "Code sample",
//             builder: (BuildContext context, snapshot) {
//               // Display a ProgressIndicator  for waiting state
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const Center(
//                   child: CircularProgressIndicator(
//                     color: Colors.deepPurpleAccent,
//                   ),
//                 );
//               }
//               // Checks if future is completed
//               if (snapshot.connectionState == ConnectionState.done) {
//                 // Checks for any error
//                 if (snapshot.hasError) {
//                   return Center(
//                     child: Text(
//                       'An ${snapshot.error} occurred',
//                       style: const TextStyle(fontSize: 18, color: Colors.red),
//                     ),
//                   );

//                   // if no error, then check for data
//                 } else if (snapshot.hasData) {
//                   // gets the data from snapshot object and assign to the variable data
//                   final data = snapshot.data as String;
//                   return Center(
//                     child: Text(
//                       data,
//                       style: const TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   );
//                 }
//               }

//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             },
//           ),
//         ),
//       ),
//     ));
//   }
// }





