\version "2.19.17"
\language "italiano"

#(define (merge-rests-on-positioning grob)
  (let* ((can-merge #f)
	 (elts (ly:grob-object grob 'elements))
	 (num-elts (and (ly:grob-array? elts)
			(ly:grob-array-length elts)))
	 (two-voice? (= num-elts 2)))
    (if two-voice?
	(let* ((v1-grob (ly:grob-array-ref elts 0))
	       (v2-grob (ly:grob-array-ref elts 1))
	       (v1-rest (ly:grob-object v1-grob 'rest))
	       (v2-rest (ly:grob-object v2-grob 'rest)))
	  (and
	   (ly:grob? v1-rest)
	   (ly:grob? v2-rest)	     	   
	   (let* ((v1-duration-log (ly:grob-property v1-rest 'duration-log))
		  (v2-duration-log (ly:grob-property v2-rest 'duration-log))
		  (v1-dot (ly:grob-object v1-rest 'dot))
		  (v2-dot (ly:grob-object v2-rest 'dot))
		  (v1-dot-count (and (ly:grob? v1-dot)
				     (ly:grob-property v1-dot 'dot-count -1)))
		  (v2-dot-count (and (ly:grob? v2-dot)
				     (ly:grob-property v2-dot 'dot-count -1))))
	     (set! can-merge
		   (and 
		    (number? v1-duration-log)
		    (number? v2-duration-log)
		    (= v1-duration-log v2-duration-log)
		    (eq? v1-dot-count v2-dot-count)))
	     (if can-merge
		 ;; keep the rest that looks best:
		 (let* ((keep-v1? (>= (rest-score v1-rest)
				      (rest-score v2-rest)))
			(rest-to-keep (if keep-v1? v1-rest v2-rest))
			(dot-to-kill (if keep-v1? v2-dot v1-dot)))
		   ;; uncomment if you're curious of which rest was chosen:
		   ;;(ly:grob-set-property! v1-rest 'color green)
		   ;;(ly:grob-set-property! v2-rest 'color blue)
		   (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
		   (if (ly:grob? dot-to-kill)
		       (ly:grob-suicide! dot-to-kill))
		   (ly:grob-set-property! rest-to-keep 'direction 0)
		   (ly:rest::y-offset-callback rest-to-keep)))))))
    (if can-merge
	#t
	(ly:rest-collision::calc-positioning-done grob))))

global = {
	\key do \minor
	\time 3/4
	\partial 16
	\tempo "Etwas langsam"
}

singer = \relative do' {
	\autoBeamOff
	r16 |
	R2.*3
	r4 r r8 do8 |
	do8. mib16 sol4. lab8 |
	sol8. si16 re4. si8 |
	fa'4~ \tuplet 3/2{ fa8[ re] si} \tuplet 3/2{lab![\prall sol]
	fa}
	mib8.[\prall re16] do4 r |
	R2. |
	r4 r4 r8 
}
lyrics = \lyricmode{
}
pianoUp = \relative do' {
}
pianoDown = \relative do {
	r16 |
	<do mib sol>2. |
	<do fa sol si>2. |
	<do re fa lab si> |
	<do mib sol do>2 r4 |
	<do mib sol do>2. |
	<do fa sol si>2. |
	<do re fa lab si>2. |
	<do mib sol do>2. |
	<do re fa lab si>2. |
	<do mib sol do>2 r4 |
	<<
		{
			sol'2~ sol8( fa) |
			mi4( la) r8 sold( |
			la2) \tuplet3/2{la8( si do)} |
			do4( si8) r r sold( |
			la2) \tuplet 3/2{la8( si do)} |
			do4( si8) r r4 |
		}
		\\
		{
			si,2. | do2 r8 si( |
			do2) re4 |
			re( sol8) r r si,( |
			do2) re4 |
			re( sol8) r r4
		}
	>>
	r4 <si, re>8 r r4 |
	r4 <do mib!>8 r r4 |
	r4 <sol mib' sol> r4 |


}

%pianoDynamics = {
\score{
	<<
	\new Staff {
		\new Voice{\global \singer}
	}
	\new PianoStaff{
		\new Staff{\pianoUp}
		\new Staff \with{
			\override RestCollision.positioning-done = #merge-rests-on-positioning
		}{
			\clef bass
			\new Voice{\global \pianoDown}
		}
	}
>>
}
