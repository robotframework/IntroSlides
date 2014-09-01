class Selenium2Library:

    def input_text(self, locator, text):
        """Types given `text` into text field `locator`."""
        print "Typing text '%s' into '%s'." % (text, locator)
        element = self._element_find(locator)
        element.clear()
        element.send_keys(text)

    def title_should_be(self, title):
        """Verifies that current page title equals `title`."""
        actual = self.get_title()
        if actual != title:
            raise AssertionError("Title should have been '%s' but was '%s'."
                                 % (title, actual))
        print "Page title is '%s'." % title


# Above is real Selenium2Library code but slightly simplified.
