\version "2.16.0"

inlineScaleCmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger C major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \tempo "Right Hand"
		    	    c16-1
		    	        d-2 e-3 f-1  g-2 a-3 b-4 c-1
		    	    d-2 e-3 f-1 g-2  a-3 b-4 c-5 b-4 \noBreak
		    	    a-3 g-2 f-1 e-3  d-2 c-1 b-4 a-3
		    	    g-2 f-1 e-3 d-2
		    	    c4-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c'{
		    	    \clef bass
		    	    \time 4/4
		    	    \override TextScript #'extra-offset = #'(-3.6 . 0.0 )
		    	    c,,16-5^\markup{\bold "Left Hand"}
		    	    d-4 e-3 f-2  g-1 a-3 b-2 c-1
		    	    d-4 e-3 f-2 g-1     a-3 b-2 c-1 b-2 \noBreak
		    	    a-3 g-1 f-2 e-3     d-4 c-1 b-2 a-3
		    	    g-1 f-2 e-3 d-4
		    	    c4-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
 inlineScaleAmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger A minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \key a \minor
		    	    \time 4/4
		    	    a16-1 b-2 c-3 d-1  e-2 fis gis a-1  b c d-1 e
		    	    fis gis a-5 g    f! e d c-3        b a g-4 f
		    	    e d c-3 b
		    	    a4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \key a \minor
		    	    \time 4/4
		    	    a16_5 b_4 c_3 d_2  e_1 fis_3 gis a  
		    	    b_4 c d e    fis-3 gis a-1 g-2
		    	    f!-3 e-1 d c  b a_1 g f 
		    	    e_1 d c b
		    	    a4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
inlineScaleGmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger G major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key g \major
		    	    g16-1 a-2 b-3 c-1  d e fis g-1  
		    	    a b c-1 d  e fis g-5  fis-4
		    	    e-3 d-2 c-1 b-3  a-2 g-1 fis-4 e-3
		    	    d-2 c-1 b-3 a-2
		    	    g4-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key g \major
		    	    g16_5 a b c   d e-3 fis g
		    	    a-4 b c d  e-3 fis g fis
		    	    e d-1 c b  a g-1 fis e
		    	    d-1 c b a
		    	    g4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
inlineScaleEmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger E minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key e \minor
		    	    e16-1 fis g a-1  b cis dis e-1   fis g a-1 b    cis dis e-5 d!
		    	    c! b a g-3     fis e d-4 c     b a g-3 fis 
		    	    e4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key e \minor
		    	    e,16_5 fis g a   b cis_3 dis e   fis-4 g a b   cis-3 dis e-1 d!
		    	    c! b-1 a g    fis e-1 d c     b-1 a g fis 
		    	    e4-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
 inlineScaleDmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger D major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key d \major
		    	    d16_1 e fis g_1   a b cis d-1   e fis g-1 a   b cis d-5 cis
		    	    b a g fis-3       e d cis-4 b   a g fis_3 e   d4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key d \major
		    	    d,16_5 e fis g     a b_3 cis d   e-4 fis g a   b-3 cis d-1 cis
		    	     b a-1 g  fis     e d_1 cis b   a_1 g fis e   d4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
 
inlineScaleBmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger B minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key b \minor
		    	    b16-1 cis d e-1   fis gis ais b-1  cis d e-1 fis   gis ais b-5 a!
		    	    g!  fis e d-3     cis b a-4 g      fis e d-3 cis   b4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key b \minor
		    	    b,16_4 cis d e    fis_4 gis ais b  cis-3 d e fis-4   gis ais b-1 a!-2
		    	    g! fis e-1 d     cis b_1 a g       fis e_1 d cis   b4_4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
inlineScaleAmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger A major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key a \major
		    	    a16-1 b cis d-1   e fis gis a-1    b cis d e-1   fis gis a-5 gis
		    	    fis e d cis-3     b a gis-4 fis    e d cis-3 b   a4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key a \major
		    	    a,16_5 b cis d    e fis_3 gis a    b_4 cis d e   fis-3 gis a-1 gis
		    	    fis e-1 d cis     b a_1 gis fis    e_1 d cis b   a4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleFisMin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"F" \smaller \sharp} minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key fis \minor
		    	    fis16-2 gis-3 a-1 b   cis dis eis-1 fis     gis a-1 b-2 cis-3
		    	    b-2 a-1 gis-3 fis-2   e!-1 d!-4 cis-3 b-2   a-1 gis-3 fis-2 eis-1
		    	    fis2.-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 3/4
		    	    \key fis \minor
		    	    fis,16_4 gis a b   cis-3 dis eis fis-4   gis a b-1 cis-2
		    	    b-1 a gis fis     e!_1 d! cis b_1       a gis fis eis_5
		    	    fis2._4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleEmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger E major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key e \major
		    	    e16-1 fis gis a-1   b cis dis e-1    fis gis a-1 b  cis dis e-5 dis
		    	    cis b a gis-3    fis e dis-4 cis   b a gis-3 fis  e4-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key e \major
		    	    e,16_5 fis gis a   b cis_3 dis e    fis-4 gis a b   cis-3 dis e-1 dis
		    	    cis b-1 a gis     fis e-1 dis cis  b_1 a gis fis   e4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleCisMin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"C" \smaller \sharp} minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key cis \minor
		    	    cis16-2 dis-3 e-1 fis   gis ais bis-1 cis   dis e-1 fis-2-3 gis-3-4
		    	    fis-2-3 e-1 dis-3 cis   b!-1 a!-4 gis fis   e dis-3 cis bis-1
		    	    cis2.-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 3/4
		    	    \key cis \minor
		    	    cis,16_3 dis_2 e_1 fis_4   gis ais bis cis_3   dis e fis-3 gis-2
		    	    fis-3 e-1 dis cis         b!_1  a!  gis fis   e_1 dis cis bis_4
		    	    cis2._3
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleBmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger B major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key b \major
		    	    b16-1 cis dis e-1  fis gis ais b-1   cis dis e-1 fis  gis ais b-5 ais
		    	    gis fis e dis-3  cis b ais-4 gis   fis e dis-3 cis  b4-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key e \major
		    	    b,16_4 cis_3 dis_2 e_1  fis_4 gis ais b   cis-3 dis e fis-4  gis ais b-1 ais
		    	    gis fis e-1 dis        cis b_1 ais gis   fis e_1 dis cis  b4-4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleGisMin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"G" \smaller \sharp} minor}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c''{
		    	    \clef treble
		    	    \time 3/4
		    	    \key gis \minor
		    	    gis16-2 ais-3 b-1 cis  dis eis-1 fisis-2 gis  ais b-1 cis dis
		    	    cis b ais-4 gis        fis! e!  dis-3 cis       b ais-3 gis fisis
		    	    gis2.-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 3/4
		    	    \key gis \minor
		    	    gis16-3 ais-2 b-1 cis-4  dis-3 eis-2 fisis-1 gis-3  ais b cis-3 dis-2
		    	    cis-3 b-1 ais gis        fis! e!-1 dis   cis            b-1 ais gis fisis-4
		    	    gis2.-3
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleFismaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"F" \smaller \sharp} major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key fis \major
		    	    fis16-2 gis-3 ais-4 b-1      cis dis eis-1 fis        gis ais b-1 cis-2-3
		    	    dis-3-4 cis-2-3 b-1 ais-4  gis-3 fis-2 eis-1 dis-3  cis b ais-4 gis    
		    	    fis2.
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 3/4
		    	    \key fis \major
		    	    fis16-4 gis ais b      cis-3 dis eis fis-4      gis ais b cis-3
		    	    dis-2 cis-3 b-1 ais  gis fis eis-1 dis        cis b-1 ais gis    
		    	    fis2.
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleDisMin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"D" \smaller \sharp} minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key dis \minor
		    	    dis16-2 eis-1 fis16 gis     ais bis-1 cisis dis   eis-1 fis gis ais 
		    	    gis fis eis-1 dis-3         cis! b! ais-4 gis     fis eis dis-2 cisis-1 
		    	    dis2.-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 3/4
		    	    \key dis \minor
		    	    dis16-3 eis-1 fis-4 gis   ais bis cisis-3 dis   eis fis-4 gis ais 
		    	    gis fis eis-1 dis         cis! b!-1 ais gis     fis eis-1 dis-3 cisis-4 
		    	    dis2.-3
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleDesMaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"D" \smaller \flat} major}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key des \major
		    	    des16-2 ees-3 f-1 ges  aes bes c-1 des     ees f-1 ges aes
		    	    bes-4 aes ges f        ees-3 des c bes-4   aes ges f ees-3
		    	    des2.-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 3/4
		    	    \key des \major
		    	    des16-3 ees-2 f-1 ges-4   aes bes c des-3     ees f ges-4 aes
		    	    bes aes ges f-1           ees des c-1 bes     aes ges f-1 ees
		    	    des2.
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleBesMin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"B" \smaller \flat} minor}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key bes \minor
		    	    bes16_2 c_1 des ees    f_1 g! a! bes   c-1 des ees f-1   g! a! bes aes!
		    	    ges! f ees-3 des       c bes_4 aes ges   f ees_3 des c
		    	    bes4_2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 4/4
		    	    \key bes \minor
		    	    bes16_3 c_1 des_3 ees    f g!_4 a! bes     c des-3 ees f   g!-4 a!-3 bes-2 aes!-3
		    	    ges!-4 f-1 ees des       c_1 bes aes ges   f_1 ees des c_1
		    	    bes4_3
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleAesMaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"A" \smaller \flat} major}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key aes \major
		    	    aes16_2 bes_3 c_1 des   ees f_1 g aes   bes c-1 des ees  f-1 g aes bes
		    	    c-5 bes aes g           f ees-3 des c   bes_4 aes g f    ees_3 des c bes_3
		    	    aes2_2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 4/4
		    	    \key aes \major
		    	    aes16_3 bes c des_4   ees f g aes_3 \stemUp  bes c des_4 ees \stemNeutral f g aes-3 bes
		    	    c-1 bes aes g-1   f ees des c-1  bes aes g_1 f     ees des c_1 bes
		    	    aes2
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleFmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new ChoirStaff 
    <<
    	    \override ChoirStaff.SystemStartBracket #'transparent = ##t
    	    \set ChoirStaff.instrumentName = \markup{F minor}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key f \minor
		    	    f16_1 g aes bes   c-1 d! e! f-1         g aes bes c-5
		    	    bes aes g f-1   ees!-3 des! c bes-4   aes g f e!-2
		    	    f2.-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 3/4
		    	    \key f \minor
		    	    f16_5 g aes bes     c-1 d!-3 e! f       g-4 aes bes c
		    	    des!-2 c-1 bes aes  g f-1 ees! des!     c-1 bes aes g 
		    	    f2._5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      \context { \Score \remove "System_start_delimiter_engraver" }
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleEesMaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"E" \smaller \flat} major}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key ees \major
		    	    ees16-2 f-1 g aes   bes c-1 d ees   f-1 g aes bes  c-1 d-2-3 ees-3-4 d-2-3 
		    	    c-1 bes-4 aes g     f ees-3 d c     bes-4 aes g f 
		    	    ees4-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 4/4
		    	    \key ees \major
		    	    ees16_3 f_2 g_1 aes_4   bes c d ees_3   f g aes-4 bes  c d ees-2 d-1 
		    	    c bes aes g-1           f ees d-1 c     bes aes g_1 f 
		    	    ees4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleCmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new ChoirStaff 
    <<
    	    \override ChoirStaff.SystemStartBracket #'transparent = ##t
    	    \set ChoirStaff.instrumentName = \markup{C minor}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key c \minor
		    	    c16-1 d ees f-1   g a! b! c-1     d ees f g-5 
		    	    f-4  ees d c      bes!-4 aes! g f 
		    	    ees-3 d c b!-2
		    	    c2.-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 3/4
		    	    \key c \minor
		    	    c16_5 d_4 ees f   g a!_3 b! c    d-4 ees f g-1 
		    	    aes!-2 g-1 f ees  d c_1 bes! aes!    g_1 f ees d 
		    	    c2._5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	  	  \context { \Score \remove "System_start_delimiter_engraver" }
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleBesMaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger \concat{"B" \smaller \flat} major}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key bes \major
		    	    bes16-2 c-1 d ees   f-1 g a bes     c-1 d ees f-1   g a bes-4 a 
		    	    g f ees-3 d \stemDown c bes-4 a g \stemNeutral f ees-3 d c  
		    	    bes4-2
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 4/4
		    	    \key bes \major
		    	    bes16_3 c_2 d_1 ees_4   f g a bes_3     c d ees-4 f   g a-1 bes-2 a-1 
		    	    g f ees d-1             c bes a_1 g     f ees d_1 c_2  
		    	    bes4_3
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleGmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new ChoirStaff
    <<
    	    \override ChoirStaff.SystemStartBracket #'transparent = ##t
    	    \set ChoirStaff.instrumentName = \markup{G minor}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c''{
		    	    \clef treble
		    	    \time 3/4
		    	    \key g \minor
		    	    g16-1 a bes c-1   d e! fis g-1    a bes c d-5
		    	    c bes a g         f!-4 ees! d c   bes-3 a g fis-2 
		    	    g2.-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 3/4
		    	    \key g \minor
		    	    g16-5 a bes c    d e!-3 fis g     a-4 bes c d
		    	    ees!-2 d-1 c bes   a g-1 f! ees!    d-1 c bes a 
		    	    g2.-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	  	\context { \Score \remove "System_start_delimiter_engraver" }
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleFmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{F major}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key f \major
		    	    f16-1 g a bes         c-1 d e f-1    g a bes c-1   d-2-3 e-3-4 f-4-5 e-3-4   
		    	    d-2-3 c-1-1 bes-4 a   g f e-3 d        c bes-4 a g   
		    	    f4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 4/4
		    	    \key f \major
		    	    f16-5 g a bes    c d-3 e f   g-4 a bes c   d-3 e f-1 e   
		    	    d c-1 bes a      g f-1 e d     c-1 bes a g   
		    	    f4-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleDmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new ChoirStaff
    <<
    	    \override ChoirStaff.SystemStartBracket #'transparent = ##t
    	    \set ChoirStaff.instrumentName = \markup{D minor}
        \new Staff{
        	\accidentalStyle #'Staff "forget"
		 \relative c'{
		    	    \clef treble
		    	    \time 3/4
		    	    \key d \minor
		    	    d16-1 e f g-1   a b! cis! d-1   e f g a-5
		    	    g f e d \stemDown c!-4 bes! a g \stemNeutral  f-3 e d cis-2 
		    	    f2.-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \time 3/4
		    	    \key d \minor
		    	    d16-5 e f g    a b!-3 cis! d    e-4 f g a
		    	    bes!-2 a-1 g f  e d-1 c! bes!    a-1 g f e 
		    	    d2.-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	  	\context { \Score \remove "System_start_delimiter_engraver" }
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
inlineScaleRHChromatic = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
	    	     	    \set Staff.instrumentName = \markup {\column{ \line{the Scale of semi-}\line{-tones for the}\line{right hand:}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    g16^1_1[ gis!^2_2 a^3_1 ais!^4_2]    b^1[ c^2 cis!^3 d^1]   dis!^2[ e^1 f^2 fis!^3]
		    	    g^1[ gis!^2 a^3 ais!^4]              b-1[ c-2 cis!-3 d-1]   dis!-2[ e-3 f-4 e-3]
		    	    \override TextScript #'extra-offset = #'(1.6 . 4.9 )
		    	    dis!-2[ d!-1 cis!-3 c!-2]-\markup{etc.} s8
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScaleLHChromatic = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c,{
	    	     	    \set Staff.instrumentName = \markup {\column{ \line{and for the}\line{left hand.}}}
		    	    \clef bass
		    	    \cadenzaOn
		    	    f16^5_3[ fis^4_2 g^3_1 gis^2]   a^1[ ais!^3 b-2 c-1]
		    	    cis^2_1[ d^1_3 dis^3 e-2]   f-1[ fis^4_2 g^3_1 gis^2]
		    	    a-1[ ais-3 b-2 c-1]        cis-2[ d-1 cis!-2 c!-1]
		    	    \override TextScript #'extra-offset = #'(1.6 . 4.9 )
		    	    b-2[ bes-3 a-1 aes-2]      g^3_2[ ges^4_1 f-1 e-2]-\markup{etc.} s8
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneMajorMinorScales = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
  	  \paragraph{"                     which ought to be practised daily."}
    \paragraph{" "}
    \paragraph{ \inlineScaleCmaj }
    \paragraph{" "}
    \paragraph{ \inlineScaleAmin }
    \paragraph{" "}
    \paragraph{ \inlineScaleGmaj }
    \paragraph{" "}
    \paragraph{ \inlineScaleEmin }
    \paragraph{   }
    \paragraph{ \inlineScaleDmaj }
    \paragraph{   }
    \paragraph{ \inlineScaleBmin }
    \paragraph{   }
    \paragraph{ \inlineScaleAmaj }
    \paragraph{  }
    \paragraph{ \inlineScaleFisMin }
    \paragraph{  }
    \paragraph{ \inlineScaleEmaj }
    \paragraph{  }
    \paragraph{ \inlineScaleCisMin  }
    \paragraph{  }
    \paragraph{ \inlineScaleBmaj }
    \paragraph{  }
    \paragraph{ \inlineScaleGisMin }
    \paragraph{  }
    \paragraph{ \inlineScaleFismaj }
    \paragraph{  }
    \paragraph{ \inlineScaleDisMin }
    \paragraph{  }
    \paragraph{ \inlineScaleDesMaj }
    \paragraph{  }
    \paragraph{ \inlineScaleBesMin }
    \paragraph{  }
    \paragraph{ \inlineScaleAesMaj }
    \paragraph{  }
    \paragraph{ \inlineScaleFmin }
    \paragraph{  }
    \paragraph{ \inlineScaleEesMaj }
    \paragraph{  }
    \paragraph{ \inlineScaleCmin }
    \paragraph{  }
    \paragraph{ \inlineScaleBesMaj }
    \paragraph{  }
    \paragraph{ \inlineScaleGmin }
    \paragraph{  }
    \paragraph{ \inlineScaleFmaj }
    \paragraph{  }
    \paragraph{ \inlineScaleDmin }
    \paragraph{  }
    \paragraph{ 
    	    N.B. All the preceding Scales should be extended, in practising, 2 or 3 octaves more, as 
    	    likewise
    }
    \paragraph{  }
    \paragraph{ \inlineScaleRHChromatic }
    \paragraph{  }
    \paragraph{ \inlineScaleLHChromatic }
    \paragraph{  }
    \paragraph{ 
    	    N.B. The semitones are to be fingered in the same way, ascending and descending.
    }
    \paragraph{" "}
  }
}
