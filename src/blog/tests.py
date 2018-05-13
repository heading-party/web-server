from django.test import TestCase

class MyTests(TestCase):

    def test_one_plus_one(self):
        self.assertIs(1+1 == 2, True)
