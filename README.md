Sliced Bread
============

A simple Array Slicer

Sliced Bread is an extension to the humble Ruby Array. It helps you slice the array in various ways. It can slice the array from top for given number of elements, or from bottom for given number of elements. It can delete the elements matching the given substring from a array of string elements. Implementation on Pure Ruby {Array Class}[http://www.ruby-doc.org/core-1.9.3/Array.html].

Installation
==

In Rails 3+, add this to your Gemfile and run the bundle command.

  gem 'sliced_bread'

Usage
==

  require 'sliced_bread'

  There are mainly three helpers available for sliced_bread usage.

    array_object.top(number_of_elements)
    array_object.bottom(number_of_elements)
    array_object.delete_if_contains(substring)


Example
==

    sample_arr = ["a","b","c","d","e"]
    sample_arr.top(2) 
    > ["a","b"]
    sample_arr.bottom(3)
    > ["c","d","e"]
    ["Amit", "Yash", "Priya", "Souranil"].delete_if_contains("Am")
    > [Yash", "Priya", "Souranil"]
  Returns {Array objects}[http://www.ruby-doc.org/core-1.9.3/Array.html] for any of the helpers used.
