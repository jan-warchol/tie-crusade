\version "2.16.2"

\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

br = { \bar "" \break }

% #(set-global-staff-size 10)

\layout {
  indent = 0
  ragged-right = ##t
  \set tieWaitForNote = ##t

  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  %\override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 1)

  % make sure barlines don't interrupt the spacing
  \time 99/1
  \context {
    \Staff
    \remove Time_signature_engraver
    \remove Accidental_engraver
  }
  \tieUp
  \stemUp
}
\transpose d g

\new Staff {
  \mark "1/4"
  d'4.*1/4 ~ d'4
  \bar ""
  \shape Tie #'((-0.15 . -0.4)(-0.1 . -0.1)(-0.05 . -0.1)(-0.0 . -0.4))
  \once \override Dots #'extra-offset = #'(-0.1 . -0.0)
  d'4.*1/4 ~ d'4
  \br

  \mark "1"
  d'4. ~ d'4
  \bar ""
  \shape Tie #'((0 . -0.45)(0 . -0.3)(-0.3 . -0.3)(-0.3 . -0.45))
  \once \override Dots #'extra-offset = #'(0.1 . -0.02)
  d'4. ~ d'4
  \br

  \mark "2"
  d'4. ~ s4 d'4
  \bar ""
  \shape Tie #'((0 . -0.45)(0 . -0.45)(-0.3 . -0.45)(-0.3 . -0.45))
  \once \override Dots #'extra-offset = #'(0.1 . -0.05)
  d'4. ~ s4 d'4
  \br

  \mark "4"
  d'4. ~ s2. d'4
  \bar ""
  \shape Tie #'((-0.75 . 0)(-0.6 . 0)(-0.3 . 0)(-0.3 . 0))
  \once \override Dots #'extra-offset = #'(0.15 . -0.05)
  d'4. ~ s2. d'4
  \br

  \mark "8"
  d'4. ~ s1.. d'4
  \bar ""
  \shape Tie #'((-0.75 . 0)(-0.6 . 0.2)(-0.3 . 0.2)(-0.3 . 0))
  \once \override Dots #'extra-offset = #'(0.25 . -0.05)
  d'4. ~ s1.. d'4
  \br

}
