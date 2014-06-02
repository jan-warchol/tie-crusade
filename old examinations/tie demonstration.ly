\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 13 \cm line-width = 12 \cm }

br = { \bar "" \break }

\markup { "LEFT: current   RIGHT: suggested" }

\transpose d d
\new Staff \with { \remove Time_signature_engraver } {
  \time 9999/1 \set tieWaitForNote = ##t
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

  d'4 ~ s1.. d'4
  \bar ""
  \shape Tie #'((-0.2 . 0)   (0.4 . -0.3)   (-0.6 . -0.3)   (0 . 0))
  d'4 ~ s1.. d'4
  \br

}


\transpose d g

\new Staff \with { \remove Time_signature_engraver } {
  \time 9999/1 \set tieWaitForNote = ##t
  d'4 ~ d'4
  \bar ""
  \shape Tie #'((-0.2 . -0.2)   (-0.15 . -0.2)   (-0.05 . -0.2)   (0 . -0.2))
  d'4 ~ d'4
  \br

  d'4 ~ s2 d'4
  \bar ""
  \shape Tie #'((0.4 . 0.2)   (0.5 . -0.0)   (-0.5 . -0.0)   (-0.6 . 0.2))
  d'4 ~ s2 d'4
  \br

  d'4 ~ s1 s2. d'4
  \bar ""
  \shape Tie #'((0.4 . 0.25)   (1.8 . -0.35)   (-1.8 . -0.35)   (-0.65 . 0.25))
  d'4 ~ s1 s2. d'4
  \br

}


\transpose d a

\new Staff \with { \remove Time_signature_engraver } {
  \time 9999/1 \set tieWaitForNote = ##t
  d'4 ~ s2 d'4
  \bar ""
  \shape Tie #'((0.1 . 0.45)   (0.1 . 0.55)  (-0.2 . 0.55)   (-0.2 . 0.45))
  d'4 ~ s2 d'4
  \br

  \mark "8"
  d'4 ~ s1.. d'4
  \bar ""
  \shape Tie #'((0.25 . 0.35)   (1.2 . -0.3)  (-1.3 . -0.3)   (-0.35 . 0.35))
  d'4 ~ s1.. d'4
  \br


}