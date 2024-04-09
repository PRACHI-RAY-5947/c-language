// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:invoice_generator/utils/globals.dart';
//
//
// class TechnicalSkillPage extends StatefulWidget {
//   const TechnicalSkillPage({super.key});
//
//   @override
//   State<TechnicalSkillPage> createState() => _TechnicalSkillPageState();
// }
//
// class _TechnicalSkillPageState extends State<TechnicalSkillPage> {
//   @override
//   void initState() {
//     if (Globals.controller.length > 2) {
//       Globals.controller.removeWhere((element) => element.text.isEmpty);
//     }
//     if (Globals.controller.isEmpty || Globals.controller.length < 2) {
//
//       if (Globals.controller.length == 1) {
//         Globals.controller.add(TextEditingController());
//       } else {
//         Globals.controller.addAll([
//           TextEditingController(),
//           TextEditingController(),
//         ]);
//       }
//     }
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     Globals.controller.forEach((element) {
//       log(element.text);
//     });
//
//
//     Size size = MediaQuery.of(context).size;
//     return GestureDetector(
//       onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             " Technical Skills ",
//             style: TextStyle(color: Colors.white),
//           ),
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topRight,
//                   end: Alignment.topLeft,
//                   colors: <Color>[Colors.purple, Colors.blue]),
//             ),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             width: size.width * 0.9,
//             decoration: BoxDecoration(
//               color: Colors.blue.shade400,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       'Skills',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                     ...List.generate(
//                       Globals.controller.length,
//                           (index) => Row(
//                         children: [
//                           Expanded(
//                             child: TextField(
//                               controller: Globals.controller[index],
//                             ),
//                           ),
//                           IconButton(
//                             onPressed: () {
//                               Globals.controller.removeAt(index);
//                               // Globals.skill.removeAt(index);
//                               setState(() {});
//                             },
//                             icon: const Icon(Icons.delete),
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         Globals.controller.add(TextEditingController());
//                         setState(() {});
//                       },
//                       child: const Text('Add'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
