import 'package:alpha/components/bottom_appBar.dart';
import 'package:alpha/components/drawers.dart';
import 'package:alpha/constants.dart';
import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "name": "CHANDIGARH",
      "des": " ",
    },
    {
      "id": 2,
      "name": "NEW DELHI",
      "des": " ",
    },
    {
      "id": 3,
      "name": "KOlKATA",
      "des": " ",
    },
    {
      "id": 4,
      "name": "HYDERABAD",
      "des": " ",
    },
    {
      "id": 5,
      "name": "LUCKNOW",
      "des": " ",
    },
    {
      "id": 6,
      "name": "HYDERABAD",
      "des": " ",
    },
    {
      "id": 8,
      "name": "BANGALORE",
      "des": " ",
    },
    {
      "id": 9,
      "name": "ALLAHABAD",
      "des": " ",
    },
    {
      "id": 10,
      "name": "DAMAN & DIU",
      "des": " ",
    },
    {
      "id": 11,
      "name": "PATIALA",
      "des": " ",
    },
    {
      "id": 12,
      "name": "AMRITSAR",
      "des": " ",
    },
    {
      "id": 13,
      "name": "PATNA",
      "des": " ",
    },
    {
      "id": 14,
      "name": "SHIMLA",
      "des": " ",
    },
    {
      "id": 15,
      "name": "GOA",
      "des": " ",
    },
    {
      "id": 16,
      "name": "PUNE",
      "des": " ",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldcolor,
      appBar: AppBar(
        title: Text('Locations'),
        backgroundColor: kstartingpagecolor,
      ),
      drawer: drawer1(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.cyanAccent,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                // prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        color: kscaffoldcolor,
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('images/logo.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            _foundUsers[index]['name'],
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          subtitle: Text(
                            '${_foundUsers[index]["des"]}',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found Please try with diffrent search',
                      style: TextStyle(fontSize: 24, color: Colors.white70),
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomappBar(),
    );
  }
}
