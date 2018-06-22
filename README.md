# Game of Thrones parody quiz
The main premise of the quiz is for the user to answer some relevant questions
and have them get Myers briggs personality and the character that best corresponds with that personality as well as a description of that character’s personality.

The user has a point total that starts at zero when a quiz is initialized. Then the user answers the questions.  The questions are multiple choice with each choice having a corresponding number.  In order to answer these questions, the user picks the relevant number to select their choice.   The game then checks to see if the user entered a valid choice.  If the user entered a valid choice, then the game takes that into account, increments or decrements the user’s total, depending on the user’s input.  

At the end the game takes the total and checks to see if it falls into a specific range.  That specific range will then correspond to a specific character.  The user will then get back the character that their total corresponds to.  They will be able to see their Myers Briggs personality profile and the character that has that type with the brief description.

## Technical
The quiz is written is Ruby, and uses ActiveRecord. The source code can be found here <link to github>.

Quiz questions are stored in a table, and are exposed one at a time when a new Quiz instance is initialized (when the user begins a new quiz). The code can be tested by running the run.rb file in the terminal (make sure a new Quiz is initiated there).

## Contributing
Pull requests should clearly state the changes that you would like to integrate. A new migration file is required in order
to add or change columns to tables in the database.
