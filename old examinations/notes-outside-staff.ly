\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)
% black_notehead_width = 1,316178

\transpose d d
\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.822 . -3.278) (1.080 . -3.6) (1.717 . -3.6) (1.975 . -3.278))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(1.82 . 0)
        \once \override NoteHead #'extra-offset = #'(1.82 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "3/4"
    d'4*3/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.05 . -3.191) (1.376 . -3.57) (2.178 . -3.57) (2.503 . -3.191))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(2.51 . 0)
        \once \override NoteHead #'extra-offset = #'(2.51 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "1"
    d'4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.205 . -3.1) (1.582 . -3.5) (2.512 . -3.5) (2.889 . -3.1))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(3.00 . 0)
        \once \override NoteHead #'extra-offset = #'(3.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "2"
    d'4 ~ s4 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.328 . -3) (2.128 . -3.73) (5.013 . -3.73) (5.813 . -3))
        d'4*2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(6.00 . 0)
        \once \override NoteHead #'extra-offset = #'(6.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "8"
    d'4 ~ s1.. d'4
    \bar "" 
    \shape Tie #'((-0.2 . 0)(1.3 . -0.5)(-1.5 . -0.5)(0 . 0))
    d'4 ~ s1.. d'4
    \br
    
  }
  


\markup "e-ties should be handled like d-ties."
\markup "Now long e-ties behave like g-ties,"
\markup "and short e-ties have their own behaviour."

\transpose d e
\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.822 . -2.778) (1.080 . -3.1) (1.717 . -3.1) (1.975 . -2.778))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(1.82 . 0)
        \once \override NoteHead #'extra-offset = #'(1.82 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "1"
    d'4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.205 . -2.6) (1.582 . -3) (2.512 . -3) (2.889 . -2.6))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(3.00 . 0)
        \once \override NoteHead #'extra-offset = #'(3.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "2"
    d'4 ~ s4 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.328 . -2.5) (2.128 . -3.23) (5.013 . -3.23) (5.813 . -2.5))
        d'4*2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(6.00 . 0)
        \once \override NoteHead #'extra-offset = #'(6.00 . 0) 
        d'4
      }
    >>
    \br
    
  }
  
