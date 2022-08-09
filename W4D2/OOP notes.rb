The 4 principles of OOP
Abstraction
Encapsulation



Abstraction - taking larger interconnected systems and breaking it down into small parts (outside)
Encapsulation - Hiding and restricting access (Privates) (inside)

Interface
Implementation

Implicit = called with self
Explicit = called without self


Public, Private, and Protected
- Expose limited interface
- Indicate how to use code

Public
- API endpoints for user - interface
- defualt if no other keyword specified
- can be called anywhere inside or outside

Private 
- can only be called within the class def
- must be called implicitly (cant use self) !!
- helper methods should usually be private

Protected
- Middle ground btwn public and private
- can be called within class def
- implicitly or explicitly