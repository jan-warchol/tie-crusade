\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\transpose d g

\new Staff \with { \remove Time_signature_engraver } {
  \time 9999/1 \set tieWaitForNote = ##t
  \mark "1/4"
  d'4*1/4 ~ d'4
  \bar ""
  <<
    {
      \once \override Tie #'control-points =
      #'((0.731 . -1.8) (1.024 . -2.5) (1.948 . -2.5) (2.241 . -1.8))
      d'4 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(1.82 . 0)
      \once \override NoteHead #'extra-offset = #'(1.82 . 0)
      d'4
    }
  >>
  \bar ""
  <<
    {
      \once \override Tie #'control-points =
      #'((0.981 . -1.6) (1.182 . -1.83) (1.679 . -1.83) (1.879 . -1.6))
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
      #'((1.377 . -1.45) (1.692 . -1.85) (2.470 . -1.85) (2.785 . -1.45))
      d'4 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(3.00 . 0)
      \once \override NoteHead #'extra-offset = #'(3.00 . 0)
      d'4
    }
  >>
  \bar ""
  <<
    {
      \once \override Tie #'control-points =
      #'((0.910 . -1.75) (1.398 . -2.5) (2.604 . -2.5) (3.092 . -1.75))
      d'4 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(3.00 . 0)
      \once \override NoteHead #'extra-offset = #'(3.00 . 0)
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
      #'((1.419 . -1.4) (2.055 . -1.9) (3.626 . -1.9) (4.262 . -1.4))
      d'4*3/2 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(4.5 . 0)
      \once \override NoteHead #'extra-offset = #'(4.5 . 0)
      d'4
    }
  >>
  \bar ""
  <<
    {
      \once \override Tie #'control-points =
      #'((1.127 . -1.65) (1.868 . -2.5) (3.700 . -2.5) (4.441 . -1.65))
      d'4*3/2 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(4.5 . 0)
      \once \override NoteHead #'extra-offset = #'(4.5 . 0)
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
      #'((1.271 . -1.55) (2.566 . -2.7) (7.552 . -2.7) (8.847 . -1.55))
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
      #'((1.328 . -1.5) (3.073 . -2.65) (10.367 . -2.65) (11.813 . -1.5))
      d'4*4 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(12.00 . 0)
      \once \override NoteHead #'extra-offset = #'(12.00 . 0)
      d'4
    }
  >>
  \br

  \mark "8"
  d'4 ~ s1.. d'4
  \bar ""
  \shape Tie #'((0.4 . 0.2)(1.4 . -0.3)(-1.7 . -0.3)(-0.7 . 0.25))
  d'4 ~ s1.. d'4
  \br

}



\transpose d g

\new Staff \with { \remove Time_signature_engraver } {
  \time 9999/1 \set tieWaitForNote = ##t \tieUp
  \mark "1/4"
  d'4*1/4 ~ d'4
  \bar ""
  <<
    {
      \once \override Tie #'control-points =
      #'((1.5 . -0.42) (1.637 . -0.18) (2.015 . -0.18) (2.15 . -0.42))
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
      #'((1.554 . -0.55) (1.854 . -0.15) (2.639 . -0.15) (2.939 . -0.55))
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
      #'((1.554 . -0.6) (2.000 . -0.15) (3.174 . -0.15) (3.647 . -0.6))
      d'4*5/4 ~ \hideNotes d' \unHideNotes
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
      #'((1.554 . -0.6) (2.19 . -0.1) (3.759 . -0.1) (4.397 . -0.6))
      d'4*3/2 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(4.5 . 0)
      \once \override NoteHead #'extra-offset = #'(4.5 . 0)
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
      #'((1.554 . -0.45) (2.866 . 0.7) (7.752 . 0.7) (9.065 . -0.45))
      d'4*3 ~ \hideNotes d' \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(9.00 . 0)
      \once \override NoteHead #'extra-offset = #'(9.00 . 0)
      d'4
    }
  >>
  \br

}
