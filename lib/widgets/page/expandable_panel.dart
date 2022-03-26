import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';

class ExpandablePanel extends StatefulWidget {
  final Widget expanded;
  final String title;
  const ExpandablePanel({Key? key, required this.title, required this.expanded})
      : super(key: key);

  @override
  _ExpandablePanelState createState() => _ExpandablePanelState();
}

class _ExpandablePanelState extends State<ExpandablePanel> {
  bool _isExpanded = false;

  void _toogle() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.0),
            color: _isExpanded ? appBarColor : Colors.white,
          ),
          // margin: const EdgeInsets.all(4),
          height: 50,
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: _toogle,
                icon: _isExpanded
                    ? const Icon(Icons.arrow_drop_down_sharp)
                    : const Icon(Icons.arrow_right_sharp),
                color: expandablePanelTextColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                    color: expandablePanelTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        _isExpanded ? widget.expanded : const SizedBox(height: 0)
      ],
    );
  }
}
