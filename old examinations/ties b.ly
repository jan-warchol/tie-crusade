\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\markup "b-ties should behave exactly like g-ties"
\markup "Now some short b-ties are handled"
\markup "completely different."

\layout { \context { \Voice \override Stem #'direction = #UP } }

\transpose d b

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    
    \mark "1/2"
    d'4*1/2 ~ d'4
    \br
    
    \mark "3/4"
    d'4*3/4 ~ d'4
    \br
    
    % without the following spacing isn't correct
    \hideNotes
    d'4 d'4 \br d'4 d'4
    
  }