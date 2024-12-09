# Unexpected Behavior in MATLAB Function with Vector Input and Logical Operators

This repository demonstrates an uncommon error in MATLAB related to unexpected behavior when a function handles vector inputs and the use of logical operators within conditional statements.  The `bug.m` file shows the problematic code, while `bugSolution.m` provides a corrected version. The issue arises from implicit type coercion and how MATLAB handles element-wise operations versus scalar operations within conditional statements.

## Problem Description

The original function `myFunction` is designed to double the input if it's greater than 5 and add 2 otherwise.  When a scalar input is given, the function works as expected. However, when a vector is passed as input, it may lead to unexpected results or errors because of how the logical operator interacts with the vector.  The conditional statement treats the entire vector comparison as a single logical result.