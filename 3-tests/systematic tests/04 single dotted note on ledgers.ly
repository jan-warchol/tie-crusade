\version "2.16.2"

\include "../global-settings.ily"

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff \with {
                \override StaffSymbol #'ledger-extra = #4
              } {
                %#samp        q4 s4*2
                #samp s8     q4 s4*2
                %#samp s4     q4 s4*2
                #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                %#samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\markup \justify {
  Dotted note in staffspace:
}

\pattern { <g>4.~ }
\pattern { <g>4.^~ }
% redundant \pattern { \stemDown <g>4._~ }
% not interesting \pattern { \stemDown <g>4.^~ }


\markup \justify {
  Dotted note on staffline:
}

\pattern <a>4.~
\pattern <a>4.^~
%redundant \pattern { \stemDown <a>4._~ }
\pattern { \stemDown <a>4.^~ }

\pattern { \dotsDown <a>4._~ }
%obvious \pattern { \dotsDown <a>4.^~ }
%redunddant \pattern { \dotsDown \stemDown <a>4._~ }
%obvious \pattern { \dotsDown \stemDown <a>4.^~ }
