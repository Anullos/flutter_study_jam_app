import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/data_badges.dart';
import '../../data/data_generations.dart';
import '../../data/data_heights.dart';
import '../../data/data_weights.dart';
import '../config/app_images.dart';
import '../config/app_icons.dart';
import '../widgets/badge_widget.dart';
import '../widgets/generation_widget.dart';
import '../widgets/icon_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Theme.of(context).canvasColor,
            expandedHeight: 120,
            actions: <Widget>[
              IconButton(
                icon: SvgPicture.asset(AppIcons.generation),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(AppIcons.filter),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(AppIcons.sort),
                onPressed: () {},
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                  style: TextStyle(
                      color: Colors.black87, fontFamily: 'SF-Pro-Display'),
                  'Pokédex'),
              titlePadding: const EdgeInsets.all(20.0),
              background: SvgPicture.asset(AppImages.pokeballHeader,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFFF5F5F5), BlendMode.srcIn)),
            ),
          ),
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
