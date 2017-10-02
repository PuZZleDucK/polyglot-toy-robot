# Polyglot Toy Robot Solution

## Polyglot Toy Robot
- My intention is to create a Rails solution for the Toy Robot problem
- I will then implement equivalent solutions in as many languages as I can
- The current additional targets are: Java, Python, Haskell an Shell Script
- I want to demonstrate a good testing methodology and CI/CD pipeline
- Please note that clicking the following links may reveal the authors identity or username:
  - Source code is available here: https://goo.gl/vzAuH7
  - CI/CD reporting is available here: https://goo.gl/hCQte5
  - CI Status: [![Build Status](https://goo.gl/jX5s68)](https://goo.gl/hCQte5)
- I have included below the checklists I created to work with... usually I would remove when complete

## Rails Toy Robot
- To install run:
  - ```git clone <url>```
  - ``` cd polyglot-toy-robot```
  - ```bundle install```
  - ```./bin/rails db:migrate```
- To run a toy script:
  - ```./bin/rails runner "ToyController.evaluate_file 'test/fixtures/files/<test-script>.toy'"```
- To all tests:
  - ```./bin/rails test```

## Bash Toy Robot
- To run a toy script: ```./lib/bash/robot.sh test/fixtures/files/<input-file>.toy```
- To all tests: ```./test/integration/test-bash.sh```

## Python Toy Robot - TODO
- To run a toy script: ```./lib/python/robot.py <input-file.toy>```
- To all tests: ```./test/python/unit_tests.py```


## Java Toy Robot - TODO
- To compile toy robot:
  - ```javac ./lib/java/robot.java <input-file.toy>```
  - Maven/Grunt?
- To run a script: ```java ./lib/java/robot```
- To run tests: ```java ./lib/java/test```

## Haskell Toy Robot - TODO
- To run a toy script: ```runhaskell ./lib/haskell/robot.hs <input-file.toy>```
- To all tests: ```runhaskell ./lib/haskell/test.sh```

## ??? Toy Robot - TODO
- To run a toy script: ```./lib/???/robot.?? <input-file.toy>```
- To all tests: ```./lib/???/test.??```

# Process
- [x] Extract requirements/checklists/docs/tests/etc
- [x] Expand tests to cover suitable minimal and extended cases
- [x] Rails framework
- [x] Test framework (minitest)
- [x] CI Pipeline
- [x] Make tests fail
- [x] Generate rails model and controller
- [x] Make tests pass
- [ ] Cleanup and repeat

# Checklist
- [x] square tabletop, of dimensions 5 units x 5 units (referenced as locations 0 to 4).
- [x] There are no other obstructions on the table surface.
- [x] The robot is free to roam, but must be prevented from falling to destruction.
- [x] Any movement that would result in the robot falling from the table must be prevented
- [x] however further valid movement commands must still be allowed.

- [x] commands of the following (textual) form:
- [X] PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
- [x] The origin (0,0) can be considered to be the SOUTH WEST most corner.
- [x] The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command
- [x] The application should discard _all_ commands in the sequence until a valid PLACE command has been executed.
- [x] MOVE will move the toy robot one unit forward in the direction it is currently facing.
- [x] LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
- [x] REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.

- [x] A robot that is not on the table will ignore the MOVE, LEFT, RIGHT and REPORT commands.
- [x] Input will be from a file.
- [x] Provide test data to exercise the application.
- [x] The application must be a command line application.

- [x] must not fall off during initial placement of the toy robot.
- [x] Any move that would cause the robot to fall must be ignored.

- [x] any test code/data you using
  - [x] handle multiple REPORTs?
  - [x] duplicate PLACE command
- [x] Please engineer your solution to a standard you consider suitable for production
- [x] Please provide your source code


## Notes to self:
- [x] Use URL shortener to preserve anonymity for CI/CD link
- [x] Data scripts in a model... input_script and expected_output
- [x] Evaluation in controller
