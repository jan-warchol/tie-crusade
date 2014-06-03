\version "2.16.2"

\include "common-code.ily"

\layout {
  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 10 53)
}

\new Staff {
  \stemUp
  \tieDown

  \mark "1/4"
  d'4*1/4 ~ d'4
  \tie-cps #'((0.822 . -3.278) (1.080 . -3.6) (1.717 . -3.6) (1.975 . -3.278))
  d'4*1/4 ~ d'4
  \br

  \mark "3/4"
  d'4*3/4 ~ d'4
  \tie-cps #'((1.05 . -3.191) (1.376 . -3.57) (2.178 . -3.57) (2.503 . -3.191))
  d'4*3/4 ~ d'4
  \br

  \mark "1"
  d'4 ~ d'4
  \tie-cps #'((1.205 . -3.1) (1.582 . -3.5) (2.512 . -3.5) (2.889 . -3.1))
  d'4 ~ d'
  \br

  \mark "2"
  d'4 ~ s4 d'4
  <<
    {
      \tie-cps #'((1.328 . -3) (2.128 . -3.73) (5.013 . -3.73) (5.813 . -3))
      d'4 ~ s4 \hideNotes d'4 \unHideNotes
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
  \shape Tie #'((-0.2 . 0)(1.3 . -0.5)(-1.5 . -0.5)(0 . 0))
  d'4 ~ s1.. d'4
  \br
}



\markup "e-ties should look exactly like d-ties."

\transpose d e
\new Staff {
  \stemUp
  \tieDown

  \mark "1/4"
  d'4*1/4 ~ d'4
  \tie-cps #'((0.822 . -2.778) (1.080 . -3.1) (1.717 . -3.1) (1.975 . -2.778))
  d'4*1/4 ~ d'4
  \br

  \mark "1"
  d'4 ~ d'4
  \tie-cps #'((1.205 . -2.6) (1.582 . -3) (2.512 . -3) (2.889 . -2.6))
  d'4 ~ d'
  \br

  \mark "2"
  d'4 ~ s4 d'4
  <<
    {
      \tie-cps #'((1.328 . -2.5) (2.128 . -3.23) (5.013 . -3.23) (5.813 . -2.5))
      d'4 ~ s4 \hideNotes d'4 \unHideNotes
    }
    \new Voice {
      \once \override Stem #'extra-offset = #'(6.00 . 0)
      \once \override NoteHead #'extra-offset = #'(6.00 . 0)
      d'4
    }
  >>
  \br
}
