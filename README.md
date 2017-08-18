Toy Robot Solution
==================

Process
-------
- [x] Extract requirements/checklists/docs/tests/etc
- [x] Expand tests to cover suitable minimal cases
- [x] Framework/Pipeline
- [ ] Make tests pass
- [ ] Cleanup


Description
-----------

- [x] The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
- [x] There are no other obstructions on the table surface.
- [x] The robot is free to roam around the surface of the table, but must be prevented from falling to destruction.
- [x] Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

- [x] commands of the following (textual) form:
- [x] PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.
- [x] The origin (0,0) can be considered to be the SOUTH WEST most corner.
- [x] The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any order, including another PLACE command
- [x] The application should discard all commands in the sequence until a valid PLACE command has been executed.
- [x] MOVE will move the toy robot one unit forward in the direction it is currently facing.
- [x] LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
- [x] REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.

- [x] A robot that is not on the table will ignore the MOVE, LEFT, RIGHT and REPORT commands.
- [x] Input will be from a file.
- [x] Provide test data to exercise the application.
- [x] The application must be a command line application.

- [x] The toy robot must not fall off the table during movement
- [x] This also includes the initial placement of the toy robot.
- [x] Any move that would cause the robot to fall must be ignored.

- [x] any test code/data you using
  - [x] add 360 test
  - [x] add ignore MOVE, LEFT, RIGHT and REPORT before PLACE test
  - [x] handle multiple REPORTs?
  - [x] duplicate PLACE command
- [ ] Please engineer your solution to a standard you consider suitable for production
- [ ] Please provide your source code


# Bugbears
- Hard line wraps in .md file
- This is a seriously hard problem to take seriously
- The examples seem devoid of any useful examples
- How much should I care? What is 'safe' in this context?
