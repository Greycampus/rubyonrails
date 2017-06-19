
**Operators**
=========

Unary Operators
---------------

| Operator | Description        |
|----------|--------------------|
| !        | Boolean NOT        |
| ~        | Bitwise complement |
| +        | Unary plus         |

Airthmetic Operator
-------------------

| Operator | Description                                                           |
|----------|-----------------------------------------------------------------------|
| +        | Adds values from both sides of the operator.                          |
| -        | Subtract values from both sides of the operator.                      |
| /        | Divide left side operand with right side operand.                     |
| *        | Multiply values from both sides of the operator.                      |
| **       | Right side operand becomes the exponent of left side operand.         |
| %        | Divide left side operand with right side operand returning remainder. |

Bitwise Operator
----------------

| Operator | Description          |
|----------|----------------------|
| &        | AND operator         |
| |        | OR operator          |
| <<       | Left shift operator  |
| >>       | Right shift operator |
| ^        | XOR operator         |
| ~        | Complement operator  |

Logical Operator
----------------

| Operator | Description  |
|----------|--------------|
| &&       | AND operator |
| ||       | OR operator  |

Ternary Operator
----------------

| Operator | Description            |
|----------|------------------------|
| ?:       | Conditional expression |

Assignment Operator
-------------------

| Operator | Description                     |
|----------|---------------------------------|
| =        | Simple assignment operator      |
| +=       | Add assignment operator         |
| -=       | subtract assignment operator    |
| *=       | Multiply assignment operator    |
| /=       | Divide assignment operator      |
| %=       | Modulus assignment operator     |
| **=      | Exponential assignment operator |

Comparison Operator
-------------------

| Operator | Description                                            |
|----------|--------------------------------------------------------|
| ==       | Equal operator                                         |
| !=       | Not equal operator                                     
| >        | left operand is greater than right operand             
| <        |                                                       
|    >      | Right operand is greater than left operand |
| >=       | Left operand is greater than or equal to right operand |
| <=       | Right operand is greater than or equal to left operand |
| <=>      | Combined comparison operator                           |
| .eql?    | Checks for equality and type of the operands           |
| equal?   | Checks for the object ID                               |

Range Operator
--------------

| Operator | Description                         |
|----------|-------------------------------------|
| ..       | Range is inclusive of the last term |
| ...      | Range is exclusive of the last term |





| Method | Operator | Description    |
|--------|----------|----------------|
| Yes    | ::       | Constant       |
| Yes    | [ ] [ ]= | Element reference, element set              |
| Yes    | **       | Exponentiation (raise to the power) |
| Yes    | ! ~ + -  | Not, complement, unary plus and minus (method names for the last two are +@ and -@)              |
| Yes    | * / %    | Multiply, divide, and modulo              |
| Yes    | + -      | Addition and subtraction              |
| Yes    | >> <<    | Right and left bitwise shift             |
| Yes    | &        | Bitwise 'AND'        |
| Yes    | ^ |      | Bitwise exclusive `OR' and regular `OR'              |
| Yes    | <= < > >=| Comparison operators              |
| Yes    | <=> == === != =~ !~      | Equality and pattern match operators (!= and !~ may not be defined as methods)             |
|        | &&       | Logical 'AND'             |
|        | ||       | Logical 'OR'             |
|        | .. ...   | Range (inclusive and exclusive)             |
|		 | ? :		| Ternary if-then-else			|
|		 |= %= { /= -= += |= &= >>= <<= *= &&= ||= **=|	Assignment|
|		 |	defined?| 	Check if specified symbol defined			|
|		 |	not		|	Logical negation				|
|		 |	or and	|	Logical composition	|



