import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/search_screen/search_controller.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(SearchPageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Screen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // showSearch(context: context, delegate: SearchUser());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
