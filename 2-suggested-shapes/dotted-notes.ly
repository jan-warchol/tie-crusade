\version "2.16.2"

\include "../3-tests/global-settings.ily"

\markup { LEFT: current output, RIGHT: suggested output }

\layout {
  % turn off the global setting
  \revert Score.SpacingSpanner #'common-shortest-duration
}

\transpose d g
\new Staff {
  \stemUp
  \tieUp

  \mark "1/4"
  d'4.*1/4 ~ d'4
  \shape Tie #'((-0.15 . -0.4)(-0.1 . -0.1)(-0.05 . -0.1)(-0.0 . -0.4))
  \once \override Dots #'extra-offset = #'(-0.1 . -0.0)
  d'4.*1/4 ~ d'4
  \br

  \mark "1"
  d'4. ~ d'4
  \shape Tie #'((0 . -0.45)(0 . -0.3)(-0.3 . -0.3)(-0.3 . -0.45))
  \once \override Dots #'extra-offset = #'(0.1 . -0.02)
  d'4. ~ d'4
  \br

  \mark "2"
  d'4. ~ s4 d'4
  \shape Tie #'((0 . -0.45)(0 . -0.45)(-0.3 . -0.45)(-0.3 . -0.45))
  \once \override Dots #'extra-offset = #'(0.1 . -0.05)
  d'4. ~ s4 d'4
  \br

  \mark "4"
  d'4. ~ s2. d'4
  \shape Tie #'((-0.75 . 0)(-0.6 . 0)(-0.3 . 0)(-0.3 . 0))
  \once \override Dots #'extra-offset = #'(0.15 . -0.05)
  d'4. ~ s2. d'4
  \br

  \mark "8"
  d'4. ~ s1.. d'4
  \shape Tie #'((-0.75 . 0)(-0.6 . 0.2)(-0.3 . 0.2)(-0.3 . 0))
  \once \override Dots #'extra-offset = #'(0.25 . -0.05)
  d'4. ~ s1.. d'4
  \br
}

\transpose d b
\new Staff {
  \tieUp
  \stemDown

  \mark "1"
  d'4. ~ d'4
  \once \override Tie #'extra-offset = #'(0.35 . -0.55)
  \shape Tie #'((0 . 0)(0 . 0.2)(-0.6 . 0.2)(-0.6 . 0))
  d'4. ~ d'4
  \br

  \mark "4"
  d'4. ~ s1 d'4
  <>^"?"
  \once \override Tie #'extra-offset = #'(1.7 . -0.33)
  \shape Tie #'((0 . 0)(0.5 . 0.2)(-2.75 . 0.2)(-2.25 . 0))
  d'4. ~ s1 d'4
  \br
}
