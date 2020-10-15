import unittest
from pythonproject.settings import SECRET_KEY, DATABASE_PASSWORD


class PythonProjectTest(unittest.TestCase):
    """Test  case for PythonProject package"""

    def test_settings1(self):
        """Test settings 1"""
        self.assertIsNotNone(SECRET_KEY)

    def test_settings2(self):
        """Test settings 2"""
        self.assertIsNotNone(DATABASE_PASSWORD)
