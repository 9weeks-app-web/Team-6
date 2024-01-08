import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    Key? key,
    required this.keyValInfo,
    this.keyRatio = 0.3,
  }) : super(key: key);

  final Map<String, String> keyValInfo;
  final double? keyRatio;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FractionColumnWidth(keyRatio!),
        1: FractionColumnWidth(1 - keyRatio!),
      },
      children: List.generate(
        keyValInfo.length,
        (index) {
          final entry = keyValInfo.entries.elementAt(index);
          return TableRow(
            children: [
              TableCell(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: index != keyValInfo.length - 1 ? 12.0 : 0),
                  child: Text(
                    entry.key,
                    style: DesignTextStyle.Label_2_Regular,
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: index != keyValInfo.length - 1 ? 12.0 : 0),
                  child: Text(
                    entry.value,
                    style: DesignTextStyle.Label_2_Regular,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
