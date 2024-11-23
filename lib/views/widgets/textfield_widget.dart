// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   final IconData prefixIcon;
//   final bool isPassword;

//   const CustomTextField({
//     Key? key,
//     required this.hintText,
//     required this.prefixIcon,
//     this.isPassword = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     bool _obscureText = isPassword;

//     return StatefulBuilder(
//       builder: (context, setState) {
//         return TextField(
//           cursorColor: const Color(0xff676767),
//           style: const TextStyle(color: Colors.black),
//           obscureText: _obscureText,
//           decoration: InputDecoration(
//             fillColor: Colors.grey.shade100,
//             filled: true,
//             hintText: hintText,
//             hintStyle: const TextStyle(color: Color(0xff676767)),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             prefixIcon: Icon(
//               prefixIcon,
//               color: const Color(0xff676767),
//             ),
//             suffixIcon: isPassword
//                 ? IconButton(
//                     icon: Icon(
//                       _obscureText
//                           ? Icons.visibility_off_outlined
//                           : Icons.visibility_outlined,
//                       color: const Color(0xff676767),
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                   )
//                 : null,
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff676767),
      style: const TextStyle(color: Colors.black),
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Color(0xff676767)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: const Color(0xff676767),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: const Color(0xff676767),
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
