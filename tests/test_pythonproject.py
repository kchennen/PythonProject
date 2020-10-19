import unittest
from pythonproject.__main__ import main


class PythonProjectTest(unittest.TestCase):
    """Test  case for PythonProject package"""

    def test_main1(self):
        """Test Main function of PythonProject"""
        self.assertEqual(main(), 'Hello, World!')

    def test_main2(self, name='Test'):
        """Test Main function of PythonProject"""
        self.assertEqual(main(name=name), 'Hello, Test!')
