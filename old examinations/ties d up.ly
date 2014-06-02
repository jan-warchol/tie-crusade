\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)
% black_notehead_width = 1,316178

\markup "Upward d-ties should behave exactly like"
\markup "upward a-ties."
\markup "The problem looks similar to f-ties vs a-ties."

\layout { \context { \Voice \override Tie #'direction = #UP } }

\transpose d d
\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 

    \mark "3/4"
    d'4*3/4 ~ d'4
    \br
    
    \mark "1"
    d'4 ~ d'4
    \br
    
  }
  
