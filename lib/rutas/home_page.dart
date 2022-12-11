import 'package:flutter/material.dart';

const List<Color> colorOptions = [Colors.pink, Colors.blue, Colors.yellow, Colors.orange,
Colors.teal, Colors.green];

class HomePage extends StatelessWidget{
 const HomePage({
  Key? key,
  required this.useLightMode,
  required this.onLightMode,
  required this.onSelectedColor,
  required this.colorSelected,
  required this.colorScheme,
 }) :super(key: key);

 final bool useLightMode;
 final VoidCallback onLightMode;
 final ValueChanged<int> onSelectedColor;
 final int colorSelected;
 final Color colorScheme;

  AppBar createAppBar() {
    return AppBar(
      leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      title: const Text("Diario"),
      actions: [
        IconButton(
            icon: useLightMode ? const Icon(Icons.wb_sunny_outlined) : const Icon(Icons.wb_sunny),
            onPressed: onLightMode,
            ),
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          itemBuilder: (context) {
            return List.generate(colorOptions.length, (index) {
              return PopupMenuItem(
                  value: index,
                  child: Icon(
                    index == colorSelected ? Icons.circle : Icons.circle_outlined,
                    color: colorOptions[index],
                  ));
            });
          },
          onSelected: onSelectedColor,
          ),
       ],
      );      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
        appBar: createAppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            const Text("Mis Notas", style: TextStyle(color: Colors.black, fontSize: 32)),
            for (var c = 0; c < 15; c++)
              Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text("$c")),
                  title: const Text('Septiembre'),
                  subtitle: Text('Flutter impresionante $c'),
                ),
              )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 2,
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.star), label: 'Favoritos'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
            NavigationDestination(icon: Icon(Icons.add_location_alt), label: 'Sitios'),
          ],
        ),
      );    
  }

}