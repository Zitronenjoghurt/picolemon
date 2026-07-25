import 'package:flutter/material.dart';
import 'package:picolemon_games/picolemon_games.dart';

class TicTacToeBoardWidget extends StatelessWidget {
  final TicTacToeBoard board;
  final void Function(int index) onTap;
  final bool interactive;

  const TicTacToeBoardWidget({
    super.key,
    required this.board,
    required this.onTap,
    this.interactive = true,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: board.width / board.height,
      child: GridView.count(
        crossAxisCount: board.width,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          board.cells.length,
          (i) => _buildCell(context, i),
        ),
      ),
    );
  }

  Widget _buildCell(BuildContext context, int index) {
    final mark = board.cells[index];
    return InkWell(
      onTap: (interactive && mark == 0) ? () => onTap(index) : null,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            switch (mark) {
              1 => 'X',
              2 => 'O',
              _ => '',
            },
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
