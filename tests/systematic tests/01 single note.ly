\version "2.16.2"

\include "../global-settings.ily"

\markup \justify {
  tie and stem on the opposite sides:
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                \stemUp
                \tieDown
                #samp        q4 s4*2
                % redundant #samp s8     q4 s4*2
                #samp s4     q4 s4*2
                % redundant #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                % redundant #samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

% redundant (e') \pattern <c'>4~
\pattern <d'>4~
\pattern <e'>4~
\pattern <f'>4~
\pattern <g'>4~
\pattern <a'>4~
\pattern <b'>4~
% redundant (a') \pattern <c''>4~
% redundant (b') \pattern <d''>4~
% redundant (a') \pattern <e''>4~
% redundant (b') \pattern <f''>4~
\pattern <g''>4~
\pattern <a''>4~

\markup \justify {
  tie and stem on the same side
  (almost identical to the above):
}

pattern = #(define-music-function
            (parser location samp)
            (ly:music?)
            #{
              \new Staff {
                \stemDown
                \tieDown
                #samp        q4 s4*2
                % redundant #samp s8     q4 s4*2
                #samp s4     q4 s4*2
                % redundant #samp s4*2   q4 s4*2
                #samp s4*4   q4 s4*2
                % redundant #samp s4*8   q4 s4*2
                #samp s4*16  q4 s4*2
              }
            #})

% redundant (e') \pattern <c'>4~
\pattern <d'>4~
\pattern <e'>4~
\pattern <f'>4~
\pattern <g'>4~
\pattern <a'>4~
\pattern <b'>4~
% redundant (a') \pattern <c''>4~
% redundant (b') \pattern <d''>4~
% redundant (a') \pattern <e''>4~
% redundant (b') \pattern <f''>4~
\pattern <g''>4~
\pattern <a''>4~

