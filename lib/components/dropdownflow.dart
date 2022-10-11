import 'package:flutter/material.dart';

class DropDownFlow extends StatelessWidget {
  DropDownFlow({required this.caption});
  String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48,
          width: 374,
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: caption,
                labelStyle: TextStyle(fontSize: 15)),
            onTap: () {},
            items: [
              DropdownMenuItem(
                child: Text('Gadgets'),
                value: 'Gadgets',
              ),
              DropdownMenuItem(
                child: Text('Dorime'),
                value: 'Dorime',
              ),
              DropdownMenuItem(
                child: Text('Cars'),
                value: 'Cars',
              ),
              DropdownMenuItem(
                child: Text('Food'),
                value: 'Food',
              ),
            ],
            onChanged: (value) {},
            borderRadius: BorderRadius.circular(6),
          ),
        )
      ],
    );
  }
}
