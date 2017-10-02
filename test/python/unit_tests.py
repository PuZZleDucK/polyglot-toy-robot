#! /usr/bin/python
import unittest

class RobotTests(unittest.TestCase):
    def test_tautology(self):
        self.assertEqual(True, True)

if __name__ == '__main__':
    unittest.main()
