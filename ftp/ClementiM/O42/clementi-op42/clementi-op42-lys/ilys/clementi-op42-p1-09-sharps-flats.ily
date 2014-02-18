\version "2.16.0"

inlineScoreChromaticScale = \markup { " " \general-align #Y #CENTER 
	\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    	        }
		    \relative c'{
		    	    \set Staff.instrumentName = #"Ex:"
		    	    \cadenzaOn
		    	    \shapeSlur #'(0.2 0 0 0 0 0 0 -0.2)
		    	    c4( cis)( d)( dis)( e)( f)( fis)( g)( gis)( a)( ais)( b)( c)
		    	    \bar "||" 
			}
	  \layout {
	      indent = 0.1\in
	      line-width = 2.8\in
	      ragged-right = ##f
	    }
	    }
	}
	\column {\left-align \general-align #Y #-1.3 " The intervals of the contiguous"
		\general-align #Y #-1 \line{  "  notes are all semitones."}
	}	   
}
inlineScoreCsharpExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {cis'}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreBflatExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {bes'}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreAsharpExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {ais'}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreGflatExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {ges'}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreFsharpExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {fis' \bar "||"}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreGmajorKeyExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {\key g \major \hideNotes c''64}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreFmajorKeyExample = \markup { " " \general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Bar_engraver
	    	    }
		    {\key f \major \hideNotes c''64}   
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreFirstExampleSharp = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'''{
		    	    \set Staff.instrumentName = \markup{"1" \super "st" "Ex:"}
		    	    \clef treble
		    	    \cadenzaOn
		    	    g16[ f e fis] g[ b a fis] \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes b,1.-\markup{\whiteout \pad-markup #0.4 "is played as if written thus"} f'1. b,1\unHideNotes
		    	    \sameSizeClef \forceClef
		    	    g'16[ f e fis] g[ b a fis!] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreSecondExampleFlat = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"2" \super "d" "Ex:"}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    b16[ c d bes] a[ bes a bes] \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes b2 b1.-\markup{\whiteout \pad-markup #0.4 "as if written thus"} b2  b1.\unHideNotes
		    	    \sameSizeClef \forceClef
		    	    b16[ c d bes] a[ bes! a bes!] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreThirdExampleNatural = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"3" \super "d" "Ex:"}
		    	    \clef treble
		    	    \key f \major
		    	    \cadenzaOn
		    	    \stemDown
		    	    f16[ c a bes] c[ b c b] c[ d c b] c4 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes b1.-\markup{\whiteout \pad-markup #0.4 \smaller "as if written thus"} b2  b1.\unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \key f \major
		    	     f'16[ c a bes] c[ b! c b!] c[ d c b!] c4 \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreFourthExampleSharpOverBar = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'''{
		    	    \set Staff.instrumentName = \markup{"Ex:"}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    g16[ fis e d] e[ fis g fis] \bar "|" \noBreak
		    	    fis[ g a g] g4 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.4)
		    	    \hideNotes b1.-\markup{\whiteout \pad-markup #0.4  "as if written thus"} b2  b1.\unHideNotes
		    	    \sameSizeClef \forceClef
		    	    g16[ fis! e d] e[ fis! g fis!] \bar "|" \noBreak
		    	    fis![ g a g] g4 \bar "||"  \noBreak
		     }
	  \layout {
	      indent = 0.1\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreOrderOfSharps = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff
	    	    	    \with{
	    	    	    	    \remove Time_signature_engraver
	    	    	    	    \remove Bar_engraver
	    	    	    }
		    	    \relative c''{
		    	    	    \set Staff.instrumentName = \markup{\column{\concat{"The order of " \caps "sharps  "} \line{"  at the clef."}}}
		    	    	  \clef treble
		    	    	  \override Stem #'transparent = ##t
		    	    	  \override Flag #'transparent = ##t
		    	    	  \override Beam #'transparent = ##t
		    	    	  \override NoteHead #'transparent = ##t
		    	    	  fis8 cis gis' dis ais eis' bis
		    	    }
	  \layout {
	      indent = .7\in
	      line-width = 2.5\in
	      ragged-right = ##f
	    }
	    }
	}
	\column {\left-align \general-align #Y #-1.3 \concat {" descending by a 4" \super "th" \normalsize "and"} 
		\general-align #Y #-1 \line{\concat{"  ascending by a 5" \super "th"}}
}
}
inlineScoreOrderOfFlats = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff
	    	    	    \with{
	    	    	    	    \remove Time_signature_engraver
	    	    	    	    \remove Bar_engraver
	    	    	    }
		    	    \relative c''{
		    	    	    \set Staff.instrumentName = \markup{\column{\concat{"The order of " \caps "flats  "} \line{"  at the clef."}}}
		    	    	  \clef treble
		    	    	  \override Stem #'transparent = ##t
		    	    	  \override Flag #'transparent = ##t
		    	    	  \override Beam #'transparent = ##t
		    	    	  \override NoteHead #'transparent = ##t
		    	    	  bes8 ees aes, des ges, ces fes,
		    	    }
	  \layout {
	      indent = .7\in
	      line-width = 2.5\in
	      ragged-right = ##f
	    }
	    }
	}
	\column {\left-align \general-align #Y #-1.3 \concat {" ascending by a 4" \super "th" \normalsize "and"} 
		\general-align #Y #-1 \line{\concat{"  descending by a 5" \super "th"}}
}
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneSharpsFlatsOne = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph {
    	    The \caps sharp \sharp placed before a note, raises it a semitone or half-tone.  Let us now 
    	    observe a scale of semitones, called the \caps chromatic scale.
    }
    \paragraph{\inlineScoreChromaticScale}
    \paragraph{
    	N.B. The \caps long keys of the Piano-Forte, or Harpsichord, are commonly called the \caps natural 
    	keys, tho'they ocassionally serve for \caps sharps and \caps flats; and the \caps short keys, are 
    	called \caps sharps and \caps flats, being only used for \caps sharp and \caps flat notes.
    }
    \paragraph{
    	Now if a \caps sharp be placed before C, thus: \inlineScoreCsharpExample the note is called 
    	C \caps sharp; and it is found on the instrument between C \caps natural, and D \caps natural; 
    	being one of the \caps short keys: D  \caps sharp is the  \caps short key between D, and E; but 
    	between E, and F, ther is no  \caps short key; nor is it wanted: for the  \caps interval between E and 
    	F, is but a semitone; and therefore when we want E  \caps sharp, we strike the key generally called 
    	F \caps natural.  F \caps sharp will be found between F \caps natural, and G \caps natural: G  \caps sharp 
    	between G and A \caps natural: A \caps sharp between A and B \caps natural: and B \caps sharp is under the same 
    	predicament as E  \caps sharp; we therefore strike C \caps natural for it.
    }
    \paragraph{
    	The flat \flat placed before a note, lowers it a semitone or half-tone: and if the note is a B, 
    	to which the \caps flat is prefixed, it is then called B \caps flat; and it is found between B \caps natural, 
    	and A  \caps natural, being one of the  \caps short keys.
    }
    \paragraph{
    	    =====General rule: every \caps flat is found by going one semitone \caps lower; that is, 
    	    toward the left-hand: and every \caps sharp, contrariwise, by going one semitone \caps higher; that is, 
    	    toward the right-hand.
    }
    \paragraph{
    	The double \caps sharp \general-align #Y #-0.9 \doublesharp raises the note \caps two semitones; and therefore, if it be 
    	F double \caps sharp, we strike G \caps natural; etc.
    }
    \paragraph{
    	The double \caps flat \general-align #Y #-0.9 \doubleflat lowers the note \caps two semitones; and therefore, we go as much to 
    	the \caps left for a double \caps flat, as we did to the \caps right for a double \caps sharp.
    }
    \paragraph{
    	The \caps natural \general-align #Y #-0.4 \natural takes away the effect of a \caps sharp, or a \caps flat; whether single, or 
    	double.  And \general-align #Y #-0.4 { \natural\sharp}, or
        \general-align #Y #-0.4 \natural \general-align #Y #-0.9 \flat, \caps reinstates the single sharp, or flat.
    }
    \paragraph{
    	    The Pupil must by this time have observed, that \inlineScoreBflatExample is struck by the \caps 
    	    same key as \inlineScoreAsharpExample and \inlineScoreGflatExample by the \caps same key as 
    	    \inlineScoreFsharpExample etc.
    }
    \paragraph { " " }
    \paragraph{
    	Now, the inconveniency of charging to memory with the \caps various uses of the \caps same keys, is 
    	but small; when compared with the impracticableness of performing on an instrument, furnished with keys, 
    	\caps perfectly corresponding with every flat, and sharp, single or double, which composition may require: 
    	a method therefore, has been adopted in tuning, called \caps temperament, which, by a small deviation 
    	from the truth of every interval, \caps {except the octave}, renders the instrument capable of satisfying 
    	the ear in \caps every key.
    }
    \paragraph{
    	When a \caps sharp is placed close to the clef thus \inlineScoreGmajorKeyExample it affects every F 
    	throughout the piece; except where the sharp is contradicted by the natural.
    }
    \paragraph{
    	    N.B.  The same rule holds, when there are two or more sharps at the clef; every one 
    	    affecting its corresponding note.
    }
  }
}
partOneSharpsFlatsTwo = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{
    	    When a \caps flat is placed by the clef \inlineScoreFmajorKeyExample it affects every B throughout the piece; except 
    	    where the flat is contradicted by the natural.
    }
        \paragraph{
    	    N.B.  The same rule holds, when there are two or more flats at the clef; every one 
    	    affecting its corresponding note.
    }
    \paragraph{
    	    When a sharp, flat, or natural is prefixed to a note, in the course of a piece, it affects all the 
    	    following notes of the \caps {same name}, contained in the \caps {same bar}: it is then called 
    	    an \caps accidental sharp, flat, or natural.
    }
    \paragraph{\inlineScoreFirstExampleSharp}
    \paragraph{\inlineScoreSecondExampleFlat}
    \paragraph{\inlineScoreThirdExampleNatural}
    \paragraph{"          which abbreviations, are a modern improvement."}
    \paragraph{" "}
    \paragraph{
    	The foregoing \caps rule extends even to the first note of the subsequent bar, when 
    	the affected note is the last of one, and first of the next.
    }
    \paragraph{\inlineScoreFourthExampleSharpOverBar}
    \paragraph{"           And the same with flats and naturals."}
    \paragraph{" "}
    \paragraph{\inlineScoreOrderOfSharps}
    \paragraph{\inlineScoreOrderOfFlats}
    \paragraph{" "}
    \paragraph{" "}
}
}
