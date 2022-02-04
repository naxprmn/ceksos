// //username validator possible structure
//    Function(String) usernameValidator = (String username){
//         if(username.isEmpty){
//           return 'Username empty';
//         }else if(username.length < 3){
//           return 'Username short';
//         }

//         return null;
//   };

//   //password validator possible structure
//   passwordValidator(String password){
//         if(password.isEmpty){
//           return 'Password empty';
//         }else if(password.length < 3){
//           return 'PasswordShort';
//         }
//         return null;
//   }  



//  //new build function
// Widget _buildInputFields(
//     String label,
//     TextEditingController textController,
//     TextInputType textInputType,
//     IconData icon,
//     Color iconColor,
//     String Function(String) validator
//   ) {
//     return Container(
//         margin: EdgeInsets.only(left: 20, bottom: 20),
//         child: Container(
//           padding: EdgeInsets.only(right: 20),
//           child: Row(
//             children: <Widget>[
//               Flexible(
//                 child: TextFormField(
//                   controller: textController,
//                   validator: validator,
//                   style: new TextStyle(color: Colors.white),
//                   keyboardType: textInputType,
//                   decoration: InputDecoration(
//                       labelText: label,
//                       fillColor: Colors.white,
//                       labelStyle: TextStyle(
//                           color: Colors.white, fontWeight: FontWeight.w600),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                             const BorderSide(color: Colors.white30, width: 2.0),
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                       suffixIcon: IconButton(
//                         icon: Icon(icon, color: iconColor),
//                         onPressed: () {},
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }

//     //calling your function
//    _buildInputFields(label, textController, textInputType, icon, iconColor, usernameValidator);
//    _buildInputFields(label, textController, textInputType, icon, iconColor, passwordValidator);