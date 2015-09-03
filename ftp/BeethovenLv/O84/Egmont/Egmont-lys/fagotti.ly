\version "2.18.2"

\include "defs.ily"

 fagotti =  {
 \set Staff.instrumentName = "Faggotti"
 \set Staff.midiInstrument = "bassoon"
 \clef bass
 \key f \minor
 \time 3/2
 \moreAccidentalPadding
 <f, f>1.\fermata_\forteSforzato-\hideF
 R1. R1. R1. R1.
 << { r2 r4 \shapeSlurB
 c'4^\p( b aes') aes'2. f'4\rest a2\rest  } \\
 { r2 r2 r4 b\p b2( c'4) b,4\rest b,2\rest } >>
 << { a2\rest c'4\rest
 \shapeSlurB
 des'2( c'4) } \\
 { b,2\rest b,4\rest\p g2. } \\
 { s2-\hideP s8 s8\< s4 s8\!\> s4 s8\! } >> <f, f>1.\ff
 <f, f>2\staccato <f, f>2\staccato r4 r8  <f, f>8
 <ees, ees>2\staccato <aes, aes>2\staccato r2
 << { r2 r4 \shapeSlurB des'^\p( c' des') des'( ges' f' ees' des' des') des'2( c' ees'4 ges') } \\
 { r2 r2 r4 bes\p( aes2.)\< aes4\!( bes\> g!)\! aes1 aes2 } >>
 <des' f'>4 r4 <aes des'>2\pp\staccato <aes des'>\staccato
 r2 <aes des'>2\staccato <aes des'>\staccato
 r2 <ges ees'>2\staccato <ges ees'>\staccato
 << { e'4\rest
 ees'4( f'8 ees' des' c') c'4 d'4\rest } \\ { d2\rest a2 a } >>
 r2 <bes des'>2 <bes des'>  r2 <e e'>2 <e e'>  r2 <e c'>2 <e c'> R1. R1. R1. \bar "||"

 \time 3/4 R2. R2. R2. R2. R2. R2. R2. R2. R2. R2. R2.
 r4 r4 << { f,4(-\hideP bes,2.) f,4 } \\
 { \spaceSpannerD \hairpinPastBarline s4\p\< s4\!\> s4 s4\! f,4 } >>
 r4 \hairpinPastBarline <f, aes>4\<( <bes, bes>2.\!\> <f, aes>4\!) r4
 << { \shapeSlurB f,4( bes,2.) f,4 } \\ { \hairpinPastBarline f,4-\hideP\< bes,2.\!\> f,4\! } >> r4 r4
 R2. R2. R2. R2. R2. R2. R2. R2.
 << { \oneVoice r4 <e' g'>\cresc r4 r <e' g'> r r <e' g'> r r <e' g'> r
 r4 <e' g'> r r <e' g'> r r <e' g'> r r <e' g'>
 \voiceOne f,4\ff ~ f,2. ~ f,2. ~ f,4 f,4( aes, c) } \\ { s2.*7 s2 \voiceTwo f,4-\hideFF ~ f,2. ~ f,2. ~ f,4 f,4( aes, c) } >>
 r4 <c, c>4\ff ~ <c, c>2. ~ <c, c>2. ~ <c, c>4 <c, c> <c, c>
 <f, f>4 r r <g bes> r r <aes c'> r r <bes des'> <bes des'> <bes c'>
 <aes c'> r r <g bes> r r <aes c'> r <f aes> <f aes> <f aes> <fes aes>
 <ees g>2.\sf <aes c'>\sf <aes bes>\sf <g bes>\sf <g bes>\sf <aes c'>\sf <aes bes>\sf
 <g bes>4 r r R2. R2.
 <ees bes>2._\pDolce-\hideP( <aes c'>2.) R2. R2.
 <ees bes>2._\pDolce( <aes c'>2.) R2. R2.
 <cis e>2._\pCresc( <d fis>4 <e gis> <fis a>)
 <cis e>2.( <d fis>4 <e gis> <fis a>) <cis e>2. <d! f!>2. ~ <d f>2.\f <ees! g!>2.\ff
 << { aes!4 } \\ { aes!4 } >> <aes c'>4 \tieDown <aes c'>4\sf( ~ <aes des'>) <aes des'>
 \slurDown \tieUp <aes des'>4\sf( ~ <bes des'>) <bes des'>
 \tieNeutral <bes des'>\sf ~ <bes des'> <bes des'> <bes des'>
 <aes c'>4\f r r R2. <aes c'>4 r r R2. <aes c'>4 r r r <aes c'>4 <aes c'>
 << { ees'2 g4\staccato ees'2 g4\staccato ees'2 aes4\staccato
 ees'2 g4\staccato ees'2 aes4\staccato ees'2 g4\staccato } \\
 { ees'2\sf g4 ees'2\sf g4 ees'2\sf aes4 ees'2\sf g4 ees'2\sf aes4 ees'2\sf g4 } >>
 << { aes,2.^\fp ~ aes,2. ~ aes,2. ~ aes,2. g,2. ~ g,2. ~ g,2. ~ g,2 ees4\staccato }
 \\ { aes,4\staccato d,\rest d,\rest R2. R2. R2. R2. R2. R2. b,,4\rest b,,\rest ees4\f } >>
 << { aes,2.^\fp ~ aes,2. ~ aes,2. ~ aes,2. a,2. ~ a,2. ~ a,2. ~ a,2 f4\staccato } \\
 { aes,4\staccato d,\rest d,\rest R2. R2. R2. R2. R2. R2. b,,4\rest b,,\rest f,4\f\staccato } >>
 << { bes,2.^\fp ~ bes,2. ~ bes,2. ~ bes,2. a,2. ~ a,2. ~ a,2. ~ a,2 f,4\staccato
 bes,2.^\fp ~ bes,2. ~ bes,2. ~ bes,2 b,4 ~ b,2. ~ b,2 r4 } \\
 { bes,4\staccato e,\rest e,\rest R2. R2. R2. R2. R2. R2. d,4\rest d,\rest f,4\f
 bes,4\staccato e,\rest e,\rest R2. R2. R2. R2. R2. } >> R2. R2. R2. R2. R2. R2. R2.
 <g d'>2.\pp <g d'>2. <g d'>2. ~ <g d'>2.
 <c, c>2.\pp\staccato <c, c>2.\staccato-\hidePP <c, c>2.\cresc ~ <c, c>2. ~ <c, c>2. ~ <c, c>2
 <f, f>4\sfp <f, f>4 <f, f>4 r r <f, f> r r <f, f> r
 r4 <g bes> r r <g bes> r r <g bes> r r <g bes> r r <f aes> r R2.
 r4 r << { \shapeSlurB f4( bes2.)( f4) } \\ { \hairpinPastBarline f4-\hideP\<( bes2.\!\>)( f4\!) } >> r4 r R2. << { f,4 } \\ { f,4\p } >> r4 r
 R2. R2. R2. R2. R2. R2. R2. R2.
 << { s2. s2. s2. s2. s2. s2. s2. s2 f,4 ~ f,2. ~ f,2. ~ f,4 f,( aes, c) } \\
 { r4-\hideP <e' g'>\cresc r r <e' g'> r r <e' g'> r r <e' g'> r
 r <e' g'> r r <e' g'> r r <e' g'> r r <e' g'> f,4\ff  ~ f,2. ~ f,2. ~ f,4 f, aes, c } >>
 r4 <c, c>4\ff ~ <c, c>2. ~ <c, c>2. ~ <c, c>4 <c, c> <c, c> <f, f> r
 << { f,4 bes,2 bes,4 f,4 } \\ { f,4\f bes,2\sf bes,4 f,4 } >> r4
 \doubleSlursOn <f c'>4\f( <bes des'>2) \doubleSlursOff <bes des'>4 <f c'>4 r
 << { f,4 bes,2 bes,4 f,4 } \\ { f,4 bes,2\sf bes,4 f,4 } >> r4 <des des'>4\ff <des des'>4 r r
 <des des'>4 r r <des des'>4 r r <ges bes>4 <ees ges>4 <<{ aes } \\ { aes }>> <des f>4 r r
 <des des'>4 r r <des des'>4 r r <g! bes>4 <g bes>4 <aes c'>4 <bes des'>2. ~ <bes des'>2.
 <aes c'>2.\sf <aes des'>2.\sf <g bes>2.\sf <aes c'>2.\sf
 <ees ges>2.\sf <des f>2.\sf <g bes>2.\sf <aes c'>4 r r
 R2. R2. << { c'2.-\hideP( des'2.) } \\ { aes2._\pDolce-\hideP( des'2.) } >>
 R2. R2. << { c'2.( des'2.) } \\ { aes2._\pDolce( des'2.) } >>
 R2. R2. \slurUp <fis a>2._\pCresc( <g b>4 <a cis'> <b d'>)
 <fis a>2.( <g b>4 <a cis'> <b d'>) <fis a>2. <f! aes!>2.
 <ees ges>2.\f <ees c'>2.\ff <f des'>4 <f des'> \doubleSlursOn <f des'>4\sf( <bes des'>) \doubleSlursOff <ges bes>
 <ges bes>4\sf ~ <ges bes> <ges bes> <ges bes>\sf( <ges c'>) <ges c'> <ees aes>
 <des f>2.\f ~ <des f>2. <des f>2. ~ <des f>2. <des f>2. ~ <des f>2 <des' f'>4
 <ees' ges'>2\sf <c' ees'>4\staccato <ees' ges'>2\sf <c' ees'>4\staccato
 <f' aes'>2\sf <des' f'>4\staccato <ees' ges'>2\sf <c' ees'>4\staccato
 <f' aes'>2\sf <des' f'>4\staccato <ees' ges'>2\sf <c' ees'>4\staccato
 << { des'4\staccato des'4\staccato } \\ { des'4\ff des' } >> r8
 << { des'8 des'4 des' } \\ { des'8 des'4 des' } >> r8
 << { des'8 c'4 c' } \\ { des'8 c'4 c' } >> r8 << { c'8 c'4 c' } \\ { c'8 c'4 c' } >> r4
 R2. R2. R2. R2. <bes des'>4\ff <bes des'> r8 <bes des'> <bes des'>4 <bes des'> r8 <bes des'>
 << { a4 a } \\ { a4 a } >> r8 << { a8 a4 a } \\ { a8 a4 a } >> r4
 R2. R2. R2. R2. R2. R2. R2. r4 r r8 r^\fermata
 f2.\ppp ~ f2. <des des'>2.^\ppp ~ <des des'>2. ~ <bes, des'>2. ~ <bes, des'>2.
 <c c'>2. ~ <c c'>2.^\fermata \bar "||"

 \key f\major \time 4/4 R1 R1 R1 R1
 <e g>2_\txtCresc <e g>2 <f a> <f a> <e g> <f a>
 <g bes>8( <fis a>) <g bes>\staccato <a c'>\staccato
 <bes d'>\staccato <c' e'>\staccato <d' f'!>\staccato <e' g'>\staccato
 <f' a'>2\ff ~ <f' a'>8( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>2\sf ~ <f' a'>8( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 << { a'8 g' f' e' f' e' d' cis' d' c'! bes a bes g c' c' } \\ { f'8 d8\rest f4 d2 bes,4 g, c c } >>
 <f' a'>2\sf ~ <f' a'>8( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>2\sf ~ <f' a'>8( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 <f' a'>8\sf( <c' g'>) <a f'>\staccato <c' g'>\staccato
 << { a'8 g' f' e' f' e' d' cis' d' c'! bes a bes g c' c' } \\ { f'8 d8\rest f4 d2 bes,4 g, c c } >>
 << { f'4( ees' d' fis') } \\
 { f'4\sf ees' d' fis' } >>
 \clef tenor << { \shapeSlurB g'( des' c' e'!) } \\
 { g'\sf des' c' e'! } >>
 f'!4\sf( ees' d'! fis') g'\sf( des' c' e'!) f'!4\sf( ees' d'! fis') g'\sf( des' c' e'!)
 r8-\hideF a16(\cresc bes) c'8\staccato r r
 \tupletSpan 4 \tuplet 3/2 { a16[ bes c'] }
 d'8\staccato r
 r8 g16([ a]) bes8\staccato r r \tuplet 3/2 { g16[ a bes] } c'8[ c']
 \clef bass <f f'>4\ff( <ees ees'> <d d'> <fis fis'>)
 << { g'4( des' c' e'!) } \\ { g4\sf bes2 g4 } >>
 << { f!2 } \\ { f!2 } >> <e g>2 <f a> <g bes> <gis b>4 <a c'>2. ~ <a c'>1
 <g! bes!>4 <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes>
 << { f4. f8 } \\ { f4. f8 } >> <e g>4. <e g>8 <f a>4. <f a>8 <g bes>4. <g bes>8
 <gis b>4 <a c'>2. ~ <a c'>1
 <g! bes!>4 <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes>
 f'2.\ff c'4 f'4\staccato c'\staccato a\staccato c'\staccato
 f'2.\sf c'4 f'4\staccato c'\staccato a\staccato c'\staccato f'2 a'
 c'2.\sf c'4 f'2 a'2 c'2.\sf c'4 f'2 a'2 c'2.\sf c4 c'2.\sf c4
 << { c'2. c4 c'1 ~ c'1 } \\ { c'2.\sf c4 c'1\ff ~ c'1 } >>
 <f f'>4 <a c'>8. <a c'>16 <f f'>4 <a c'> <f f'>4 <a c'>8. <a c'>16 <f f'>4 <a c'>
 <f f'>4 <a c'>8. <a c'>16 <f f'>4 <a c'> <f f'>4 r <f, f> r <f, f> r r2 \bar "|."
}