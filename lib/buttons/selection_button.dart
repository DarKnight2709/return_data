import 'package:flutter/material.dart';
import 'package:return_data/pages/selection_screen.dart';

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        _navigateAndDisplaySelction(context);
      },
      child: const Text("Pick an option, any option!"),
    )
    ;
  }


  void _navigateAndDisplaySelction(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SelectionScreen(),
      ),
    );


  // explain: https://poe.com/s/wGYK8nGzlu4BfCe6RMhW
  if (!context.mounted) return;

  // After the Selection Screen returns a result, hide any previous snackbars
  // and show the new result.
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
  }
  
}


