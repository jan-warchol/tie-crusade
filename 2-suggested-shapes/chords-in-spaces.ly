\version "2.16.2"

\include "../3-tests/global-settings.ily"

\markup { LEFT: current output, RIGHT: suggested output }

\layout {
  % turn off the global setting
  \revert Score.SpacingSpanner #'common-shortest-duration
}

\new Staff {
  \override Staff.Stem #'direction = #UP
  \tieDown

  \mark "1/4"
  <b d' f' e'' g'' b''>4*1/4 ~ q4
  <<
    \new Voice {
      \tie-cps #'((1.45 . 3.45) (1.6 . 3.25) (1.85 . 3.25) (2.0 . 3.45))
      \transpose c b'' { c4*1/2 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.45 . 2.45) (1.6 . 2.25) (1.85 . 2.25) (2.0 . 2.45))
      \transpose c g'' { c4*1/2 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.45 . 1.45) (1.6 . 1.25) (1.85 . 1.25) (2.0 . 1.45))
      \transpose c e'' { c4*1/2 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.45 . -1.55) (1.6 . -1.75) (1.85 . -1.75) (2.0 . -1.55))
      \transpose c f' { c4*1/2 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.45 . -2.55) (1.6 . -2.75) (1.85 . -2.75) (2.0 . -2.55))
      \transpose c d' { c4*1/2 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.45 . -3.55) (1.6 . -3.75) (1.85 . -3.75) (2.0 . -3.55))
      \transpose c b { c4*1/2 ~ c }
    }
  >>
  \br


  \mark "1"
  <b d' f' e'' g'' b''>4 ~ q4
  <<
    \new Voice {
      \tie-cps #'((1.55 . 3.45) (1.8 . 3.1) (2.5 . 3.1) (2.75 . 3.45))
      \transpose c b'' { c4 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.55 . 2.45) (1.8 . 2.1) (2.5 . 2.1) (2.75 . 2.45))
      \transpose c g'' { c4 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.55 . 1.45) (1.8 . 1.1) (2.5 . 1.1) (2.75 . 1.45))
      \transpose c e'' { c4 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.55 . -1.55) (1.8 . -1.9) (2.5 . -1.9) (2.75 . -1.55))
      \transpose c f' { c4 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.55 . -2.55) (1.8 . -2.9) (2.5 . -2.9) (2.75 . -2.55))
      \transpose c d' { c4 ~ c }
    }
    \new Voice {
      \tie-cps #'((1.55 . -3.55) (1.8 . -3.9) (2.5 . -3.9) (2.75 . -3.55))
      \transpose c b { c4 ~ c }
    }
  >>
  \br


  \mark "2"
  <b d' f' e'' g'' b''>4 ~ s4 q4
  <<
    \new Voice {
      \tie-cps #'((1.6 . 3.25) (2.3 . 2.55) (4.9 . 2.55) (5.6 . 3.25))
      \transpose c b'' { c4 ~ s4 c }
    }
    \new Voice {
      \tie-cps #'((1.6 . 2.25) (2.3 . 1.55) (4.9 . 1.55) (5.6 . 2.25))
      \transpose c g'' { c4 ~ s4 c }
    }
    \new Voice {
      \tie-cps #'((1.6 . 1.25) (2.3 . 0.55) (4.9 . 0.55) (5.6 . 1.25))
      \transpose c e'' { c4 ~ s4 c }
    }
    \new Voice {
      \tie-cps #'((1.6 . -1.75) (2.3 . -2.45) (4.9 . -2.45) (5.6 . -1.75))
      \transpose c f' { c4 ~ s4 c }
    }
    \new Voice {
      \tie-cps #'((1.6 . -2.75) (2.3 . -3.45) (4.9 . -3.45) (5.6 . -2.75))
      \transpose c d' { c4 ~ s4 c }
    }
    \new Voice {
      \tie-cps #'((1.6 . -3.75) (2.3 . -4.45) (4.9 . -4.45) (5.6 . -3.75))
      \transpose c b { c4 ~ s4 c }
    }
  >>
  \br


  \mark "4"
  <b d' f' e'' g'' b''>4 ~ s2. q4
  <<
    \new Voice {
      \tie-cps #'((1.6 . 3.35) (3.0 . 2.4) (10.05 . 2.4) (11.45 . 3.35))
      \transpose c b'' { c4 ~ s2. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . 2.35) (3.0 . 1.4) (10.05 . 1.4) (11.45 . 2.35))
      \transpose c g'' { c4 ~ s2. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . 1.35) (3.0 . 0.4) (10.05 . 0.4) (11.45 . 1.35))
      \transpose c e'' { c4 ~ s2. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -1.65) (3.0 . -2.6) (10.05 . -2.6) (11.45 . -1.65))
      \transpose c f' { c4 ~ s2. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -2.65) (3.0 . -3.6) (10.05 . -3.6) (11.45 . -2.65))
      \transpose c d' { c4 ~ s2. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -3.65) (3.0 . -4.6) (10.05 . -4.6) (11.45 . -3.65))
      \transpose c b { c4 ~ s2. c4 }
    }
  >>
  \br
}
