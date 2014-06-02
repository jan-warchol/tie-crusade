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

\transpose d d

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    \mark "1/4"
    <d' ~ d>4*1/4 <d' d>4
    \bar "" 
    \once \override Tie #'control-points = 
    #'((1.35 . -3.2) (1.55 . -3.45) (1.9 . -3.45) (2.1 . -3.2))
    <d' ~ d>4*1/4 <d' d>4
    \br 
    
    \mark "1/2"
    <d' ~ d>4*1/2 <d' d>4
    \bar ""
    \once \override Tie #'control-points = 
    #'((1.4 . -3.25) (1.6 . -3.55) (2.1 . -3.55) (2.35 . -3.25))
    <d' ~ d>4*1/2 <d' d>4
    \br
    
    \mark "3/4"
    <d' ~ d>4*3/4 <d' d>4
    \bar "" 
    \once \override Tie #'control-points = 
    #'((1.45 . -3.25) (1.75 . -3.6) (2.3 . -3.6) (2.6 . -3.25))
    <d' ~ d>4*3/4 <d' d>4
    \br
    
    \mark "1"
    <d' ~ d>4 <d' d>4
    \bar "" 
    \shapeTie #'(-0.1 0.0   -0.2 0.15   -0.4 0.15   -0.5 0.0)
    <d' ~ d>4 <d' d>4
    \br
    
    \mark "5/4"
    <d' ~ d>4 s16 <d' d>4
    \bar "" 
    \shapeTie #'(-0.1 0.0   -0.2 0.05   -0.4 0.05   -0.5 0.0)
    <d' ~ d>4 s16 <d' d>4
    \br
    
    \mark "3/2"
    <d' ~ d>4 s8 <d' d>4
    \bar "" 
    \shapeTie #'(-0.1 0.0   -0.1 0.0   -0.5 0.0   -0.5 0.0)
    <d' ~ d>4 s8 <d' d>4
    \br
    
    \mark "2"
    <d' ~ d>4 s4 <d' d>4
    \bar "" 
    \shapeTie #'(-0.1 0.0   -0.1 0.0   -0.5 0.0   -0.5 0.0)
    <d' ~ d>4 s4 <d' d>4
    \br
    
    \mark "3"
    <d' ~ d>4 s2 <d' d>4
    \bar "" 
    \shapeTie #'(-0.1 0.25   -0.1 0.25   -0.5 0.25   -0.5 0.25)
    <d' ~ d>4 s2 <d' d>4
    \br
    
  }