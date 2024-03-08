import 'package:flutter/material.dart';
import 'package:mcs/screens/content/user_account.dart';
import 'package:mcs/widgets/navigation_bar.dart';
import 'package:mcs/data/data_store.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void changeIndex(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  void getIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 120,
        title: Text(screensLabel[_selectedIndex]),

        elevation: 5,
        shadowColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                  size: 24,
                  color: Colors.white,
                )),
          )
        ],
        // ************************************* For Search Bar
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(85.0),
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 16),
            child: SearchBar(
              hintText: 'Search',
              hintStyle: MaterialStatePropertyAll(TextStyle(
                color: Colors.white60,
                fontSize: 18,
              )),
              leading: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.search,
                  color: Colors.white60,
                ),
              ),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
              backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 56, 56, 56)),
            ),
          ),
        ),
        // *************************************

        // From flutter.dev, the standard way, some tweaks still left
        // bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(60.0),
        //     child: SearchAnchor(builder: ((context, controller) {
        //       return SearchBar(
        //         onTap: () {
        //           controller.openView();
        //         },
        //         onChanged: (_) {
        //           controller.openView();
        //         },
        //       );
        //     }), suggestionsBuilder: ((context, controller) {
        //       return List<ListTile>.generate(
        //           10,
        //           (index) => ListTile(
        //                 title: Text('Title No. 0$index'),
        //                 subtitle: Text('Some description'),
        //                 leading: Icon(Icons.person),
        //               ));
        //     }))),
      ),
      body: (_selectedIndex != 3)
          ? screensContent[_selectedIndex]
          : UserAccountContent(
        backToIndex: getIndex,
      ),
      bottomNavigationBar: BNavigationBarWidget(
        currentIndex: _selectedIndex,
        changeIndex: changeIndex,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white,
      //   currentIndex: _selectedIndex,
      //   onTap: (value) {
      //     setState(() {
      //       _selectedIndex = value;
      //     });
      //   },
      //   backgroundColor: Colors.black,
      //   type: BottomNavigationBarType.fixed,
      //   iconSize: 25,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           // color: Colors.white,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.menu,
      //           // color: Colors.white,
      //         ),
      //         label: 'Menu'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.format_size_sharp,
      //           // color: Colors.white,
      //         ),
      //         label: 'SizeGuide'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person,
      //           // color: Colors.white,
      //         ),
      //         label: 'User'),
      //   ],
      // ),
    );
  }
}
