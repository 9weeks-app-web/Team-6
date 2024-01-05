import 'package:flutter/material.dart';
import 'package:flutter_app/common.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
    required this.keyValInfo,
  });

  final dynamic keyValInfo;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        keyValInfo.entries.map(
          (entry) {
            return TableRow(
              children: [
                TableCell(
                  child: Text(
                    entry.key,
                    style: DesignTextStyle.Label_2_Regular,
                  ),
                ),
                TableCell(
                  child: Text(
                    entry.value,
                    style: DesignTextStyle.Label_2_Regular,
                  ),
                ),
              ],
            );
          },
        ).toList(),
      ],
    );
  }
}
