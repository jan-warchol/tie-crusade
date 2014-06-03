\version "2.16.2"

\include "../global-settings.ily"


\markup \justify {
  tie and stem on the opposite sides:
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff \with {
                \override StaffSymbol #'ledger-extra = #4
              } {
                \stemUp
                \tieDown
                #samp        q4 s4*2
                \hideNotes \override Tie #'transparent = ##t
                #samp s8     q4 s4*2     %(redundant)
                \unHideNotes \revert Tie #'transparent
                #samp s4     q4 s4*2
                % redundant #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                % redundant #samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\pattern <g>4~
\pattern <a>4~
% all other cases are redundant


\markup \justify {
  tie and stem on the same side
  (similar to the above):
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff \with {
                \override StaffSymbol #'ledger-extra = #4
              } {
                \stemDown
                \tieDown
                #samp        q4 s4*2
                #samp s8     q4 s4*2  % not redundant!!
                #samp s4     q4 s4*2
                % redundant #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                % redundant #samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\pattern <g>4~
\pattern <a>4~
% all other cases are redundant


\markup \justify {
  in a chord - stem extends down and changes
  space available for the tie:
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                \stemUp
                \tieDown
                #samp        q4 s4*2
                #samp s8     q4 s4*2
                #samp s4     q4 s4*2
                % redundant #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                % redundant #samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\pattern <g, g~>4
\pattern <a, a~>4
% all other cases are redundant

\markup \justify {
  both notes in the chord are tied
  (these ties should generally look the same
  as above ones, but they don't):
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                \stemUp
                \tieDown
                #samp        q4 s4*2
                #samp s8     q4 s4*2
                #samp s4     q4 s4*2
                % redundant #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                % redundant #samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\pattern <g,~ g~>4
\pattern <a,~ a~>4
% all other cases are redundant
