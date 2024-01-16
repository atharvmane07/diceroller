import 'package:flutter/material.dart';
import 'package:jan2024/dice_roller.dart';

const startalignment = Alignment.topLeft;
const endalignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startalignment,
          end: endalignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget{
// const GradientContainer(this.colors,{super.key});

// final List<Color> colors;

//   @override
//   Widget build(context){
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: startalignment,
//               end:endalignment,
//             ),
//           ),
//           child:  const Center(
//             child: StyledText('hello atharv'),
//           ),
//         );


//   }

// }