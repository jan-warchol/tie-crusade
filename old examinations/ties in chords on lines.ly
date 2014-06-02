\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\layout { \context { \Voice \override Tie #'direction = #DOWN \override Stem #'direction = #UP } }

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    
    \mark "1/4 should always be widened to at least 1/2"
    <c' e' g' f'' a'' c'''>4*1/4 ~ q4
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . 3.75) (1.6 . 3.55) (1.85 . 3.55) (2.0 . 3.75)) 
          \transpose c c''' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . 2.75) (1.6 . 2.55) (1.85 . 2.55) (2.0 . 2.75)) 
          \transpose c a'' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . 1.75) (1.6 . 1.55) (1.85 . 1.55) (2.0 . 1.75)) 
          \transpose c f'' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -1.25) (1.6 . -1.45) (1.85 . -1.45) (2.0 . -1.25)) 
          \transpose c g' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -2.25) (1.6 . -2.45) (1.85 . -2.45) (2.0 . -2.25)) 
          \transpose c e' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -3.25) (1.6 . -3.45) (1.85 . -3.45) (2.0 . -3.25)) 
          \transpose c c' { c4*1/2 ~ c } }
    >>  
    \br 
    
    
    \mark "1"
    <c' e' g' f'' a'' c'''>4 ~ q4
    \bar "" 
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . 3.75) (1.8 . 3.4) (2.5 . 3.4) (2.75 . 3.75)) 
          \transpose c c''' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . 2.75) (1.8 . 2.4) (2.5 . 2.4) (2.75 . 2.75)) 
          \transpose c a'' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . 1.8) (1.8 . 1.45) (2.5 . 1.45) (2.75 . 1.8)) 
          \transpose c f'' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . -1.2) (1.8 . -1.55) (2.5 . -1.55) (2.75 . -1.2)) 
          \transpose c g' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . -2.2) (1.8 . -2.55) (2.5 . -2.55) (2.75 . -2.2)) 
          \transpose c e' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -3.25) (1.7 . -3.6) (2.5 . -3.6) (2.75 . -3.25)) 
          \transpose c c' { c4 ~ c } }
    >>  
    \br
    
    \mark "2"
    <c' e' g' f'' a'' c'''>4 ~ s4 q4
    \bar "" 
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 3.75) (2.3 . 3.05) (4.9 . 3.05) (5.6 . 3.75)) 
          \transpose c c''' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 2.75) (2.3 . 2.05) (4.9 . 2.05) (5.6 . 2.75)) 
          \transpose c a'' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 1.8) (2.3 . 1.1) (4.9 . 1.1) (5.6 . 1.8)) 
          \transpose c f'' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -1.2) (2.3 . -1.9) (4.9 . -1.9) (5.6 . -1.2)) 
          \transpose c g' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -2.2) (2.3 . -2.9) (4.9 . -2.9) (5.6 . -2.2)) 
          \transpose c e' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.5 . -3.25) (2.2 . -3.95) (4.9 . -3.95) (5.6 . -3.25)) 
          \transpose c c' { c4 ~ s4 c } }
    >>  
    \br
    
    \mark "4"
    <c' e' g' f'' a'' c'''>4 ~ s2. q4
    \bar "" 
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 3.75) (3.0 . 2.8) (10.05 . 2.8) (11.45 . 3.75)) 
          \transpose c c''' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 2.75) (3.0 . 2) (10.05 . 2) (11.45 . 2.75)) 
          \transpose c a'' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 1.8) (3.0 . 1) (10.05 . 1) (11.45 . 1.8)) 
          \transpose c f'' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -1.2) (3.0 . -2) (10.05 . -2) (11.45 . -1.2)) 
          \transpose c g' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -2.2) (3.0 . -3.15) (10.05 . -3.15) (11.45 . -2.2)) 
          \transpose c e' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.5 . -3.25) (2.9 . -4.2) (10.05 . -4.2) (11.45 . -3.25)) 
          \transpose c c' { c4 ~ s2. c4 } }
    >>  
    \br
    
  }