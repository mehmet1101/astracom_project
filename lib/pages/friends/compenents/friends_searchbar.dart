import 'package:flutter/material.dart';
import 'package:test_1/pages/friends/compenents/firends_user.dart';
import 'package:test_1/pages/friends/compenents/firends_selfpage.dart';
class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final controller = TextEditingController();
  List<User> users = allUsers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.1,
        title: const Text('My Friends',style: TextStyle(color: Colors.black54),),
      ),
      body: Column(
        children: [
          const SizedBox(height: 120),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 20, 16, 5),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue))),
              onChanged: searchUser,
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return Stack(
                      children: [
                        Card(
                          child: ListTile(
                              leading: Image.network(
                                user.urlImage,
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50
                              ),
                              trailing: ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shadowColor: Colors.blue),
                              child: const Icon(Icons.message_outlined,color: Colors.blueAccent,)),
                              title: Text(user.name),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserPage(user: user)))),
                        ),
                      ],
                    );
                  }))
        ],
      ),
    );
  }

  void searchUser(String query) {
    final suggestions = allUsers.where((user) {
      final userName = user.name.toLowerCase();
      final input = query.toLowerCase();

      return userName.contains(input);
    }).toList();

    setState(() => users = suggestions);
  }
}
