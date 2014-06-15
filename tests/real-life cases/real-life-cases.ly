\version "2.16.2"

\include "../global-settings.ily"


\markup \huge "bad-tie-23"

\new Staff {
  <<
    { c''1 ~        s4*16  c''2 } \\
    { <e' g'~ e''>1 s4*16  <d' g' d''>1 }
  >>
  \br
  % the tie in the upper voice actually shouldn't be up,
  % so let's set it's direction manually.
  % unfortunately the effect is still wrong.
  <<
    { c''1 _~       s4*16  c''2 } \\
    { <e' g'~ e''>1 s4*16  <d' g' d''>1 }
  >>
}


\markup \huge "bad-tie-22"

mus = { <b' c'' ~ g'' ~ b''>4( }
\new Staff {
  \set doubleSlurs = ##t
  \mus s4     q4) s4*2
  \mus s4*4   q4) s4*2
  \mus s4*8   q4) s4*2
}

mus = { <b' c'' ~ g'' ~ b''>4( }
\new Staff {
  \set doubleSlurs = ##t
  \mus s4     <a' c'' g'' a''>4) s4*2
  \mus s4*8   <a' c'' g'' a''>4) s4*2
}


\markup \huge "bad-tie-19"

\new Staff {
  <a' c'' f''>4. ~ s4*4 q4. ( s4*4 e''4.) s4*4
  <a' c'' f''>4. ~ s4*8 q4. ( s4*8 e''4.) s4*4
}


\markup \huge "bad-tie-39"

\new Staff {
  <c'' e''>4. ~ s4*4 q4.-\fermata s4*2
  <c'' e''>4. ~ s4*8 q4.-\fermata s4*2
}


\markup \huge "bad-tie-6"

\new Staff {
  <g ~ b f'>4( <g c' e'>4) s4*2
  <g ~ b f'>4( s4*1/2 <g c' e'>4) s4*2
  <g ~ b f'>4( s4 <g c' e'>4) s4*2
}


\markup \huge "bad-tie-n..."

\new Staff {
  <>^"current lily:"
  <c' e' ~ g' ~>4  <e' g'>4 s4*2
  <c' e' ~ g' ~>4 s4*2 <e' g'>4 s4*2
  <c' e' ~ g' ~>4 s4*4 <e' g'>4 s4*2
  \br
  <>^"compare with:"
  <d' e'~ g'~>4 <e' g'>4 s4*2
  <d' e'~ g'~>4 s4 <e' g'>4 s4*2
  <d' e'~ g'~>4 s4*4 <e' g'>4 s4*2
}


\markup \huge "found by Werner:"

\new Staff \with { \consists Accidental_engraver } {
  <>^"current lily:"
  <f'! fis''>1 ~ s4*8 \bar "|" q1  s4*2
}
\new Staff \with { \consists Accidental_engraver } {
  <>^"compare with:"
  <f' fis''>1 ~ s4*8 \bar "|" q1
}


\markup \huge "another chord example:"

\new Staff {
  <>^"current lily:"
  <c'~ e'~ g'~ b'>4 <c' e' g'>
  <c'~ e'~ g'~ b'>4 s4 <c' e' g'>
  <c'~ e'~ g'~ b'>4 s4*4 <c' e' g'>
  <c'~ e'~ g'~ b'>4 s4*16 <c' e' g'>
}
\new Staff {
  <>^"compare with:"
  <c'~ e'~ g'~ b'>4 <c' e' g' c''>
  <c'~ e'~ g'~ b'>4 s4 <c' e' g' c''>
  <c'~ e'~ g'~ b'>4 s4*4 <c' e' g' c''>
}

\markup { ties in both cases should be similar! }
{ \stemUp <e' g' b'> ~ q  <g' b' d''> ~ q }

\markup { why e ties are different? }
{ <e' g'> ~ q  <e'> ~ q }

{
  <b' d''~ g''>4. s1 <a' d'' f''>4 s
}
