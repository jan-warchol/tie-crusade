\version "2.16.2"

\include "../global-settings.ily"

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
