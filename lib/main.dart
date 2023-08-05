import "package:flutter/material.dart";

void main() {
  runApp(
    const CourseApp(),
  );
}

class CourseApp extends StatefulWidget {
  const CourseApp({super.key});

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Color(0xFF686E78),
            selectedLabelStyle: const TextStyle(
              color: Color(0xFF64B5F6),
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color(0xFF64B5F6),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.desktop_windows_sharp),
                label: "Programs",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.quiz_outlined),
                label: "Quizzes",
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              children: [
                _heading(),
                _banner(),
                _options(),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Tutorials for you",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xCC6A6B6D),
                    ),
                  ),
                ),
                Expanded(
                  child: _courselist(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _heading() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Tutorials",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color(0xFF707070),
          ),
        ),
        // Spacer(),
        Icon(
          Icons.search,
          size: 25,
          color: Color.fromRGBO(104, 110, 120, 1),
        ),
      ],
    ),
  );
}

Widget _banner() {
  return Card(
    elevation: 3,
    margin: EdgeInsets.only(bottom: 20),
    child: Stack(
      // Use Stack here
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/1360591377/vector/woman-working-in-front-of-tv.jpg?s=612x612&w=0&k=20&c=4oO9mvGZAXxUxV73TcAFpdSwos-JTJMwbN1TizNsMxs="),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          right: 20, // Adjust the positioning as needed
          bottom: 10, // Adjust the positioning as needed
          child: Text(
            "See more   >",
            style: TextStyle(
              fontSize: 16,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _options() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Color(0xFFE4E7EC),
                  width: 2,
                ),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 30,
                child: Icon(
                  Icons.lightbulb_outline,
                  color: Color(0xFF4FACF8),
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: 7),
            const Text(
              "Algorithms",
              style: TextStyle(
                color: Color(0xFF858688),
                fontSize: 15,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Color(0xFFE4E7EC),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 30,
                child: Icon(
                  Icons.library_books_outlined,
                  color: Color(0xFF4FACF8),
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: 7),
            Text(
              "Course Contents",
              style: TextStyle(
                color: Color(0xFF858688),
                fontSize: 15,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Color(0xFFE4E7EC),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 30,
                child: Icon(
                  Icons.account_tree_outlined,
                  color: Color(0xFF4FACF8),
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: 7),
            Text(
              "Flowcharts",
              style: TextStyle(
                color: Color(0xFF858688),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _courselist() {
  return Container(
    margin: EdgeInsets.only(top: 12),
    child: ListView(
      children: const [
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 202, 229, 251),
            radius: 26,
            child: Icon(
              Icons.code,
              size: 30,
            ),
          ),
          title: Text("C Fundamentals"),
          subtitle: Text("10 Tutorials"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 202, 229, 251),
            radius: 26,
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
          title: Text("Decision Making"),
          subtitle: Text("20 Tutorials"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 202, 229, 251),
            radius: 26,
            child: Icon(
              Icons.loop,
              size: 30,
            ),
          ),
          title: Text("Loops"),
          subtitle: Text("30 Tutorials"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 202, 229, 251),
            radius: 26,
            child: Icon(
              Icons.data_array,
              size: 30,
            ),
          ),
          title: Text("Arrays"),
          subtitle: Text("40 Tutorials"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 202, 229, 251),
            radius: 26,
            child: Icon(
              Icons.format_quote,
              size: 30,
            ),
          ),
          title: Text("Strings"),
          subtitle: Text("15 Tutorials"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    ),
  );
}
