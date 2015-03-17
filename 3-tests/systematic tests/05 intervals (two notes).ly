\version "2.16.2"

\include "../global-settings.ily"


pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                \stemUp
                #samp        q4 s4*2
                %#samp s8     q4 s4*2
                #samp s4     q4 s4*2
                %#samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                %#samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

\markup \justify {
  unisons:
}

\pattern <e' e'>4~
\pattern <g' g'>4~
\pattern <a' a'>4~
\pattern <f' f'>4_~
\pattern <g' g'>4_~
\pattern <a' a'>4_~


\markup \justify {
  seconds:
}

\pattern <g' a'>4~
\pattern <a' b'>4~
\pattern <g' a'>4_~
\pattern <a' b'>4_~


\markup \justify {
  thirds:
}

\pattern <g' b'>4~
\pattern <g' b'>4_~
\pattern <a' c''>4~
\pattern <a' c''>4_~


\markup \justify {
  fourths:
}

\pattern <g' c''>4~
\pattern <g' c''>4_~
\pattern <a' d''>4~
\pattern <a' d''>4_~


\markup \justify {
  fifths:
}

\pattern <g' d''>4~
\pattern <g' d''>4_~
\pattern <a' e''>4~
\pattern <a' e''>4_~


\markup \justify {
  sixths:
}

\pattern <g' e''>4~
\pattern <g' e''>4_~
\pattern <a' f''>4~
\pattern <a' f''>4_~


\markup \justify {
  sevenths:
}

\pattern <g' f''>4~
\pattern <g' f''>4_~
\pattern <a' g''>4~
\pattern <a' g''>4_~


\markup \justify {
  octaves:
}

\pattern <g' g''>4~
\pattern <g' g''>4_~
\pattern <a' a''>4~
\pattern <a' a''>4_~
