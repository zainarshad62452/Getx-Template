
// import 'package:get/get.dart';
// import 'package:starter_template/controllers/loading_controller.dart';
// import 'package:starter_template/core/components/snackbar.dart';
// import 'package:starter_template/core/routes/app_routes.dart';
// import 'package:starter_template/view/auth/login_screen/login_screen.dart';
// import 'Reception.dart';
// import 'user_services.dart';

// class Authentication {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   createAccount(
//       {required String name,
//       required String email,
//       required String pass,
//       required String phoneNumber,
//       required String userType}) async {
//     loading(true);
//     try {
//       final user = await auth.createUserWithEmailAndPassword(
//           email: email, password: pass);
//       if (user.user != null) {
//         if (userType == "seller") {
//           UserServices().registerUser(
//               name: name,
//               user: user.user!,
//               phoneNumber: phoneNumber,
//               userType: userType);
//         } else if (userType == "buyer") {}

//         Reception().userReception();
//         loading(false);
//       } else {
//         loading(false);
//         alertSnackbar(
//           "Unknown Error",
//         );
//       }
//     } catch (e) {
//       loading(false);
//       alertSnackbar(e.toString().contains(']')
//           ? e.toString().split(']').last
//           : e.toString());
//     }
//   }

//   Future<String> getEmail(String id, String collection) async {
//     return await FirebaseFirestore.instance
//         .collection(collection)
//         .doc(id)
//         .get()
//         .then((value) => value['email'].toString());
//   }

//   // signinWithEmail(String email, String pass) async {
//   //   try {
//   //     loading(true);
//   //     await auth
//   //         .signInWithEmailAndPassword(email: email, password: pass)
//   //         .then((value) {
//   //       if (value.user != null) {
//   //         loading(false);
//   //         Reception().userReception();
//   //       } else {
//   //         loading(false);
//   //         alertSnackbar("Unknown error");
//   //       }
//   //     });
//   //   } catch (e) {
//   //     loading(false);
//   //     alertSnackbar(e.toString().split(']').last); //TODO firebase exception
//   //   }
//   // }
//   signinWithEmail(String email, String pass) async {
//     try {
//       loading(true);
//       await auth
//           .signInWithEmailAndPassword(email: email, password: pass)
//           .then((value) {
//         if (value.user != null) {
//           loading(false);
//           // if (auth.currentUser!.emailVerified)
//           Reception().userReception();
//           // else
//           // Get.offAll(() => EmailVerification());
//         } else {
//           loading(false);
//           alertSnackbar("Unknown error");
//         }
//       });
//     } catch (e) {
//       loading(false);
//       alertSnackbar(e.toString().split(']').last); //TODO1 firebase exception
//     }
//   }

//   forgotPassword(String email) async {
//     loading(true);
//     FirebaseAuth auth = FirebaseAuth.instance;

//     try {
//       await auth.sendPasswordResetEmail(email: email);
//       // Get.to(()=>ForgotPasswordVerificationPage(email:email));
//       loading(false);
//       snackbar('Success', 'Password reset email sent to ${email}');
//     } catch (e) {
//       loading(false);
//       alertSnackbar(e.toString().split(']').last); //TODO firebase exception
//     }
//   }

//   // String getId(String sender,String reciver){
//   //   var chats = newChatCntr.allUsers?.value;
//   //   String id = "none";
//   //   for(var chat in chats!){
//   //     if((chat.user1 == sender && chat.user2 == reciver) || (chat.user2 == sender && chat.user1 == reciver)){
//   //       id = "${chat.groupID}";
//   //     }
//   //   }
//   //   return id;
//   // }

//   signOut() async {
//     try {
//       await auth.signOut();
//       Get.offAllNamed(AppRoutes.loginScreen);
//     } catch (e) {
//       snackbar("Error Signing Out", e.toString()); //TODO firebase exception
//     }
//   }
// }
