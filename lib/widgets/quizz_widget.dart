import 'package:flutter/material.dart';
import 'package:space/models/question_model.dart';
import 'package:space/ui/shared/color.dart';

//The following widget is used to render the questions on the quiz screen
Widget questionWidget(
    QuestionModel questionModel, void Function() function, bool presed) {
  return Column(
    children: [
      // Widget to display the question text.
      SizedBox(
        width: double.infinity,
        height: 200.0,
        child: Text(
          "${questionModel.question}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),

      // Loop through answer options and create buttons for each.
      for (int i = 0; i < questionModel.answers!.length; i++)
        Container(
          width: double.infinity,
          height: 50.0,
          margin: EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
          child: RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            fillColor: AppColor.secondaryColor,
            onPressed:
                function, // Attach the provided function to the button press.
            child: Text(questionModel.answers!.keys
                .toList()[i]), // Display answer option text.
          ),
        )
    ],
  );
}
