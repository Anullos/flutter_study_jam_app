import 'package:flutter/material.dart';

import '../../data/data_badges.dart';
import '../../data/data_generations.dart';
import '../../data/data_heights.dart';
import '../../data/data_weights.dart';
import '../widgets/badge_widget.dart';
import '../widgets/generation_widget.dart';
import '../widgets/icon_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Components',
          style: TextStyle(color: Colors.black, fontFamily: 'SF-Pro-Display'),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 20.0, bottom: 8),
              child: Text('Badges',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Wrap(
                spacing: 12,
                runSpacing: 12,
                children: dataBadgets
                    .map(
                      (e) => BadgeWidget(badge: e),
                    )
                    .toList(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, left: 20.0, bottom: 8),
              child: Text('Icons',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: dataBadgets.length,
              itemBuilder: (context, index) {
                final badge = dataBadgets[index];
                return IconWidget(
                  iconUrl: badge.imageUrl,
                  colorIcon: badge.getColor,
                  isActive: false,
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: dataBadgets.length,
              itemBuilder: (context, index) {
                final badge = dataBadgets[index];
                return IconWidget(
                  iconUrl: badge.imageUrl,
                  colorIcon: badge.getColor,
                  isActive: true,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, left: 20.0, bottom: 8),
              child: Text('Heights',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: dataHeights.length,
              itemBuilder: (context, index) {
                final badge = dataHeights[index];
                return IconWidget(
                  iconUrl: badge.imageUrl,
                  colorIcon: badge.getColor,
                  isActive: false,
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: dataHeights.length,
              itemBuilder: (context, index) {
                final badge = dataHeights[index];
                return IconWidget(
                  iconUrl: badge.imageUrl,
                  colorIcon: badge.getColor,
                  isActive: true,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, left: 20.0, bottom: 8),
              child: Text('Weights',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: dataWeights.length,
              itemBuilder: (context, index) {
                final badge = dataWeights[index];
                return IconWidget(
                  iconUrl: badge.imageUrl,
                  colorIcon: badge.getColor,
                  isActive: false,
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: dataWeights.length,
              itemBuilder: (context, index) {
                final badge = dataWeights[index];
                return IconWidget(
                  iconUrl: badge.imageUrl,
                  colorIcon: badge.getColor,
                  isActive: true,
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, left: 20.0, bottom: 8),
              child: Text('Generations',
                  style: Theme.of(context).textTheme.headlineSmall),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 12 / 9,
              ),
              itemCount: dataGenerations.length,
              itemBuilder: (context, index) {
                final generation = dataGenerations[index];
                return GenerationWidget(
                  generation: generation,
                  isSelected: false,
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 12 / 9,
              ),
              itemCount: dataGenerations.length,
              itemBuilder: (context, index) {
                final generation = dataGenerations[index];
                return GenerationWidget(
                  generation: generation,
                  isSelected: true,
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}
