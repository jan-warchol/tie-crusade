\version "2.16.2"

\markup {
  In all 3 snippets, 2nd tie should be formatted in the same
  way as the 1st one.  3rd tie should be different.
}

{ a'~a' f'~f' d'~d' }

\new Staff \with { \override StaffSymbol #'line-count = #6 }
{ g'~g' e'~e' c'~c' }

\new Staff \with { \override StaffSymbol #'line-count = #7 }
{ f'~f' d'~d' b~b }
