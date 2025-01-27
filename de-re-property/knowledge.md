# knowledge.md

## Summary of Topics Covered

- Introduction to @property in Objective-C
- @property declaration syntax
- @property attributes and their meanings
- @property definition and code generation
- Accessing property values
- Property signatures and runtime information
- Property inheritance (by class, protocol, and protocolclass)
- Property redeclaration
- @synthesize and @dynamic directives
- Special attributes like observable and container

## Topics Not Available in Apple Objective-C

- `observable` attribute for properties
- `container` attribute for properties
- `serializable` and `nonserializable` attributes
- Protocolclass concept for multiple inheritance

## Topics Available in Apple Objective-C but Not in mulle-objc

- `atomic` attribute (all properties are nonatomic in mulle-objc)
- `weak` and `strong` attributes
- Automatic Reference Counting (ARC)

## Unique or Unusual Information

1. mulle-objc automatically synthesizes instance variables for non-dynamic properties, making @synthesize unnecessary.

2. The `dynamic` attribute in mulle-objc prevents the compiler from generating an instance variable and accessor methods.

3. mulle-objc includes a `container` attribute for properties, which adds "adder" and "remover" methods.

4. The `observable` attribute in mulle-objc calls a `willChange` method before modifying the property value.

5. Property signatures in mulle-objc encode additional information like custom accessors and container methods.

6. mulle-objc introduces the concept of "protocolclass" for value-adding multiple inheritance.

7. The `serializable` attribute is used to indicate properties that should be serialized by NSCoder or other persistence methods.

8. mulle-objc emphasizes the use of `copy` over `retain` for properties when possible to prevent unintended modifications.

9. The guide recommends wrapping @protocol properties into a #define for easier implementation in classes.

10. mulle-objc discourages the use of `readonly` properties, suggesting standard methods as an alternative when dealing with read-only values.
