\version "2.16.2"

\include "common-code.ily"

\layout {
  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 1 1)
}

\new Staff {
  <<
    { ais'4 s2 g'8 s4 }
    \new Voice {
      \voiceTwo
      <bis d'>4~ s2 q8 s4
    }
  >>
  \oneVoice r8 s2
  
  <<
    { ais'4 s2 g'8 s4 }
    \new Voice {
      \voiceTwo
      <bis d'>4~ s2
      \once \override TieColumn #'tie-configuration = #'((-5.2 . -1)(-7.2 . -1))
      q8 s4
    }
  >>
  \oneVoice r8 s2
}