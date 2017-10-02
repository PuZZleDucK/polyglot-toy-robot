#! /usr/bin/python
import unittest

class RobotTests(unittest.TestCase):
    def test_tautology(self):
        self.assertEqual(True, False)

if __name__ == '__main__':
    unittest.main()
