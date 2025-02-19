import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          buildHeader(),
          buildCourseFocus(),
          buildModules(),
          buildProjectList(),
        ],
      ),
    ));
  }

  Widget buildHeader() {
    return Container(
      color: Colors.blueAccent,
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      "Flutter course",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    "2025-10",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                          color: const Color.fromARGB(255, 8, 8, 8), width: 1),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Icon(
                      Icons.manage_search_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                          color: const Color.fromARGB(255, 8, 8, 8), width: 1),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCourseFocus() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Center(
            child: Text(
              "Course Focus",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(""),
        Row(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.blue[600],
                  width: 120.0,
                  height: 7.0,
                ),
                SizedBox(height: 3),
                Text("UI Development"),
              ]),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.red[600],
                  width: 100.0,
                  height: 7.0,
                ),
                SizedBox(height: 3),
                Text("Architecture")
              ]),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.amber[600],
                  width: 90.0,
                  height: 7.0,
                ),
                SizedBox(height: 3),
                Text("Design thinking Testing")
              ]),
          /*Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.grey[200],
                  width: 100.0,
                  height: 7.0,
                ),
                Text("")
              ]),*/
        ]),
      ]),
    );
  }

  Widget buildModules() {
    return Column(
      children: [
        const Divider(),
        Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              "Modules",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              ContainerIconwithText(
                color: Colors.blue,
                icon: Icons.book_sharp,
                label: 'Introduction',
              ),
              SizedBox(width: 20),
              ContainerIconwithText(
                color: Colors.red,
                icon: Icons.design_services,
                label: "UX design",
              ),
              SizedBox(width: 20),
              ContainerIconwithText(
                color: Colors.orange,
                icon: Icons.storage,
                label: "State Management",
              ),
              SizedBox(width: 20),
              ContainerIconwithText(
                color: Colors.grey,
                icon: Icons.bug_report,
                label: "Testing",
              ),
              SizedBox(width: 20),
              ContainerIconwithText(
                color: Colors.blue,
                icon: Icons.network_check,
                label: "Networking",
              ),
              SizedBox(width: 20),
              ContainerIconwithText(
                color: Colors.green,
                icon: Icons.share,
                label: "Share",
              ),
              SizedBox(width: 20),
              ContainerIconwithText(
                color: Colors.purple,
                icon: Icons.folder,
                label: "Archive",
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
        SizedBox(width: 20),
        const Divider(),
      ],
    );
  }

  Widget buildProjectList() {
    return Column(
      children: [
        /*Container(
          margin: EdgeInsets.all(10),
          child: Text("Projects",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left), //no funciona porque el Text no tiene un ancho definido, 
                                          //ya que por defecto el Text solo ocupa el espacio necesario para el contenido.
        ),*/
        Container(
          margin: EdgeInsets.only(top: 20, left: 20),
          alignment: Alignment
              .centerLeft, // Alinea el contenido del contenedor a la izquierda
          child: Text(
            "Projects",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 500,
            child: ListView(scrollDirection: Axis.vertical, children: [
              ContainerFolderwithText(
                label: " Sudoku",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Random User",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Note Taking",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Weather",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Delivery App",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Random User",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Note Taking",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Weather",
              ),
              SizedBox(height: 10),
              ContainerFolderwithText(
                label: " Delivery App",
              ),
            ]))
      ],
    );
  }
}

class ContainerIconwithText extends StatelessWidget {
  const ContainerIconwithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 240, 240),
            border: Border.all(
              color: const Color.fromARGB(255, 242, 240, 240),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
            child: Icon(icon, color: color, size: 40),
          ),
        ),
        SizedBox(height: 5), //Espacio entre el icono y el texto
        Text(
          label,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class ContainerFolderwithText extends StatelessWidget {
  const ContainerFolderwithText({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 242, 240, 240),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(children: [
          Icon(
            Icons.folder,
            color: Colors.blue[200],
            size: 24.0,
          ),
          SizedBox(
              width: 330,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label),
                    Icon(
                      Icons.more_vert_rounded,
                    )
                  ])),
        ]),
      ),
    );
  }
}
