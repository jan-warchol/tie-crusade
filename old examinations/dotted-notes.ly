\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\layout { \context { \Voice \override Tie #'direction = #UP } }

\transpose d g

\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    \mark "1/4"
    d'4.*1/4 ~ d'4
    \bar "" 
    \shape Tie #'((-0.15 . -0.4)(-0.1 . -0.1)(-0.05 . -0.1)(-0.0 . -0.4))
    \once \override Dots #'extra-offset = #'(-0.1 . -0.0)
    d'4.*1/4 ~ d'4
    \br 
    
    \mark "1"
    d'4. ~ d'4
    \bar "" 
    \shape Tie #'((0 . -0.45)(0 . -0.3)(-0.3 . -0.3)(-0.3 . -0.45))
    \once \override Dots #'extra-offset = #'(0.1 . -0.02)
    d'4. ~ d'4
    \br
     
    \mark "2"
    d'4. ~ s4 d'4
    \bar "" 
    \shape Tie #'((0 . -0.45)(0 . -0.45)(-0.3 . -0.45)(-0.3 . -0.45))
    \once \override Dots #'extra-offset = #'(0.1 . -0.05)
    d'4. ~ s4 d'4
    \br
    
    \mark "4"
    d'4. ~ s2. d'4
    \bar "" 
    \shape Tie #'((-0.75 . 0)(-0.6 . 0)(-0.3 . 0)(-0.3 . 0))
    \once \override Dots #'extra-offset = #'(0.15 . -0.05)
    d'4. ~ s2. d'4
    \br
    
    \mark "8"
    d'4. ~ s1.. d'4
    \bar "" 
    \shape Tie #'((-0.75 . 0)(-0.6 . 0.2)(-0.3 . 0.2)(-0.3 . 0))
    \once \override Dots #'extra-offset = #'(0.25 . -0.05)
    d'4. ~ s1.. d'4
    \br
    
  }
