\version "2.16.2"

\include "common-code.ily"

\new Staff {
  \tieDown

  \mark "1/4"
  <c' d' e' f' g' a' >4 ~ q4
  <<
    \new Voice {
      \tie-cps #'((1.45 . -0.55) (1.6 . -0.75) (1.85 . -0.75) (2.0 . -0.55))
      \transpose c a' { <c ~ b,> 4 s32 s128 q4 }
    }
    \new Voice {
      \tie-cps #'((2.7 . -1.25) (2.85 . -1.45) (3.1 . -1.45) (3.25 . -1.25))
      \transpose c g' { c4 ~ s32 s128 c4 }
    }
    \new Voice {
      \tie-cps #'((1.45 . -1.55) (1.6 . -1.75) (1.85 . -1.75) (2.0 . -1.55))
      \transpose c f' { <c ~ b,> 4 s32 s128 q4 }
    }
    \new Voice {
      \tie-cps #'((2.7 . -2.25) (2.85 . -2.45) (3.1 . -2.45) (3.25 . -2.25))
      \transpose c e' { c4 ~ s32 s128 c4 }
    }
    \new Voice {
      \tie-cps #'((1.45 . -2.55) (1.6 . -2.75) (1.85 . -2.75) (2.0 . -2.55))
      \transpose c d' { <c ~ b,> 4 s32 s128 q4 }
    }
    \new Voice {
      \tie-cps #'((1.45 . -3.25) (1.8 . -3.7) (2.9 . -3.7) (3.25 . -3.25))
      \transpose c c' { c4 ~ s32 s128 c4 }
    }
  >>
  \br


  \mark "1"
  <c' d' e' f' g' a' >4 ~ s16.. q4
  <<
    \new Voice {
      \tie-cps #'((1.55 . -0.55) (1.8 . -0.9) (2.5 . -0.9) (2.75 . -0.55))
      \transpose c a' { <c ~ b,> 4 s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((2.8 . -1.2) (3.05 . -1.55) (3.75 . -1.55) (4 . -1.2))
      \transpose c g' { c4 ~ s16.. c4 }
    }
    \new Voice {
      \tie-cps #'((1.55 . -1.55) (1.8 . -1.9) (2.5 . -1.9) (2.75 . -1.55))
      \transpose c f' { <c ~ b,> 4 s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((2.8 . -2.2) (3.05 . -2.55) (3.75 . -2.55) (4 . -2.2))
      \transpose c e' { c4 ~ s16.. c4 }
    }
    \new Voice {
      \tie-cps #'((1.55 . -2.55) (1.8 . -2.9) (2.5 . -2.9) (2.75 . -2.55))
      \transpose c d' { <c ~ b,> 4 s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((1.45 . -3.25) (1.95 . -3.8) (3.5 . -3.8) (4 . -3.25))
      \transpose c c' { c4 ~ s16.. c4 }
    }
  >>
  \br


  \mark "2"
  <c' d' e' f' g' a' >4 ~ s4 s16.. q4
  <<
    \new Voice {
      \tie-cps #'((1.6 . -0.75) (2.3 . -1.45) (4.9 . -1.45) (5.6 . -0.75))
      \transpose c a' { <c ~ b,> 4 s4 s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((2.85 . -1.2) (3.55 . -1.9) (6.15 . -1.9) (6.85 . -1.2))
      \transpose c g' { c4 ~ s4 s16.. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -1.75) (2.3 . -2.45) (4.9 . -2.45) (5.6 . -1.75))
      \transpose c f' { <c ~ b,> 4 s4 s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((2.85 . -2.2) (3.55 . -2.9) (6.15 . -2.9) (6.85 . -2.2))
      \transpose c e' { c4 ~ s4 s16.. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -2.75) (2.3 . -3.45) (4.9 . -3.45) (5.6 . -2.75))
      \transpose c d' { <c ~ b,> 4 s4 s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((1.5 . -3.25) (2.25 . -4.0) (6.0 . -4.0) (6.85 . -3.25))
      \transpose c c' { c4 ~ s4 s16.. c4 }
    }
  >>
  \br


  \mark "4"
  <c' d' e' f' g' a' >4 ~ s2. s16.. q4
  <<
    \new Voice {
      \tie-cps #'((1.6 . -0.65) (3.0 . -1.6) (10.05 . -1.6) (11.45 . -0.65))
      \transpose c a' { <c ~ b,> 4 s2. s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((2.85 . -1.2) (4.25 . -2) (11.3 . -2) (12.7 . -1.2))
      \transpose c g' { c4 ~ s2. s16.. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -1.65) (3.0 . -2.6) (10.05 . -2.6) (11.45 . -1.65))
      \transpose c f' { <c ~ b,> 4 s2. s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((2.85 . -2.2) (4.25 . -3.15) (11.3 . -3.15) (12.7 . -2.2))
      \transpose c e' { c4 ~ s2. s16.. c4 }
    }
    \new Voice {
      \tie-cps #'((1.6 . -2.65) (3.0 . -3.6) (10.05 . -3.6) (11.45 . -2.65))
      \transpose c d' { <c ~ b,> 4 s2. s16.. q4 }
    }
    \new Voice {
      \tie-cps #'((1.5 . -3.25) (3.0 . -4.2) (11.2 . -4.2) (12.7 . -3.25))
      \transpose c c' { c4 ~ s2. s16.. c4 }
    }
  >>
  \br
}
