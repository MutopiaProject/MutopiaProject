\version "2.16.1"

liftNoteOne = \override Voice.TextScript #'extra-offset = #'(0.0 . 2.2 )
liftNoteTwo = \once \override Voice.TextScript #'extra-offset = #'(0.0 . 2.8 )
sinkNoteOne = \override Voice.TextScript #'extra-offset = #'(0.0 . -2.3 )
sinkNoteTwo = \once \override Voice.TextScript #'extra-offset = #'(0.0 . -2.8 )

inlineScoreScale = \markup { " " \general-align #Y #CENTER 
	\score{
    << \new PianoStaff \with {
        \remove Time_signature_engraver
        }
        \new Staff = "upper" \with { instrumentName = #"Treble" }
          {
          \new Voice = "notes" {
		\relative c'{
		\override TextScript #'self-alignment-Y = #CENTER
		\override TextScript #'staff-padding = #3
		\hideTimeSignature
		\clef treble
		\cadenzaOn
		\repeat unfold 15 {s4}
		\sinkNoteOne \sinkNoteTwo
		g^\markup{ \larger g } a^\markup{ \larger a }
		b_\(^\markup{ \larger b } c\)^\markup{ \larger c } 
		d^\markup{ \larger d } e_\(^\markup{ \larger e }
		f\)^\markup{ \larger f } \sinkNoteTwo g^\markup{ \larger g } 
		a b\( c\) d e\( f\) g a
		b\( c\) d e\( f\)
		\bar "||"
		}
	  }
	}
	\new Lyrics {
		\lyricsto "notes" {
			\repeat unfold 8 { \skip 8 } a b c d e f g a b c d e f
		}
	}
	\new Staff = "lower" \with { instrumentName = #"Bass" }
	   {
	  \new Voice = "morenotes" {
		\relative c,, {
		\override TextScript #'self-alignment-Y = #CENTER
		\override TextScript #'staff-padding = #3
		\hideTimeSignature
		\clef bass
		f g a b_\( c\) d e_\(
		f\) g a b_\( c\) d e\( f\)
		\liftNoteOne
		g_\markup{ \larger g } a_\markup{ \larger a }
		\liftNoteTwo
		b\(_\markup{ \larger b } c\)_\markup{ \larger c } 
		\liftNoteTwo
		d_\markup{ \larger d } e\(_\markup{ \larger e }
		\liftNoteTwo
		f\)_\markup{ \larger f }
		g_\markup{ \larger g }
		\repeat unfold 13 { s4 }
		}
	  }
	}
	\new Lyrics \with { alignAboveContext = "lower" } {
	  \lyricsto "morenotes" {
		f g a b c d e f g a b c d e f 
	  }
	}
        >>
        \layout { 
        	indent = 5\mm
        	ragged-right = ##t
        }
      } " "
}
inlineScoreScaleLines = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c,,{
		\clef bass
		\tempo "Bass"
		\cadenzaOn
		f4^\markup{F} a^\markup{A} c^\markup{C} e^\markup{E} \bar "|"
		g^\markup{G} b^\markup{B} \stemUp d^\markup{D} \stemNeutral f^\markup{F} a^\markup{A} \bar "|"
		c^\markup{C} e^\markup{E} g^\markup{G} \bar "||" 
		s2
		\clef treble
		\tempo "Treble"
		
		a,4^\markup{A} c^\markup{C} \bar "|" e^\markup{E} g^\markup{G}  b^\markup{B}
		d^\markup{D}  f^\markup{F}  \bar "|" a^\markup{A} c^\markup{C} e^\markup{E}
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}
inlineScoreScaleSpaces = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c,{
		\clef bass
		\tempo "Bass"
		\cadenzaOn
		g^\markup{G} b^\markup{B} d^\markup{D} f^\markup{F} \bar "|" 
		a^\markup{A} c^\markup{C} e^\markup{E} g^\markup{G} \bar "|" 
		 b^\markup{B} d^\markup{D}  f^\markup{F} \bar "||" 
		s2
		\clef treble
		\tempo "Treble"
		
		g,4^\markup{G}  b^\markup{B} d^\markup{D} \bar "|" 
		f^\markup{F} a^\markup{A} c^\markup{C} e^\markup{E} \bar "|"
		g^\markup{G}  b^\markup{B} d^\markup{D} f^\markup{F}
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}
exerciseTrebleText = \markup { \right-align \huge \bold "Exercise for treble notes:" }
inlineScoreExerciseTreble = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c''{
		\clef treble
		\cadenzaOn
			c4 e e,g a f c'a f, b c e  g'^\exerciseTrebleText c, a' a,f'd,g'e,c''g,,a f'''d b e
			g,,,c g''a f,d b' c e g e, a f d b c1
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}
exerciseBassText = \markup { \right-align \huge \bold "Exercise for bass notes:" }
inlineScoreExerciseBass = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c{
		\clef bass
		\cadenzaOn
			c4 g g' e d g,b'f e c' e,,g'd,f'e c,^\exerciseBassText g g'd'
			g,c'c,e'e,,f,a''b,g'e c' a f'd b g g,f'a, g e'd f,e c'a a,b g'e c
			g''e,f a'g, b c,1
			
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneScale = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
  \paragraph {""}
  \paragraph {Shewing the position, and name of the notes.}
  \paragraph { \inlineScoreScale }
  \paragraph {" "}
  \paragraph {
  	  Let the \caps Pupil \normal-text now strike the notes on the instrument; taking notice, 
  	  that the first \caps long \normal-text key, on the left hand, serves for the first F; the
  	  second \caps Long \normal-text key for G; the third for A; and so on: making no other use,
  	  at present, of the \caps short \normal-text keys, than as \caps guides \normal-text 
  	  to direct the eye; by observing, that between B and C, and between E and F, there are 
  	  no \caps short \normal-text keys; which places in the scale are distinguished thus \lower #1.5 \huge \char ##x2040 .
  }
  \paragraph {" "}
  \paragraph {  \larger \bold "Remark on the foregoing Scale."}
  \paragraph {
  	  	The first \caps eight notes \normal-text in the treble-stave from G to G, are the
  	  	\caps same \normal-text as the corresponding \caps eight notes, \normal-text
  	  	perpendicularly under them in the bass-stave, both in \caps name \normal-text and 
  	  	\caps sound \normal-text; they are played, therefore, on the \caps same \normal-text keys. 
  }
  \paragraph{
  	  As a help to memory; let the Pupil contemplate the notes, \caps separately, \normal-text 
  	  on the lines, and spaces; beginning by the \caps five \normal-text lines.
  }
  \paragraph{\inlineScoreScaleLines}
  \paragraph{\inlineScoreScaleSpaces}
  \paragraph{" "}
  \paragraph{\inlineScoreExerciseTreble}
  \paragraph{" "}
  \paragraph{\inlineScoreExerciseBass}
  \paragraph{" "}
  \paragraph{\bold "N.B." Let the Pupil \caps first \normal-text be familiarized with the notes,
  	  by \caps readily \normal-text naming them; and then find them out as \caps readily \normal-text
  	  on the instrument.
  }
}
}
