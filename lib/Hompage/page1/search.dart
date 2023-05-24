import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 314,
      height: 60,
      child: TextFormField(
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          hintText: 'Search',
          filled: true,
          fillColor: Color.fromARGB(255, 239, 238, 238),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 239, 238, 238)),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 239, 238, 238)),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
