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

\layout { \context { \Voice \override Tie #'direction = #UP } }

\transpose d g

\new Staff \with { \override StaffSymbol #'line-count = #5 \remove Time_signature_engraver } { \time 9999/1 \set tieWaitForNote = ##t 
    \mark "1/4"
    d'4.*1/4 ~ d'4
    \bar "" 
    \shapeTie #'(-0.15 -0.4   -0.1 -0.1   -0.05 -0.1   -0.0 -0.4)
    \once \override Dots #'extra-offset = #'(-0.1 . -0.0)
    d'4.*1/4 ~ d'4
    \br 
    
    \mark "1/2"
    d'4.*1/2 ~ d'4
    \bar ""
    \shapeTie #'(-0.15 -0.4   -0.1 -0.1   -0.05 -0.1   -0.0 -0.4)
    \once \override Dots #'extra-offset = #'(-0.1 . -0.0)
    d'4.*1/2 ~ d'4
    \br
    
    \mark "3/4"
    d'4.*3/4 ~ d'4
    \bar "" 
    \shapeTie #'(-0.1 -0.4   -0.1 -0.2   -0.0 -0.2   -0.0 -0.4)
    \once \override Dots #'extra-offset = #'(-0.0 . -0.0)
    d'4.*3/4 ~ d'4
    \br
    
    \mark "1"
    d'4. ~ d'4
    \bar "" 
    \shapeTie #'(0 -0.45   0 -0.3   -0.3 -0.3   -0.3 -0.45)
    \once \override Dots #'extra-offset = #'(0.1 . -0.02)
    d'4. ~ d'4
    \br
    
    \mark "5/4"
    d'4. ~ s16 d'4
    \bar "" 
    \shapeTie #'(0 -0.45   0 -0.35   -0.3 -0.35   -0.3 -0.45)
    \once \override Dots #'extra-offset = #'(0.1 . -0.04)
    d'4. ~ s16 d'4
    \br
    
    \mark "3/2"
    d'4. ~ s8 d'4
    \bar "" 
    \shapeTie #'(0 -0.45   0 -0.4   -0.3 -0.4   -0.3 -0.45)
    \once \override Dots #'extra-offset = #'(0.1 . -0.05)
    d'4. ~ s8 d'4
    \br
        
    \mark "2"
    d'4. ~ s4 d'4
    \bar "" 
    \shapeTie #'(0 -0.45   0 -0.45   -0.3 -0.45   -0.3 -0.45)
    \once \override Dots #'extra-offset = #'(0.1 . -0.05)
    d'4. ~ s4 d'4
    \br
    
    \mark "3"
    d'4. ~ s2 d'4
    \bar "" 
    \shapeTie #'(-0.75 0   -0.6 0   -0.3 0   -0.3 0)
    \once \override Dots #'extra-offset = #'(0.1 . -0.05)
    d'4. ~ s2 d'4
    \br
    
    \mark "4"
    d'4. ~ s2. d'4
    \bar "" 
    \shapeTie #'(-0.75 0   -0.6 0   -0.3 0   -0.3 0)
    \once \override Dots #'extra-offset = #'(0.15 . -0.05)
    d'4. ~ s2. d'4
    \br
    
    \mark "6"
    d'4. ~ s1 s4 d'4
    \bar "" 
    \shapeTie #'(-0.75 0   -0.6 0.1   -0.3 0.1   -0.3 0)
    \once \override Dots #'extra-offset = #'(0.2 . -0.05)
    d'4. ~ s1 s4 d'4
    \br
    
    \mark "8"
    d'4. ~ s1.. d'4
    \bar "" 
    \shapeTie #'(-0.75 0   -0.6 0.2   -0.3 0.2   -0.3 0)
    \once \override Dots #'extra-offset = #'(0.25 . -0.05)
    d'4. ~ s1.. d'4
    \br
    
    \mark "12"
    d'4. ~ s1 s1 s2. d'4
    \bar "" 
    \shapeTie #'(-0.75 0   -0.6 0.3   -0.3 0.3   -0.3 0)
    \once \override Dots #'extra-offset = #'(0.3 . -0.05)
    d'4. ~ s1 s1 s2. d'4
    \br
  }