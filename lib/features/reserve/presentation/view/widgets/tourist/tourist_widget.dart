import 'package:flutter/material.dart';
import 'package:hotel_reservation/features/reserve/presentation/state/tourist_provider.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/tourist/dismissible_background.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/tourist/tourist_tile.dart';
import 'package:provider/provider.dart';

class TouristWidget extends StatelessWidget {
  const TouristWidget({
    super.key,
    this.onChanged,
    required this.title,
    required this.touristInfo,
    this.onRemove,
    required this.dismissible,
  });
  final String title;
  final TouristInfo touristInfo;
  final Function(int)? onRemove;
  final Function(TouristInfo)? onChanged;
  final bool dismissible;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TouristProvider()..info = touristInfo,
      child: Builder(
        builder: (context) {
          final provider = context.watch<TouristProvider>();
          if (dismissible) {
            return Dismissible(
              key: Key(touristInfo.index.toString()),
              onDismissed: (_) => onRemove?.call(touristInfo.index),
              direction: DismissDirection.endToStart,
              background: const DismissibleBackgroundWidget(),
              child: TouristTile(
                key: ValueKey(touristInfo.index.toString()),
                provider: provider,
                title: title,
                touristInfo: touristInfo,
                onChanged: onChanged,
              ),
            );
          }
          return TouristTile(
            key: ValueKey(touristInfo.index.toString()),
            provider: provider,
            title: title,
            touristInfo: touristInfo,
            onChanged: onChanged,
          );
        },
      ),
    );
  }
}
