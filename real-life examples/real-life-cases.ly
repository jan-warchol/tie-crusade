\include "../gobal-settings.ily"

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

  \time 99/1
  % make sure barlines don't interrupt the spacing
  \context { \Staff \remove Time_signature_engraver }
}


\markup \huge "bad-tie-23"

\new Staff {
  <>^"current lily"
  <<
    \new Voice { \voiceOne c''1 ~        s4*16  c''2 }
    \new Voice { \voiceTwo <e' g'~ e''>1 s4*16  <d' g' d''>1 }
  >>
  s4*4 \bar "|"
  % the tie in the upper voice actually shouldn't be up,
  % so let's set it's direction manually.
  % unfortunately the effect is still wrong.
  <<
    \new Voice { \voiceOne c''1 _~       s4*16  c''2 }
    \new Voice { \voiceTwo <e' g'~ e''>1 s4*16  <d' g' d''>1 }
  >>

  \br

  <>^"should be"
  <<
    \new Voice {
      \shape Tie #'((0 . 0)(0 . -0.3)(-0.3 . -0.3)(-0.3 . 0))
      \voiceOne c''1 ~ s4*16 \tconf #'((0.7 . 1)) c''2
    }
    \new Voice {
      \shape Tie #'((0 . 0)(0 . 0.15)(0 . 0.15)(0 . 0))
      \voiceTwo <e' g'~ e''>1 s4*16 \tconf #'((-2.4 . -1)) <d' g' d''>1
    }
  >>
  s4*4 \bar "|"
  <<
    \new Voice {
      \voiceOne c''1 _~ s4*16 \tconf #'((0.5 . -1)) c''2
    }
    \new Voice {
      \shape Tie #'((0 . 0)(0 . 0.15)(0 . 0.15)(0 . 0))
      \voiceTwo <e' g'~ e''>1 s4*16 \tconf #'((-2.4 . -1)) <d' g' d''>1
    }
  >>
}


\markup \huge "bad-tie-22"

mus = { <b' c'' ~ g'' ~ b''>4( }
\new Staff {
  <>^"current lily"
  \set doubleSlurs = ##t
  \mus s4     q4) s4*2
  \mus s4*4   q4) s4*2
  \mus s4*8   q4) s4*2
  \br
}

mus = { <b' c'' ~ g'' ~ b''>4( }
\new Staff {
  <>^"current lily"
  \set doubleSlurs = ##t
  \mus s4     <a' c'' g'' a''>4) s4*2
  \mus s4*8   <a' c'' g'' a''>4) s4*2
  \br
}

\markup \huge "bad-tie-19"

\new Staff {
  <>^"current lily"
  <a' c'' f''>4. ~ s4*4 q4. ( s4*4 e''4.) s4*4
  <a' c'' f''>4. ~ s4*8 q4. ( s4*8 e''4.) s4*4
  \br
  <>^"draft"
  <a' c'' f''>4. ~ s4*4 \tconf #'((-1.51 . -1)(1.51 . 1)(5.4 . 1)) q4. ( s4*4 e''4.) s4*4
  <a' c'' f''>4. ~ s4*8 \tconf #'((-1.51 . -1)(1.51 . 1)(5.4 . 1)) q4. ( s4*8 e''4.) s4*4
}


\markup \huge "bad-tie-39"

\new Staff {
  <>^"current lily"
  <c'' e''>4. ~ s4*4 q4.-\fermata s4*2
  <c'' e''>4. ~ s4*8 q4.-\fermata s4*2
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
  <g ~ b f'>4( \tconf #'((-10 . -1)) <g c' e'>4) s4*2
  \shape Tie #'((-0.4 . 0)(-0.3 . -0.15)(0 . -0.15)(0.1 . 0))
  <g ~ b f'>4( s4*1/2 \tconf #'((-10 . -1)) <g c' e'>4) s4*2
  \shape Tie #'((-0.2 . 0)(-0.2 . 0)(0 . 0)(0 . 0))
  <g ~ b f'>4( s4 <g c' e'>4) s4*2
}


\markup \huge "bad-tie-n..."

\new Staff{
  <>^"current lily:"
  <c' e' ~ g' ~>4  <e' g'>4 s4*2
  <c' e' ~ g' ~>4 s4*2 <e' g'>4 s4*2
  <c' e' ~ g' ~>4 s4*4 <e' g'>4 s4*2
  \br
  <>^"compare with this:"
  <d' e'~ g'~>4 <e' g'>4 s4*2
  <d' e'~ g'~>4 s4 <e' g'>4 s4*2
  <d' e'~ g'~>4 s4*4 <e' g'>4 s4*2
}


\markup \huge "found by Werner:"

\new Staff{
  <>^"current lily:"
  <f'! fis''>1 ~ s4*8 \bar "|" q1  s4*2
  \br
  <>^"compare with:"
  <f' fis''>1 ~ s4*8 \bar "|" q1
}


\markup \huge "another chord example:"

\new Staff{
  <>^"current lily:"
  <c'~ e'~ g'~ b'>4 <c' e' g'>
  <c'~ e'~ g'~ b'> s4 <c' e' g'>
  <c'~ e'~ g'~ b'> s4*4 <c' e' g'>
  <c'~ e'~ g'~ b'> s4*16 <c' e' g'>
  \br
  <>^"compare with:"
  <c'~ e'~ g'~ b'> s4 <c' e' g' c''>
  <c'~ e'~ g'~ b'> s4*4 <c' e' g' c''>
}

\markup { ties in both cases should be similar! }
{ \stemUp <e' g' b'> ~ q  <g' b' d''> ~ q }

\markup { why e ties are different? }
{ <e' g'> ~ q  <e'> ~ q }
