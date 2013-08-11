\version "2.16.0"

violinISecondMov =  \relative bes' {
    \key bes \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	bes2(\f  a4)
	|  bes4(  c8.[^\trill  bes32 c]
           d8.[  bes16)]
	| f2  g'8.[(\sf  f16)]
	| f2  es8.[(\sf  d16)]
	| d2  c8.[(\sf  bes16)]
	| bes4.  c16[ d] \grace f16( es8)[ d16 c]
	| bes4..(  d16)  es8.[(  c16)]
	| bes4 r r
    }

    \repeat volta 2 {
	| d'2(  fis,4)

% 10
	| g4(   a8.[^\trill  g32 a]
           bes8.[  g16)]
	|  d'8[( c bes a g  e)]
	|  g[(  f) a(  g) bes(  a)]
	|  bes[( d, bes' d, bes'  des,)]
	|  c[( bes' c, bes' c,  a')]
	|  bes,[(  g') a,(  f') g,(  e')]
	| f2. ~
	| f ~
	| f_\cresc ~
	| f ~

% 20
	| f4.(\f   e8[ es  c)]
	| bes2(  a4)
	|  bes4(  c8.[^\trill  bes32 c]
           d8.[  bes16)]
	| f2  g'8.[(\sf  f16)]
	| f2  es8.[(\sf  d16)]
	| d2  c8.[(\sf  bes16)]
	| bes4.  c16[ d] \grace f16( 
   es8)[ d16 c]
	| bes4..(  d16)  es8.[(  c16)]
	| bes4 r r
    }

    \repeat volta 2 {
        |  f'4_ \markup{ {\italic "sempre "} {\dynamic "p"}}
            d8.[^\trill es16] f4
	| f  g8.[^\trill a16] bes4
	|  c,(-. c-.  c)-. 
	| c4.(  d16[ es]  d4)
	| f4  d8.[^\trill e16] fis4
	| g4  g8.[^\trill a16] bes4
	| c,(\sfp  c') c
	| c4.(  d16[ bes]  a4)
	| g( bes4..\sfp  g16)
	| \tag #'part {f4 r r
	  \override VoltaBracket #'stencil = ##f}
    }

    \alternative {
        {
	    \tag #'score {|f4 r r}
	}

	{
	    \tag #'score {|f4 r r}
	}
    }

    \repeat volta 2 {
        | f4.(\sfp es8  d) r

% 40
        | f4.(\sfp es8  d) r
	| es4.(\p \times 2/3 {  des16[ c bes] }  a8) r
	| es'4.( \times 2/3 {  des16[ c bes] }  a8) r
	| bes4( des  bes)
	| f r r
	| e'( c'  e,)
	| f2._\cresc ~
	| f4\p  d8.[^\trill es16] f4
	| f  g8.[^\trill a16] bes4
	|  bes,(-. bes-.  bes)-. 
	| << { \voiceOne f'4.( \oneVoice g16[  as)] }
	  \new Voice { \voiceTwo bes,4 } >> g4
	| g4(  fis8[ f]  e) r
	| f4(  e8[ es]  d) r
	| f,4(\f  es'') es
	| es2( ~  es8[ \times 2/3 { d16 c  bes)] }
	| a4( bes  g)
	| bes,2(\p  d8[  c)]
	| bes4 r r
	| c( es4..\sf  c16)\p
	| f4 r r
	| c( es4..\sf  c16)\p
	| \tag #'part {bes4 r r
	  \override VoltaBracket #'stencil = ##f}
    }

    \alternative {
        {
	    \tag #'score {|bes4 r r}
	}

	{
	    \tag #'score {|bes4 r r}
	}
    }
}
