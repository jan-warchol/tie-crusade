\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\transpose d a

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t
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
    
    \mark "1/2"
    d'4*1/2 ~ d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.938 . -1.22) (1.217 . -1.6) (1.948 . -1.6) (2.247 . -1.22))
        d'4*1/2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(2.11 . 0)
        \once \override NoteHead #'extra-offset = #'(2.11 . 0) 
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
        #'((0.988 . -1.22) (1.336 . -1.65) (2.198 . -1.65) (2.547 . -1.22))
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
    
    \mark "5/4"
    d'4 ~ s16 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.22) (1.614 . -1.8) (3.161 . -1.8) (3.787 . -1.22))
        d'4 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(3.75 . 0)
        \once \override NoteHead #'extra-offset = #'(3.75 . 0) 
        d'4
      }
    >>
    \br
    
    \mark "3/2"
    d'4 ~ s8 d'4
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.22) (1.682 . -1.84) (3.843 . -1.84) (4.537 . -1.22))
        d'4*3/2 ~ \hideNotes d' \unHideNotes
      }
      \new Voice { 
        \once \override Stem #'extra-offset = #'(4.5 . 0)
        \once \override NoteHead #'extra-offset = #'(4.5 . 0) 
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
    \bar "" 
    <<
      {
        \once \override Tie #'control-points = 
        #'((0.988 . -1.12) (3.288 . -2) (15.737 . -2) (18.037 . -1.12))
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
    \shapeTie #'(0.3 0.3   2 -0.3  -2.15 -0.3   -0.45 0.3)
    d'4 ~ s1.. d'4
    \br
    
    \mark "12"
    d'4 ~ s1 s1 s2. d'4
    \bar "" 
    \shapeTie #'(0.3 0.3   3 -0.4  -3.15 -0.4   -0.45 0.3)
    d'4 ~ s1 s1 s2. d'4
    \br
        
    
  }