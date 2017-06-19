**Variables**
=========


Local Variable
--------------

Local variables begin with a lowercase letter or _. The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.

When an uninitialized local variable is referenced, it is interpreted as a call to a method that has no arguments.

Assignment to uninitialized local variables also serves as variable declaration. The variables start to exist until the end of the current scope is reached. The lifetime of local variables is determined when Ruby parses the program.

Class variables
---------------

A class variable name starts with @@ sign. They need to be initialized before use. A class variable belongs to the whole class and can be accessible from anywhere inside the class. If the value will be changed at one instance, it will be changed at every instance.

A class variable is shared by all the descendants of the class. An uninitialized class variable will result in an error. 

Instance variables
------------------

An instance variable name starts with a @ sign. It belongs to one instance of the class and can be accessed from any instance of the class within a method. They only have limited access to a particular instance of a class.

They don't need to be initialize. An uninitialized instance variable will have a nil value.

Global variables
----------------

A global variable name starts with a $ sign. Its scope is globally, means it can be accessed from any where in a program.

An uninitialized global variable will have a nil value. It is advised not to use them as they make programs cryptic and complex.

There are a number of predefined global variables in Ruby.

Ruby Constants
--------------

Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

Constants may not be defined within methods. Referencing an uninitialized constant produces an error. Making an assignment to a constant that is already initialized produces a warning.

Ruby Pseudo-Variables
---------------------

They are special variables that have the appearance of local variables but behave like constants. You cannot assign any value to these variables.

    self − The receiver object of the current method.

    true − Value representing true.

    false − Value representing false.

    nil − Value representing undefined.

    __FILE__ − The name of the current source file.

    __LINE__ − The current line number in the source file.



Comparision
-----------

|        	||Local|Global                                                                       	| Instance|Class|
|----------------	|-----------------------------------------------------------------------------------------------------	|--------------------------------------------------------------------------------	|----------------------------------------------------------------------------------	|-----------------------------------------------------------------------------------------------	|
| Scope          	| Limited within the block of initialization.                                                         	| Its scope is globally.                                                         	| It belongs to one instance of a class.                                           	| Limited to the whole class in which they are created.                                         	|
| Naming         	| Starts with a lowercase letter or underscore (_).                                                   	| Starts with a $ sign.                                                          	| Starts with an @ sign.                                                           	| Starts with an @@ sign.                                                                       	|
| Initialization 	| No need to initialize. An uninitialized local variable is interpreted as methods with no arguments. 	| No need to initialize. An uninitialized global variable will have a nil value. 	| No need to initialize. An uninitialized instance variable will have a nil value. 	| They need to be initialized before use. An uninitialized global variable results in an error. 	|

