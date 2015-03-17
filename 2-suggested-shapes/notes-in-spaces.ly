\version "2.16.2"

\include "../3-tests/global-settings.ily"

\markup { LEFT: current output, RIGHT: suggested output }

\layout {
  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 10 53)
}

\transpose d a
\new Staff {
  \stemUp
  \tieDown

  \mark "1/4"
  d'4*1/4 ~ d'4
  \tie-cps #'((0.888 . -1.22) (1.132 . -1.55) (1.813 . -1.55) (2.057 . -1.22))
  d'4*1/4 ~ d'4
  \br

  \mark "1"
  d'4 ~ d'4
  \tie-cps #'((0.988 . -1.22) (1.446 . -1.7) (2.579 . -1.7) (3.037 . -1.22))
  d'4 ~ d'4
  \br

  \mark "2"
  d'4 ~ s4 d'4
  \tie-cps #'((0.988 . -1.22) (1.817 . -1.88) (5.108 . -1.88) (5.937 . -1.22))
  d'4 ~ s4 d'4
  \br

  \mark "3"
  d'4 ~ s2 d'4
  \tie-cps #'((0.988 . -1.22) (2.166 . -1.92) (7.552 . -1.92) (8.837 . -1.22))
  d'4 ~ s2 d'4
  \br

  \mark "4"
  d'4 ~ s2. d'4
  \tie-cps #'((0.988 . -1.17) (2.67 . -1.96) (10.35 . -1.96) (11.72 . -1.17))
  d'4 ~ s2. d'4
  \tie-cps #'((0.988 . -1.37) (2.77 . -2.6) (10.25 . -2.6) (11.72 . -1.37))
  d'4 ~ s2. d'4
  \br

  \mark "6"
  d'4 ~ s1 s4 d'4
  \tie-cps #'((0.988 . -1.32) (3.688 . -2.7) (14.6 . -2.7) (17.4 . -1.32))
  d'4 ~ s1 s4 d'4
  \br

  \mark "8"
  d'4 ~ s1.. d'4
  \shape Tie #'((0.3 . 0.3)(2 . -0.3)(-2.15 . -0.3)(-0.45 . 0.3))
  d'4 ~ s1.. d'4
  \br
}

\transpose d a
\new Staff {
  \stemUp
  \tieUp

  \mark "1/4"
  d'4*1/4 ~ d'4
  \tie-cps #'((1.504 . 0.22) (1.687 . 0.45) (2.065 . 0.45) (2.248 . 0.22))
  d'4*1/4 ~ d'4
  \br

  \mark "1"
  d'4 ~ d'4
  \tie-cps #'((1.554 . 0.22) (1.951 . 0.67) (2.931 . 0.67) (3.328 . 0.22))
  d'4 ~ d'4
  \br
}
