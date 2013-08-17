\include "../gobal-settings.ily"

br = { \bar "" \break }

\layout {
  indent = 0
  ragged-right = ##t
  \set tieWaitForNote = ##t

  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 1 1)

  % make sure barlines don't interrupt the spacing
  \time 99/1
  \context { \Staff \remove Time_signature_engraver }
}



\markup \justify {
  Forcing tie direction shouldn't change anything
  if the tie was already in that direction.
  In other words, ties in both cases should be
  identical:
}

\new Staff {
  \stemUp
  <e''>4~ s4*8   q4 s4*2
  \tieDown
  <e''>4~ s4*8   q4 s4*2
}
