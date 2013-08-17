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

  % make sure barlines don't interrupt the spacing
  \time 99/1
  \context { \Staff \remove Time_signature_engraver }
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                \stemUp
                \tieDown
                #samp        q4 s4*2
                %#samp s8     q4 s4*2
                #samp s4     q4 s4*2
                #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                #samp s4*8   q4 s4*2
                %#samp s4*16  q4 s4*2
              }
            #})

\markup \justify {
  general case of chord with notes in spaces:
}

\pattern <b d' f' e'' g'' b''>4~

\markup \justify {
  general case of chord with notes on lines:
}
\pattern <c' e' g' f'' a'' c'''>4~

\markup \justify {
  general case of a cluster chord:
}
\pattern <c' d' e' f' g' a' >4~
