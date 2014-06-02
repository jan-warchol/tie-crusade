\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\markup "f-ties should behave very similar to a-ties"
\markup "(except for long ones, which - unlike a-ties - "
\markup "are not restricted downwards by staffline)."
\markup "Now they are handled completely different:"
\markup "very short ties are farther away from notes,"
\markup "and longer ties are driven into staffline."
\markup "It looks like they behave exactly like d-ties -"
\markup "like if the outer stafflines didn't exist."

\transpose d f

\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t
    \mark "3/4"
    d'4*3/4 ~ d'4
    \br
    
    \mark "1"
    d'4 ~ d'4
    \br
    
  }
