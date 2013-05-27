\header {
 title = "Britain's Favored Isle"
 composer = "John Major"
 enteredby="Martin Usher"
    
 mutopiatitle = "Britain's Favored Isle"
 mutopiacomposer = "MajorJ"
 mutopiapoet = "John Major"
 mutopiainstrument = "Voice and Piano"
 date = "<1860"
 source = "Original Sheet Music"
 style = "Song"
 copyright = "Public Domain"
 maintainer = "Martin Usher"
 maintainerEmail = "martinusher@earthlink.net"
 lastupdated = "2006/Feb/06"
 
 texidoc = "This song is an example of an English patriotic song from the
	mid-Victorian era. The music is straightforward so its a good bet that
	it would have been the sort of piece performed at an informal social
	gathering -- after-dinner entertainment, for example
	   
	The music and words are both by J.S Major. The piece may be self-published
	because its available both from the publisher, Jefferys and Nelson, and
	directly from the composer (his address is also listed). The song,
	'Britain's Favored Isle' (the spelling of Favor without the 'u' is
	authentic) is also subtitled 'Manhood, Love and Beauty' and is 'Inscribed
	to his Friend, Captain Barton'. (Like all sheet music of this age it was
	quite expensive at two shillings, about a third of a week's wage for
	a laborer.)
    
	The copy has an inscription written on it --'Chas Ambrose, the Gift of
	his Friend, Captain Barton'." 

	footer = "Mutopia-2006/02/08-664"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\version "2.6.0"

melody =    \relative c'' \context Voice = "singer" {
    \clef treble
    \key ees \major
    \time 4/4
    \autoBeamOff
    
    \partial 8 r8^\markup { "Moderato" }
    R1*7
    
    r2 r4 r8 bes8					|
    a4. bes8 ees4. bes8					|
    g4 aes bes r8 aes8					|
    g8 ees4. c'4 \acciaccatura bes16 aes4		|
    g2 r4 r8 f8						|
    
    \stemUp bes[( a]) \stemDown bes[( c])
    	d4. c8						|
    \stemUp bes4. g8 f4. f8				|
    g8 \stemDown ees'4. d4. c8				|
    d2. r8 c8						|
    
    \stemUp bes8[(^\markup { \small\small "express:" }
    	a]) bes[( c]) \stemDown d4. c8	|
    bes2 r4 r8 \stemUp ees,8				|
    g4. aes8 bes4. bes8					|
    \stemDown d4. c8 bes4 r8 \stemUp ees,8		|
    
    g4 ees4 aes4. \stemDown c8				|
    ees8 bes4. r4 r8 ees8				|
    ees4. ees8 ees4 d8[( c])				|
    bes4 c8[( d]) ees4. bes8				|
    
    c8 f4. ees8[( d]) c[( bes])				|
    bes ees4. r4 r8 \stemUp g,8				|
    aes[( g]) f[( ees]) \stemDown bes'4 d^\fermata	|
    f8 ees4. r4 r4					|
    R1 * 3
    r2 r4 r8 \bar "||"
%%Second Verse
	\partial 8 \stemUp bes8^\markup { "2nd Verse" }	|
    a4. bes8 ees4. bes8					|
    g4 aes bes r8 aes8					|
    g8 ees4. c'4 \acciaccatura bes16 aes4		|
    g2 r4 r8 f8						|
    
    \stemUp bes[( a]) \stemDown bes[( c])
    	d4. c8						|
    \stemUp bes4. g8 f4. f8				|
    g8 \stemDown ees'4. d4. c8				|
    d2. r8 c8						|
    
    \stemUp bes8[(^\markup { \small\small "express:" }
    	a]) bes[( c]) \stemDown d4. c8	|
    bes2 r4 r8 \stemUp ees,8				|
    g4. aes8 bes4. bes8					|
    \stemDown d4. c8 bes4 r8 \stemUp ees,8		|
    
    g4 ees4 aes4. \stemDown c8				|
    ees8 bes4. r4 r8 ees8				|
    ees4. ees8 ees4 d8[( c])				|
    bes4 c8[( d]) ees4. bes8				|
    
    c8 f4. ees8[( d]) c[( bes])				|
    bes ees4. r4 r8 \stemUp g,8				|
    aes[( g]) f[( ees]) \stemDown bes'4 d^\fermata	|
    f8 ees4. r4 r4					|
    R1 * 3
    r2 r4 r8 \bar "||"
%%Third Verse
	\partial 8 \stemUp bes8^\markup { "3rd Verse" }	|
    a4. bes8 ees4. bes8					|
    g4 aes bes r8 aes8					|
    g8 ees4. c'4 \acciaccatura bes16 aes4		|
    g2 r4 r8 f8						|
    
    \stemUp bes[( a]) \stemDown bes[( c])
    	d4. c8						|
    \stemUp bes4. g8 f4. f8				|
    g8 \stemDown ees'4. d4. c8				|
    d2. r8 c8						|
    
    \stemUp bes8[(^\markup { \small\small "express:" }
    	a]) bes[( c]) \stemDown d4. c8	|
    bes2 r4 r8 \stemUp ees,8				|
    g4. aes8 bes4. bes8					|
    \stemDown d4. c8 bes4 r8 \stemUp ees,8		|
    
    g4 ees4 aes4. \stemDown c8				|
    ees8 bes4. r4 r8 ees8				|
    ees4. ees8 ees4 d8[( c])				|
    bes4 c8[( d]) ees4. bes8				|
    
    c8 f4. ees8[( d]) c[( bes])				|
    bes ees4. r4 r8 \stemUp g,8				|
    aes[( g]) f[( ees]) \stemDown bes'4 d^\fermata	|
    f8 ees4. r4 r4					|
    R1 * 3
    r2 r4 r8 \bar "|."
}

words = \lyricmode {
%%	\set stanza = 8
	A						|
    speck com -- par'd to				|
    "Earth's" huge ball! Is				|
    Brit -- "ian's" fa -- "vour'd"			|
    Isle! 	Though					|
    
    yet_ un_ -- match'd for				|
    man -- ly hearts; And				|
    Wo man's An -- gel					|
    smile	And					|
    
    Wo_ -- man's_ An -- gel				|
    smile    The					|
    seat of Peace, the					|
    Land of Song, The					|
    
    Home of Faith and					|
    Du -- ty;    She					|
    bears the palm a_ gainst the_ world; For		|
    
    Man hood, Love_ and_				|
    Beau -- ty!	For					|
    Man_ hood,_ Love, and				|
    Beau -- ty!
    
%%Second Verse

    The							|
    Choice -- est gifts from				|
    far strech'd climes, Her				|
    en -- er -- gies en --				|
    gage, And						|
    
    with_ God's_ light the				|
    Sun bes -- tows; His				|
    warmth with -- out his				|
    rage! His						|
    
    warmth_ with_ -- out his				|
    rage! And						|
    whilst each lib 'ral				|
    art she cheers, Trans --				|
    
    fix'd in Fath and					|
    Du -- ty, She					|
    stands un -- ri -- vall'd				|
    through the_ world For				|
    
    Man -- hood Love_ and_				|
    Beau -- ty! For					|
    Man_ -- hood_, Love, and				|
    Beau -- ty!
    
%%Third Verse

    Then						|
    Alb -- ion's, Er -- in's, 				|
    Scot -- ia's sons, Def --				|
    end your hap -- py					|
    Isles And						|
    
    be_ your_ Mon -- arch's 				|
    proud -- est boast, A				|
    loy -- al Peo -- ple's				|
    smiles A						|
    
    loy_ -- al_ Peo -- ple's				|
    smiles; Guard					|
    well Vic -- tor -- ia's,				|
    Al -- bert's home, The				|
    
    Throne of Faith and					|
    Du -- ty! And					|
    bear the palm a_ --					|
    gainst the world, For				|
    
    Man -- hood, Love_ and_				|
    Beau -- ty! For					|
    Man_ -- hood,_ Love, and				|
    Beau -- ty!
}

pianoRH =  \relative c' {
    \clef treble
    \key ees \major
    \time 4/4
    
    \partial 8	< bes bes' >8_\ff^\markup { "With Boldness and Animation" }|
    < a a' >4. < bes bes' >8 < ees ees' >4. < bes bes' >8		|
    < g g' >4 < aes aes' > < bes bes' > r8 aes'8			|
    < bes, ees g >4 < g bes ees > < ees' aes c > < c ees aes >		|
    < bes ees g >4 < bes ees g >8. < bes ees g >16
    	< bes ees g >4 bes'8-> c16 d					|
    
    < g, bes ees >4_\ff < bes ees g >8. < bes ees g >16 < bes d f >4
    	g8( a16 b)							|
    < ees, g c >4 < g c ees >8. < g c ees >16 < g b d >4 r8 g8		|
    aes[( g]) f[( ees]) bes'4 d^\markup { \small "tr" }			|
    < g, bes ees >4.. < g, bes ees >16_\ff < g bes ees >4 r4		|
    < a a' >4._\mf < bes bes' >8 < ees ees' >4. < bes bes' >8		|
    
    < g g' >4 < aes aes' >4 < bes bes' >4 r4				|
    < bes ees g >4 < g bes ees > < ees' aes c > < c ees aes >		|
    < bes ees g > < bes ees g >8._\f < bes ees g >16 < bes ees g >4 r4	|
    
    < d f bes >_\mf r < d f bes > r					|
    < bes ees g > r < bes d f > r					|
    < bes ees g >2 < bes' d >4. < a c >8				|
    < fis a d >4 < d d' >8._\f < d d' >16 < d d' >4 r4			|
    
    < d g bes >_\p << { \stemDown e4_\markup { \small\small "dol: express:" } }
    		\\ { \stemUp bes'8 c } >>
		< f, bes d >4. < ees a c >8				|
    < d f bes >4 f8.( d'16 < d, bes' >4) r4				|
    < bes g' >8_\p ees < bes g' > ees < bes g' > ees < bes g' > ees 	|
    < c aes' > ees < c aes' > ees < bes ees g >4 r4			|
    
    < bes ees g >_\mf r < c es aes > r					|
    < bes ees g > < bes ees g >8._\f < bes ees g >16 < bes ees g >4 r4	|
    < g' bes ees >4_\ff r4  < ges c ees >4 r4				|
    < f bes d >2( < ees bes' ees >4) r4					|
    
    r8_\f < c ees aes >8 < c ees aes >8 < c ees aes >8 
    	r8 < d f aes >8 < d f aes >8 < d f aes >8			|
    r8 < ees g >8 < ees g >8 < ees g >8 
    	r8 < ees g >8 < ees g >8 < ees g >8 				|
    aes[ g] f[ ees] \stemDown { ees'4 < f, aes bes d >4^\fermata }	| 			
    < g bes ees >2 r4 bes8(_\f c16 d)					|
    
    < g, bes ees >4 < bes ees g >8. < bes ees g >16
    	< bes d f >4 g8 a16 b						|
    < ees, g c >4 < g c ees >8. < g c ees >16 < g b d >4 r8 \stemUp g8	|
    aes[ g] f[ ees] \stemDown bes'4 d^\markup { \small "tr" }		|
    \stemUp < g, bes ees >4.. < g, bes ees >16_\ff < g bes ees >4 r8 \bar "||"
%%Second Verse
    \partial 8 r8							|
    \stemUp < a a'>4._\mf < bes bes' >8 < ees ees' >4. < bes bes' >8	|
    < g g' >4 < aes aes' > < bes bes' > r4				|
    < bes ees g > < g bes ees > < ees' aes c > < c ees aes >		|
    < bes ees g >4 < bes ees g >8. < bes ees g >16 < bes ees g >4 r4	|
    
    < d f bes >4 r4 < d f bes>4 r4					|
    < bes ees g >4 r4 < bes d f >4 r4					|
    < bes ees g >2 < bes' d >4. < a c >8				|
    < fis a d >4 < d d' >8._\f < d d' >16 < d d' >4 r4			|
    
    < d g bes > << { \stemDown e4_\markup { \small\small "dol: express:" } }
    	\\ { \stemUp bes'8 c } >>
    	< f, bes d >4. < ees a c >8					|
    < d f bes >4 f8.( d'16 < d, bes' >4) r4				|
     < bes g' >8_\p ees < bes g' > ees < bes g' > ees < bes g' > ees 	|
    < c aes' > ees < c aes' > ees < bes ees g >4 r4			|
    
    < bes ees g >_\mf r < c es aes > r					|
    < bes ees g > < bes ees g >8. < bes ees g >16 < bes ees g >4 r4	|
    \stemDown < g' bes ees >4_\ff r4  < ges c ees >4 r4			|
    < f bes d >2( < ees bes' ees >4.) r8				|
    
    r8 \stemUp < c ees aes >8 < c ees aes >8 < c ees aes >8 
    	r8 < d f aes >8 < d f aes >8 < d f aes >8			|
    r8 < ees g >8 < ees g >8 < ees g >8 
    	r8 < ees g >8 < ees g >8 < ees g >8 				|
    aes[ g] f[ ees] \stemDown { bes'4 < f aes bes d >4^\fermata }	|
    
    < g bes ees >2 r4 bes8(_\f c16 d)					|   
    < g, bes ees >4 < bes ees g >8. < bes ees g >16
    	< bes d f >4 g8 a16 b						|
    < ees, g c >4 < g c ees >8. < g c ees >16 < g b d >4 r8 \stemUp g8	|
    aes[ g] f[ ees] \stemDown bes'4 d^\markup { \small "tr" }		|
    \stemUp < g, bes ees >4.. < g, bes ees >16_\ff < g bes ees >4 r8 \bar "||"
 %%Third Verse
     \partial 8 r8							|
    < a a'>4._\mf < bes bes' >8 < ees ees' >4. < bes bes' >8		|
    < g g' >4 < aes aes' > < bes bes' > r4				|
    < bes ees g > < g bes ees > < ees' aes c > < c ees aes >		|
    < bes ees g >4 < bes ees g >8._\f < bes ees g >16 < bes ees g >4 r4	|
    
    < d f bes >4 r4 < d f bes>4 r4					|
    < bes ees g >4 r4 < bes d f >4 r4					|
    < bes ees g >2 \stemDown < bes' d >4. < c a >8			|
    \stemUp < fis, a d >4 < d d' >8._\f < d d' >16 < d d' >4 r4		|
    
    < d g bes > << { \stemDown e4_\markup { \small\small "dol: express:" } }
    	\\ { \stemUp bes'8 c } >>
    	< f, bes d >4. < ees a c >8					|
    < d f bes >4 f8.( d'16 < d, bes' >4) r4				|
     < bes g' >8_\p ees < bes g' > ees < bes g' > ees < bes g' > ees 	|
    < c aes' > ees < c aes' > ees < bes ees g >4 r4			|
    
    < bes ees g >_\mf r < c es aes > r					|
    < bes ees g > < bes ees g >8._\f < bes ees g >16 < bes ees g >4 r4	|
    < g' bes ees >4_\ff r4  < ges c ees >4 r4				|
    < f bes d >2( < ees bes' ees >4.) r8				|
    
    r8_\f \stemUp < c ees aes >8 < c ees aes >8 < c ees aes >8 
    	r8 < d f aes >8 < d f aes >8 < d f aes >8			|
    r8 < ees g >8 < ees g >8 < ees g >8 
    	r8 < ees g >8 < ees g >8 < ees g >8 				|
    aes[ g] f[ ees] \stemDown { ees'4 < f, aes bes d >4^\fermata }	|
    
    < g bes ees >2_\f r4 bes8( c16 d)					|   
    < g, bes ees >4 < bes ees g >8. < bes ees g >16
    	< bes d f >4 \stemUp g8 a16 b					|
    < ees, g c >4 < g c ees >8. < g c ees >16 < g b d >4 r8 g8		|
    aes[ g] f[ ees] \stemDown bes'4 d^\markup { \small "tr" }		|
    \stemUp < g, bes ees >4.. < g, bes ees >16_\ff < g bes ees >4 r8 \bar "|."
}

pianoLH =  \relative c {
    \clef bass
    \key ees \major
    \time 4/4

    \partial 8 < bes, bes' >8						|
    < a a' >4. < bes bes' >8 < ees ees' >4. < bes bes' >8		|
    < g g' >4 < aes aes' >4 < bes bes' >4 r4				|
    < ees ees' >2 < aes aes ' >2					|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    
    < ees ees' >4 < ees' ees' >4 < bes bes' >4 r4			|
    < c, c' >4 < c' c' >4 < g g' >4 r8 < g g' >8			|
    \slurDown \stemUp < aes aes' >8[( < g g' >8])
    	< f f' >[( < ees ees' >]) \stemDown < bes' bes' >2		|
    \stemUp < ees, ees' >4.. < ees ees' >16 < ees ees' >4 r4		|
    < a, a' >4. < bes bes' >8 < ees ees' >4. < bes bes' >8		|

    < g g' >4 < aes aes' >4 < bes bes' >4 r4				|
    < ees ees' >2 < aes aes' >2						|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    
    \stemDown < bes' bes' >4 r4 < bes bes' >4 r4			|
    \stemUp < ees, ees' >4 r4 < bes bes' >4 r4				|
    < ees ees' >2 < f f' >2 < d d' >2 r4 r4				|
    
    < g g' >2( < f f' >4) < f f' >4 					|
    \stemDown < bes bes' >2 < bes f >4 r4				|
    \stemUp < ees, ees' >4 r4 < ees ees' >4 r4 				|
    < aes aes' >4 r4 < ees ees' >4 r4					|
    
    < ees ees' >4 r4 < ees ees' >4 r4					|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    < ees ees' >4 r4 < a a' >4 r4					|
    \stemDown < aes aes' >2( < g g' >4.) r8				|
    
    \stemDown < aes aes ' >4 r4 < bes bes' >4 r4			|
    < ees bes >4 r4 < c c' >4 r4					|
    \stemUp < aes aes '>8[( < g g' >8]) < f f' >8[( < ees ees' >8])
    	< bes' bes' >4 < bes bes' >4_\fermata				|
    < ees, ees' >2 r4 r4						|
    
    < ees ees' >4 \stemDown < ees' ees' >4 < bes bes' >4 r4		|
    \stemUp < c, c' >4 \stemDown < c' c' >4 < g g' >4 r8 < g g' >8	|
    \stemUp < aes aes' >8[ < g g' >] < f f' >8[ < ees ees' >8]
    	\stemDown < bes' bes' >2					|
    \stemUp < ees, ees' >4.. < ees ees' >16 < ees ees' >4 r8 \bar "||"
%%Second Verse
    \partial 8 r8							|
    \stemUp < a, a' >4. < bes bes' >8 < ees ees' >4. < bes bes' >8	|

    < g g' >4 < aes aes' >4 < bes bes' >4 r4				|
    < ees ees' >2 < aes aes' >2						|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    
    \stemDown < bes' bes' >4 r4 < bes bes' >4 r4			|
    \stemUp < ees, ees' >4 r4 < bes bes' >4 r4				|
    < ees ees' >2 < f f' >2 < d d' >2 r4 r4				|
    
    < g g' >2( < f f' >4) < f f' >4 					|
    \stemDown < bes bes' >2 < bes f >4 r4				|
    \stemUp < ees, ees' >4 r4 < ees ees' >4 r4 				|
    < aes aes' >4 r4 < ees ees' >4 r4					|
    
    < ees ees' >4 r4 < ees ees' >4 r4					|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    < ees ees' >4 r4 < a a' >4 r4					|
    \stemDown < aes aes' >2( < g g' >4.) r8				|
    
    \stemDown < aes aes ' >4 r4 < bes bes' >4 r4			|
    < ees bes >4 r4 < c c' >4 r4					|
    \stemUp < aes aes '>8[( < g g' >8]) < f f' >8[( < ees ees' >8])
    	< bes' bes' >4 < bes bes' >4_\fermata				|
    < ees, ees' >2 r4 r4						|
    
    < ees ees' >4 \stemDown < ees' ees' >4 < bes bes' >4 r4		|
    \stemUp < c, c' >4 \stemDown < c' c' >4 < g g' >4 r8 < g g' >8	|
    \stemUp < aes aes' >8[ < g g' >] < f f' >8[ < ees ees' >8]
    	\stemDown < bes' bes' >2					|
    \stemUp < ees, ees' >4.. < ees ees' >16 < ees ees' >4 r8 \bar "||"    
%%Third Verse
    \partial 8 r8							|
    \stemUp < a, a' >4. < bes bes' >8 < ees ees' >4. < bes bes' >8	|

    < g g' >4 < aes aes' >4 < bes bes' >4 r4				|
    < ees ees' >2 < aes aes' >2						|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    
    \stemDown < bes' bes' >4 r4 < bes bes' >4 r4			|
    \stemUp < ees, ees' >4 r4 < bes bes' >4 r4				|
    < ees ees' >2 < f f' >2 < d d' >2 r4 r4				|
    
    < g g' >2( < f f' >4) < f f' >4 					|
    \stemDown < bes bes' >2 < bes f >4 r4				|
    \stemUp < ees, ees' >4 r4 < ees ees' >4 r4 				|
    < aes aes' >4 r4 < ees ees' >4 r4					|
    
    < ees ees' >4 r4 < ees ees' >4 r4					|
    < ees ees' >4 < ees ees' >8. < ees ees' >16 < ees ees' >4 r4	|
    < ees ees' >4 r4 < a a' >4 r4					|
    \stemDown < aes aes' >2( < g g' >4.) r8				|
    
    \stemDown < aes aes ' >4 r4 < bes bes' >4 r4			|
    < ees bes >4 r4 < c c' >4 r4					|
    \stemUp < aes aes '>8[( < g g' >8]) < f f' >8[( < ees ees' >8])
    	< bes' bes' >4 < bes bes' >4_\fermata				|
    < ees, ees' >2 r4 r4						|
    
    < ees ees' >4 \stemDown < ees' ees' >4 < bes bes' >4 r4		|
    \stemUp < c, c' >4 \stemDown < c' c' >4 < g g' >4 r8 < g g' >8	|
    \stemUp < aes aes' >8[ < g g' >] < f f' >8[ < ees ees' >8]
    	\stemDown < bes' bes' >2					|
    \stemUp < ees, ees' >4.. < ees ees' >16 < ees ees' >4 r8 \bar "|."
}


    

\book {
    \score {
	<< 
	   \new Staff
	       \melody
	   \lyricsto "singer" \new Lyrics \words

	   \new PianoStaff << 
	       \new Staff \pianoRH
	       \new Staff \pianoLH
	   >> 
       >>

	\layout {
	    \context {
		\Lyrics
		minimumVerticalExtent = #'(-0.5 . 2.5)
		\override LyricText #'font-size = #-1
	    }
	    \context {
		\Score
		\override Beam #'thickness = #0.55
		\override SpacingSpanner #'spacing-increment = #1.0
		\override Slur #'height-limit = #1.5
	    }
	    \context {
		\PianoStaff
		\override VerticalAlignment #'forced-distance = #10
	    }
	}
	\midi {
	    \tempo 4 = 140
	}
    }
}

