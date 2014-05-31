

\version "2.16.0"

\paper {
  indent = #0.0
  ragged-right = ##t
}



generateTiePattern
= #(define-music-function (parser location is-long chords) (boolean? ly:music?)

    "

translate x y z to x~x y~y z~z

" 
    
  (define (chord->tied-chord chord)
    (let*
	((ch1 (ly:music-deep-copy chord))
	 (ch2 (ly:music-deep-copy chord))
	 (dur1 (ly:make-duration
		(if is-long
		    1 2)))
	 (dur2 (ly:make-duration
		(if is-long
		    3 2))))

      (for-each (lambda (e)
		  (ly:music-set-property! e 'duration dur1))
		(ly:music-property ch1 'elements))

      (for-each (lambda (e)
		  (ly:music-set-property! e 'duration dur2))
		(ly:music-property ch2 'elements))
      
      (set! (ly:music-property ch1 'elements)
	    (cons
	     (make-music 'TieEvent)
	     (ly:music-property ch1 'elements)))

      (list ch1 ch2)))

  (make-music 'SequentialMusic 'elements (apply append
						(map chord->tied-chord (ly:music-property  chords 'elements)))))

baseChords =
\applyMusic #(lambda (mus)
	      (ly:music-property mus 'element))
\relative c'' {
  <c e>  
  <b c e>
  <a c e>
  <a b e>
  <a b e f>
  <a c d f>
  <a c e f>
  <f a e' f>
  <c e f a> 
  <c e g a>
  <f b e a>
}

testShort =
{
  \key c \major
  \generateTiePattern ##f \baseChords
}  

testLong =
{
  \key c \major
  \generateTiePattern ##t \baseChords
}  

\new Voice
{
  \time 2/4

  \testShort \break
  \transpose c d \testShort \break
  \time 5/8
  \testLong \break
  \transpose c d \testLong \break
}





% ****************************************************************
% end ly snippet
% ****************************************************************
