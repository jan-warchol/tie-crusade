\version "2.16.2"

\include "common-code.ily"

\layout {
  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 10 53)
}

\transpose d c
\new Staff {
  \tieDown

  \mark "1/4"
  <d' ~ d>4*1/4 <d' d>4
  \tie-cps #'((1.35 . -3.6) (1.55 . -3.8) (1.9 . -3.8) (2.1 . -3.6))
  <d' ~ d>4*1/4 <d' d>4
  \br

  \mark "1"
  <d' ~ d>4 <d' d>4
  \shape Tie #'((-0.1 . 0.25)(-0.3 . 0.4)(-0.45 . 0.4)(-0.65 . 0.25))
  <d' ~ d>4 <d' d>4
  \br

  \mark "2"
  <d' ~ d>4 s4 <d' d>4
  \shape Tie #'((-0.1 . 0.25)(-0.1 . 0.25)(-0.65 . 0.25)(-0.65 . 0.25))
  <d' ~ d>4 s4 <d' d>4
  \br
}

\transpose d d
\new Staff {
  \tieDown

  \mark "1/4"
  <d' ~ d>4*1/4 <d' d>4
  \tie-cps #'((1.35 . -3.2) (1.55 . -3.45) (1.9 . -3.45) (2.1 . -3.2))
  <d' ~ d>4*1/4 <d' d>4
  \br

  \mark "1"
  <d' ~ d>4 <d' d>4
  \shape Tie #'((-0.1 . 0.0)(-0.2 . 0.15)(-0.4 . 0.15)(-0.5 . 0.0))
  <d' ~ d>4 <d' d>4
  \br

  \mark "3"
  <d' ~ d>4 s2 <d' d>4
  \shape Tie #'((-0.1 . 0.25)(-0.1 . 0.25)(-0.5 . 0.25)(-0.5 . 0.25))
  <d' ~ d>4 s2 <d' d>4
  \br
}
