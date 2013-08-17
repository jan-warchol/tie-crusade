\include "gobal-settings.ily"

br = { \bar "" \break }

tconf = #(define-music-function (parser location conf)
           (list?)
           #{ \once \override TieColumn #'tie-configuration = #conf #})

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
  What's wrong with ties in LilyPond?
  Quite frankly, almost everything.
  They are wildly inconsistent:
}

{
  d'4~ s4 d' s2 e'4~ s4 e' s
}

{
  f'4~ s2 f'4 s2 a'4~ s2 a'4 s
}

{
  a'4~ s4*4 a'4~ s4*8 a'4 s
}

{
  \stemUp
  \tieDown
  b'4~ b'4~ s2 b'4~ s4*16 b'4 s
}

{
  \stemUp
  <g' d''>4~ s4 q4~ s2*2 q4 s
}


\markup \justify {
  sometimes they disappear (there should be 6 ties in the first example):
}

{
  \stemUp
  \tieDown
  <c' d' e' f' g' a' >4~ s1 q4 s
}

{
  <a' d''>4_~ q s
}


\markup \justify {
  ...collide with ledgers...
}

\new Staff \with {
  \override StaffSymbol #'ledger-extra = #4
} {
  \stemUp
  \tieDown
  a~ s8 a4 s2 g4~ s2 g4 s
}

\markup \justify {
  ...or point to wrong notes altogether (in the first example, ties should connect e and g):
}

{
  <d'' e''~ g''~ b''>4 s4*8 q4 s
}

{
  <b' d''~ g''>4. s1 <a' d'' f''>4 s
}

{
  <c' e' ~ g' ~>4 s4*2 <e' g'>4 s
}
