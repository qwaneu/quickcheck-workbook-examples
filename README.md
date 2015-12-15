# Property based testing with Quickheck Examples

These source code examples accompany the 
[The little QuickCheck
workbook](https://leanpub.com/quickcheckworkbook/) .

# Usage 

[Install Stack](https://github.com/commercialhaskell/stack), the haskell
build tool.

Run the property in this project,

```
stack runghc src/Main.hs 
```

and watch it fail:

```
stack runghc src/Main.hs
*** Failed! Falsifiable (after 3 tests and 2 shrinks):    
"ab"
```

Play around with the property interactively:

```
$ stack ghci
*Main> quickCheck prop_failObviously 
*** Failed! Falsifiable (after 3 tests and 2 shrinks):    
"ab"
*Main> 
```

## If you want to use QuickCheck in a real project

Use the stack template for [hspec](http://hspec.github.io/) instead of
this starter project. That also includes QuickCheck, and
will give you:

- significantly better feedback on failing properties.
- a way to document your properties so you can easily find them back
later
- automatic discovery of testcases for a large testsuite
- mixing example based tests with properties.

```{bash}
stack new <my-project> hspec
``` 
