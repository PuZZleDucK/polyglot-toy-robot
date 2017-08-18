Toy Robot Solution
==================

Process
-------
- [x] Extract requirements/checklists/docs/tests/etc
- [x] Expand tests to cover suitable minimal cases
- [ ] Framework/Pipeline
- [ ] Make tests pass
- [ ] Cleanup


Description
-----------

- [ ] The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
- [ ] There are no other obstructions on the table surface.
- [ ] The robot is free to roam around the surface of the table, but must be prevented from falling to destruction.
- [ ] Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

- [ ] commands of the following (textual) form:
- [ ] PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
- [ ] The origin (0,0) can be considered to be the SOUTH WEST most corner.
- [ ] The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command
- [ ] The application should discard all commands in the sequence until
  a valid PLACE command has been executed.
- [ ] MOVE will move the toy robot one unit forward in the direction it is currently facing.
- [ ] LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
- [ ] REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.

- [ ] A robot that is not on the table will ignore the MOVE, LEFT, RIGHT and REPORT commands.
- [x] Input will be from a file.
- [x] Provide test data to exercise the application.
- [ ] The application must be a command line application.

- [ ] The toy robot must not fall off the table during movement
- [ ] This also includes the initial placement of the toy robot.
- [ ] Any move that would cause the robot to fall must be ignored.

- [ ] Please provide your source code
- [x] any test code/data you using
- [ ] Please engineer your solution to a standard you consider suitable for
production


Bugbears
--------
- Hard line wraps in .md file
- Heavy .md style
- This is a seriously hard problem to take seriously
- The examples seem devoid of any useful examples
- Behaviour of many commands and state of robot before valid PLACE is unspecified
- How much should I care? What is 'safe' in this context?
- Should I bother to handle multiple REPORTs? Examples don't clarify!
