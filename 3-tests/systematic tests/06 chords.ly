\version "2.16.2"

\include "../global-settings.ily"

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
