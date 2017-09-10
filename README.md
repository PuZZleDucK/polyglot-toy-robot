# Polyglot Toy Robot Solution

## Polyglot Toy Robot
- My intention is to create a Rails solution for the Toy Robot problem
- I will then implement equivalent solutions in as many languages as I can
- The current additional targets are: Java, Python, Haskell an Shell Script
- I want to demonstrate a good testing methodology and CI/CD pipeline
- Please note that clicking the following links may reveal the authors identity or username:
  - Source code is available here:
  - CI/CD reporting is available here:
  - CI Status:
- I have included below the checklists I created to work with... usually I would remove when complete

## Rails Toy Robot
- To run a toy script: ```./bin/rake task-name toy-script```
- To all tests: ```./bin/rails test```

## Java Toy Robot
- To compile toy robot: ```javac ./lib/java/robot.java <input-file.toy>```
- To run a script: ```java ./lib/java/robot```
- To run tests: ```java ./lib/java/test```

## Python Toy Robot
- To run a toy script: ```./lib/python/robot.py <input-file.toy>```
- To all tests: ```./lib/python/test.py```

## Haskell Toy Robot
- To run a toy script: ```runhaskell ./lib/haskell/robot.hs <input-file.toy>```
- To all tests: ```runhaskell ./lib/haskell/test.sh```

## ??? Toy Robot
- To run a toy script: ```./lib/???/robot.?? <input-file.toy>```
- To all tests: ```./lib/???/test.??```

# Process
- [x] Extract requirements/checklists/docs/tests/etc
- [x] Expand tests to cover suitable minimal and extended cases
- [x] Rails framework
- [x] Test framework (minitest)
- [ ] CI Pipeline
- [ ] Make tests pass
- [ ] Cleanup and repeat

# Checklist
- [ ] square tabletop, of dimensions 5 units x 5 units.
- [ ] There are no other obstructions on the table surface.
- [ ] The robot is free to roam, but must be prevented from falling to destruction.
- [ ] Any movement that would result in the robot falling from the table must be prevented
- [ ] however further valid movement commands must still be allowed.

- [ ] commands of the following (textual) form:
- [ ] PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
- [ ] The origin (0,0) can be considered to be the SOUTH WEST most corner.
- [ ] The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command
- [ ] The application should discard _all_ commands in the sequence until a valid PLACE command has been executed.
- [ ] MOVE will move the toy robot one unit forward in the direction it is currently facing.
- [ ] LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
- [ ] REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.

- [ ] A robot that is not on the table will ignore the MOVE, LEFT, RIGHT and REPORT commands.
- [ ] Input will be from a file.
- [x] Provide test data to exercise the application.
- [ ] The application must be a command line application.

- [ ] The toy robot must not fall off the table during movement
- [ ] This also includes the initial placement of the toy robot.
- [ ] Any move that would cause the robot to fall must be ignored.

- [x] any test code/data you using
  - [ ] handle multiple REPORTs?
  - [ ] duplicate PLACE command
- [ ] Please engineer your solution to a standard you consider suitable for production
- [x] Please provide your source code


## Notes to self:
- Use URL shortener to preserve anonymity for CI/CD link
