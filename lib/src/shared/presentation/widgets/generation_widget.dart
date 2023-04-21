import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/models/generation_model.dart';
import '../config/app_images.dart';

const Color _colorSelected = Color(0xFFEA5D60);
const Color _colorUnSelected = Color(0xFFF2F2F2);

class GenerationWidget extends StatelessWidget {
  const GenerationWidget(
      {super.key, required this.generation, required this.isSelected});
  final GenerationModel generation;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? _colorSelected : _colorUnSelected,
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: _colorSelected.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(-2, 5),
                )
              ]
            : null,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 12,
            child: SvgPicture.asset(AppImages.pattern,
                colorFilter: !isSelected
                    ? const ColorFilter.mode(Color(0xFFB4B4B4), BlendMode.srcIn)
                    : null),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(AppImages.pokeball,
                colorFilter: !isSelected
                    ? const ColorFilter.mode(Color(0xFFB4B4B4), BlendMode.srcIn)
                    : null),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: generation.pokemonSpecies
                      .map(
                        (e) => SizedBox(
                          width: 45,
                          height: 45,
                          child: Image.asset(
                            e,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Text(generation.name,
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color:
                          isSelected ? Colors.white : const Color(0xFF747476))),
            ],
          )
        ],
      ),
    );
  }
}
