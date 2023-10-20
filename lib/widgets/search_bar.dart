import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      maxLines: 1,
      style: TextStyle(
        fontSize: 15.0,
        color: Colors.blueGrey[300],
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blueGrey[50],
        hintText: "E.g: New York, United States",
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        prefixIcon: Icon(
          Icons.location_on,
          color: Colors.blueGrey[300],
        ),
        hintStyle: TextStyle(
          fontSize: 15,
          color: Colors.blueGrey[300],
        ),
      ),
    );
  }
}
