\paper { indent = 0  ragged-right = ##t paper-width = 10 \cm line-width = 9 \cm }

shapeTie =
  #(define-music-function (parser location offsets) (list?)
    #{
       \once \override Tie #'control-points = #(alter-curve $offsets)
    #})

#(define ((alter-curve offsets) grob)
   ;; get default control-points
   (let ((coords (ly:tie::calc-control-points grob))
         (n 0))
     ;; add offsets to default coordinates
     (define loop (lambda (n)
                    (set-car! (list-ref coords n)
                              (+ (list-ref offsets (* 2 n))
                                 (car (list-ref coords n))))
                    (set-cdr! (list-ref coords n)
                              (+ (list-ref offsets (1+ (* 2 n)))
                                 (cdr (list-ref coords n))))
                    (if (< n 3)
                        (loop (1+ n)))))
     ;; return altered coordinates
     (loop n)
     coords))

br = { \bar "" \break }

% #(set-global-staff-size 10)

\layout { \context { \Voice \override Tie #'direction = #DOWN \override Stem #'direction = #UP } }

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    
    \mark "1/4 should always be widened to at least 1/2"
    <b d' f' e'' g'' b''>4*1/4 ~ q4
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . 3.45) (1.6 . 3.25) (1.85 . 3.25) (2.0 . 3.45)) 
          \transpose c b'' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . 2.45) (1.6 . 2.25) (1.85 . 2.25) (2.0 . 2.45)) 
          \transpose c g'' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . 1.45) (1.6 . 1.25) (1.85 . 1.25) (2.0 . 1.45)) 
          \transpose c e'' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -1.55) (1.6 . -1.75) (1.85 . -1.75) (2.0 . -1.55)) 
          \transpose c f' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -2.55) (1.6 . -2.75) (1.85 . -2.75) (2.0 . -2.55)) 
          \transpose c d' { c4*1/2 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.45 . -3.55) (1.6 . -3.75) (1.85 . -3.75) (2.0 . -3.55)) 
          \transpose c b { c4*1/2 ~ c } }
    >>  
    \br 
    
    
    \mark "1"
    <b d' f' e'' g'' b''>4 ~ q4
    \bar "" 
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . 3.45) (1.8 . 3.1) (2.5 . 3.1) (2.75 . 3.45)) 
          \transpose c b'' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . 2.45) (1.8 . 2.1) (2.5 . 2.1) (2.75 . 2.45)) 
          \transpose c g'' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . 1.45) (1.8 . 1.1) (2.5 . 1.1) (2.75 . 1.45)) 
          \transpose c e'' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . -1.55) (1.8 . -1.9) (2.5 . -1.9) (2.75 . -1.55)) 
          \transpose c f' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . -2.55) (1.8 . -2.9) (2.5 . -2.9) (2.75 . -2.55)) 
          \transpose c d' { c4 ~ c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.55 . -3.55) (1.8 . -3.9) (2.5 . -3.9) (2.75 . -3.55)) 
          \transpose c b { c4 ~ c } }
    >>  
    \br
    
    \mark "2"
    <b d' f' e'' g'' b''>4 ~ s4 q4
    \bar "" 
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 3.25) (2.3 . 2.55) (4.9 . 2.55) (5.6 . 3.25)) 
          \transpose c b'' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 2.25) (2.3 . 1.55) (4.9 . 1.55) (5.6 . 2.25)) 
          \transpose c g'' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 1.25) (2.3 . 0.55) (4.9 . 0.55) (5.6 . 1.25)) 
          \transpose c e'' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -1.75) (2.3 . -2.45) (4.9 . -2.45) (5.6 . -1.75)) 
          \transpose c f' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -2.75) (2.3 . -3.45) (4.9 . -3.45) (5.6 . -2.75)) 
          \transpose c d' { c4 ~ s4 c } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -3.75) (2.3 . -4.45) (4.9 . -4.45) (5.6 . -3.75)) 
          \transpose c b { c4 ~ s4 c } }
    >>  
    \br
    
    \mark "4"
    <b d' f' e'' g'' b''>4 ~ s2. q4
    \bar "" 
    <<
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 3.35) (3.0 . 2.4) (10.05 . 2.4) (11.45 . 3.35)) 
          \transpose c b'' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 2.35) (3.0 . 1.4) (10.05 . 1.4) (11.45 . 2.35)) 
          \transpose c g'' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . 1.35) (3.0 . 0.4) (10.05 . 0.4) (11.45 . 1.35)) 
          \transpose c e'' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -1.65) (3.0 . -2.6) (10.05 . -2.6) (11.45 . -1.65)) 
          \transpose c f' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -2.65) (3.0 . -3.6) (10.05 . -3.6) (11.45 . -2.65)) 
          \transpose c d' { c4 ~ s2. c4 } }
        \new Voice {
          \set tieWaitForNote = ##t 
          \once \override Tie #'control-points = 
          #'((1.6 . -3.65) (3.0 . -4.6) (10.05 . -4.6) (11.45 . -3.65)) 
          \transpose c b { c4 ~ s2. c4 } }
    >>  
    \br
    
  }