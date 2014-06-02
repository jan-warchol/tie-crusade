\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\transpose d a

\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.888 . -1.22) (1.132 . -1.55) (1.813 . -1.55) (2.057 . -1.22))
        d'4*1/2 ~ \hideNotes d' \unHideNotes
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
        #'((0.988 . -1.22) (1.446 . -1.7) (2.579 . -1.7) (3.037 . -1.22))
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
        #'((0.988 . -1.22) (1.817 . -1.88) (5.208 . -1.88) (6.037 . -1.22))
        d'4*2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(6.00 . 0)
        \once \override NoteHead #'extra-offset = #'(6.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "3"
    d'4 ~ s2 d'4
    \bar ""
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.22) (2.166 . -1.92) (7.752 . -1.92) (9.037 . -1.22))
        d'4*3 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(9.00 . 0)
        \once \override NoteHead #'extra-offset = #'(9.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "4"
    d'4 ~ s2. d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.17) (2.673 . -1.96) (10.667 . -1.96) (12.037 . -1.17))
        d'4*4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(12.00 . 0)
        \once \override NoteHead #'extra-offset = #'(12.00 . 0) 
        d'4
      }
    >>
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.37) (2.773 . -2.6) (10.567 . -2.6) (12.037 . -1.37))
        d'4*4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(12.00 . 0)
        \once \override NoteHead #'extra-offset = #'(12.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "6"
    d'4 ~ s1 s4 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.32) (3.688 . -2.7) (15.337 . -2.7) (18.037 . -1.32))
        d'4*6 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(18.00 . 0)
        \once \override NoteHead #'extra-offset = #'(18.00 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "8"
    d'4 ~ s1.. d'4
    \bar "" 
    \shape Tie #'((0.3 . 0.3)(2 . -0.3)(-2.15 . -0.3)(-0.45 . 0.3))
    d'4 ~ s1.. d'4
    \br
    
  }

\transpose d a

\new Staff \with { \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t \tieUp
    \mark "1/4"
    d'4*1/4 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((1.504 . 0.22) (1.687 . 0.45) (2.065 . 0.45) (2.248 . 0.22))
        d'4*1/2 ~ \hideNotes d' \unHideNotes
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
        #'((1.554 . 0.22) (1.951 . 0.67) (2.931 . 0.67) (3.328 . 0.22))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(3.00 . 0)
        \once \override NoteHead #'extra-offset = #'(3.00 . 0) 
        d'4
      }
    >>
    \br
    
  }
