\version "2.16.2"

\include "common-code.ily"

\layout {
  % make sure that note spacing won't change (as we rely
  % on spacer rests, not explicit offsets, to put notes apart)
  \override Score.SpacingSpanner #'common-shortest-duration =
  #(ly:make-moment 1 1)
}

\markup \huge "bad-tie-68"

\new Staff {
  <<
    { ais'4 s2 g'8 s4 } \\
    { <bis d'>4~ s2 q8 s4 }
  >>
  \oneVoice r8 s2
  
  <<
    { ais'4 s2 g'8 s4 } \\
    {
      <bis d'>4~ s2
      \once \override TieColumn #'tie-configuration = #'((-5.2 . -1)(-7.2 . -1))
      q8 s4
    }
  >>
  \oneVoice r8 s2
}


\markup \huge "bad-tie-23"

\new Staff {
  <>^"current lily"
  <<
    { c''1 ~        s4*16  c''2 } \\
    { <e' g'~ e''>1 s4*16  <d' g' d''>1 }
  >>
  s1

  <>^"should be"
  <<
    \new Voice {
      \shape Tie #'((0 . -0.1)(0 . -0.4)(-0.3 . -0.4)(-0.3 . -0.1))
      \voiceOne c''1 ~ s4*16 \tie-conf #'((0.7 . 1)) c''2
    }
    \new Voice {
      \shape Tie #'((0 . 0)(0 . 0.15)(0 . 0.15)(0 . 0))
      \voiceTwo <e' g'~ e''>1 s4*16 \tie-conf #'((-2.4 . -1)) <d' g' d''>1
    }
  >>
}

\new Staff {
  <>^"current lily"
  % the tie in the upper voice actually shouldn't be up,
  % so let's set it's direction manually.
  % unfortunately the effect is still wrong.
  <<
    { c''1 _~       s4*16  c''2 } \\
    { <e' g'~ e''>1 s4*16  <d' g' d''>1 }
  >>
  s1

  <>^"should be"
  <<
    \new Voice {
      \voiceOne c''1 _~ s4*16 \tie-conf #'((0.5 . -1)) c''2
    }
    \new Voice {
      \shape Tie #'((0 . 0)(0 . 0.15)(0 . 0.15)(0 . 0))
      \voiceTwo <e' g'~ e''>1 s4*16 \tie-conf #'((-2.4 . -1)) <d' g' d''>1
    }
  >>
}

\markup \huge "bad-tie-19"

\new Staff {
  <>^"current lily"
  <a' c'' f''>4. ~ s4*4 q4. ( s4*4 e''4.) s4*4
  <a' c'' f''>4. ~ s4*8 q4. ( s4*8 e''4.) s4*4
  \br
  <>^"draft"
  <a' c'' f''>4. ~ s4*4 \tie-conf #'((-1.51 . -1)(1.51 . 1)(5.4 . 1)) q4. ( s4*4 e''4.) s4*4
  <a' c'' f''>4. ~ s4*8 \tie-conf #'((-1.51 . -1)(1.51 . 1)(5.4 . 1)) q4. ( s4*8 e''4.) s4*4
}


\markup \huge "bad-tie-6"

\new Staff {
  <>^"current lily"
  <g ~ b f'>4( <g c' e'>4) s4*2
  <g ~ b f'>4( s4*1/2 <g c' e'>4) s4*2
  <g ~ b f'>4( s4 <g c' e'>4) s4*2
  \br
  <>^"should be"
  \shape Tie #'((-0.4 . 0)(-0.3 . -0.15)(0 . -0.15)(0.1 . 0))
  <g ~ b f'>4( \tie-conf #'((-10 . -1)) <g c' e'>4) s4*2
  \shape Tie #'((-0.4 . 0)(-0.3 . -0.15)(0 . -0.15)(0.1 . 0))
  <g ~ b f'>4( s4*1/2 \tie-conf #'((-10 . -1)) <g c' e'>4) s4*2
  \shape Tie #'((-0.2 . 0)(-0.2 . 0)(0 . 0)(0 . 0))
  <g ~ b f'>4( s4 <g c' e'>4) s4*2
}

