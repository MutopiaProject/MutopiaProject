\version "1.6.9"

\header {
 title = "Sonata No. 8 ``Path\\'etique''"
 subtitle = "2nd Movement"
 composer = "L. van Beethoven"
 opus = "Op. 13"
 piece = "Adagio cantabile"

 mutopiatitle = "Sonata No. 8 \"Pathétique\" (2nd Movement: Adagio cantabile)"
 mutopiacomposer = "BeethovenLv"
 mutopiainstrument = "Piano"
 source = "Berners, 1908 (edited by A. Winterberger)"
 
 % I haven't typeset all of Winterberger's additions, by a long way - no
 % fingering is included, and much of the phrasing, dynamics and performance
 % directions have also been omitted.
 
 style = "Classical"
 copyright = "Public Domain"

 filename = "pathetique-2.ly"
 maintainer = "Chris Sawer"
 maintainerEmail = "chris@sawer.uklinux.net"
 maintainerWeb = "http://www.sawer.uklinux.net/"
 lastupdated = "2003/Apr/02"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"

 footer = "Mutopia-2003/04/02-295"
}

#(define naturn '(music ((font-relative-size . -2) "accidentals-0") ((raise . 1.5) "scripts-turn")))

topmain = \notes \relative c' {
 \property Voice . TextScript \override #'padding = #2

 \key as \major
 \time 2/4
 \clef bass
 \stemUp
 
 c4( bes |			%1
 es4. )des8 |
 [c( es as )bes] |
 es,4.( e8 |
 )f4 bes,8.( c32 )des! |	%5
 es!4( a, |
 )des c16^.( bes^. as!^. )g^. |
 <bes4( g> )as8 \clef treble s |
 c'4( bes |			%9
 es4. )des8 |
 [c( es as )bes] |
 es,4.( e8 |
 )f4 bes,8.( c32 )des! |	%13
 es!4( a, |
 )des c16^.( bes^. as!^. )g^. |
 bes4( )as8 r16. c,32 |
 \stemBoth
 \slurBoth
 \tieBoth
 c'4 ~ c16( as' g )f |		%17
 c'4 ~ c16( as g )f |
 c4 ~ c16( as' g )f |
 es8( )d ~ [d8*2/3( s8*1/3^\turn f16. )es32] |
 es4 [f,8.*2/3( s16^#naturn as32 )c] |		%21
 \grace { [b16( c )d] } c32( )bes! g'16( ~ g f32 es [d c bes a c bes as )f] |
 es8 r16 \clef bass bes( g bes g )es |
 \stemUp
 \slurUp
 \tieUp
 [<as8 f> <as f> <as f> <as f d>] |
 s8*3 bes16.( )es32 |			%25
 es16( )d d( )c c( )ces ces( )bes |
 <bes2 g> ~ |
 <bes g> |
 <c4( as> bes |			%29
 es4. )des8 |
 [c( es as )bes] |
 es,4.( e8 |
 )f4 bes,8.( c32 )des! |	%33
 es!4( a, |
 )des c16^.( bes^. as!^. )g^. |
 <bes4( g> )as8 \clef treble es' |
 [as( ces bes )as] |		%37
 g( )des' r4 |
 [as8( ces bes )as] |
 as( )g r4 |
 [as8( ces bes )as] |		%41
 \stemBoth
 <fis' \sf fis,> ~ \times 2/3 { [fis16 dis-. b-.] } <b'8 \sf b,> ~ \times 2/3 { [b16 gis-. e-.] } |
 <e'8 \sf e,> ~ \times 2/3 { [e16 cis-. ais-.] } <b8-. b,> \clef bass <dis,,-. b a fis> |
 \times 2/3 { [<e16 \fp b gis> <b gis> <b gis>] [<b gis> <b gis> <b gis>]
   [<b gis_#'(italic "decresc.")> <b gis> <b gis>] [<b gis> <b gis> <b gis>] } |
 \stemUp
 [e8( gis fis )e] |		%45
 dis( )a' r4 |
 [e8( gis e )dis] |
 d4. d8 |
 d4. d8 |			%49
 des!4. des8 |
 c!4( bes |
 es4. )des8 |
 [c( es as )bes] |		%53
 es,4.( e8 |
 )f4 bes,8.( c32 )des |
 es4( a, |
 )des \times 2/3 { [des16( )c bes] [bes( )as! g] } |	%57
 <bes4( g> )as8 \clef treble s |
 c'4( bes |
 es4. )des8 |
 [c( es as )bes] |					%61
 es,4.( e8 |
 )f4 bes,8.( c32 )des |
 es4( a, |
 )des \times 2/3 { [des16( )c bes] [bes( )as! g] } |	%65
 \stemBoth
 \slurBoth
 \tieBoth
 <as8 \pp c,> r r es'16.( )e32 |
 f8 ~ \times 2/3 { [f16( )es! des-.(] [c-. bes-. )as-.] } [g32( des' bes )g] |
 [as16.*2/3( s32^\turn c32] )es,8 r <es''16.( es,> <)e32 e,> |
 <f8 f,> ~ \times 2/3 { [<f16( f,> <)es! es,!> <des-.( des,>]
   [<c-. c,> <bes-. bes,> <)as-. as,>] [<g( g,> <des' des,> <)g, g,>] } |	%69
 <as8 as,> r \grace { es8( }
   \times 2/3 { [)des16_#'(columns (italic "r") (dynamic "f"))( c )des] [f( )es des-.] } |
 c8 r \stemUp \grace { c8( } \times 2/3 {
   [)bes16_#'(columns (italic "r") (dynamic "f"))( a )bes] [des( )c bes-.] } |
 s4 \clef bass \grace { c,8( } \times 2/3 {
   [)bes16_#'(columns (italic "r") (dynamic "f"))( a )bes] [des( )c bes-.] } |
 \stemDown
 as!16 \pp r <as es c> r <as4^\fermata c, as> \bar "|."		%73
}

topsecondary = \notes \relative c' {
 \property Voice . TextScript \override #'padding = #2
 
 \stemDown
 as16 \p es as es g es g es |		%1
 as es as es bes' es, bes' es, |
 as es bes' es, c' as d as |
 g bes g bes g bes g bes |
 g bes g bes g es g es |		%5
 as es as es es c es c |
 f des f des des des des des |
 des( es des )es \times 2/3 { [c-. es-. as-.] \stemBoth [c-. es-. as-.] \stemDown }
 c,16 es c es bes es bes es |		%9
 es as es as es bes' es, bes' |
 es, as es bes' as c as d |
 g, bes g bes g bes g bes |
 g bes g bes g es g es |		%13
 as es as es es c es c |
 f des f des des des des des |
 des es des es c8 s |
 s2*7					%17 - 23
 es,16(_#'(italic "cresc.") )d d( )c c( )b_#'(italic "(m.s.)") b( )bes |
 <g'8 es bes> r r r |			%25
 <as4 f_#'(italic "cresc.")> <as f> |
 f16( \p )fes fes( )es es( )d d( )es |
 es( )fes fes( )es es( \pp )d d( )des |
 c( \p es as )es g( es g )es |		%29
 as es as es bes' es, bes' es, |
 as es bes' es, c' as d as |
 g bes g bes g bes g bes |
 g bes g bes g es g es |		%33
 as es as es es c es c |
 f des f des des des des des |
 des es des es c8 r |
 \times 2/3 {
  [<es'16 \pp ces> <es ces> <es ces>] [<es ces> <es ces> <es ces>]
    [<es ces> <es ces> <es ces>] [<es ces> <es ces> <es ces>] |		%37
  [<es des> <es des> <es des>] [<es des> <es des> <es des>]
    [<es des> <es des> <es des>] [<es des> <es des> <es des>] |
  [<es ces> <es ces> <es ces>] [<es ces> <es ces> <es ces>]
    [<es ces> <es ces> <es ces>] [<es ces> <es ces> <es ces>] |
  [<es bes> <es bes> <es bes>] [<es bes> <es bes> <es bes>]
    [<es bes g> <es bes g> <es bes g>] [<es bes g> <es bes g> <es bes g>] |
  [<es ces> <es ces> <es ces>] [<es ces_#'(italic "cresc.")> <es ces> <es ces>]
    [<es ces> <es ces> <es ces>] [<es ces> <es ces> <es ces>] |		%41
 }
 s2*3 |
 \times 2/3 {
  [<b16 \pp gis> <b gis> <b gis>] [<b gis> <b gis> <b gis>]
    [<b gis> <b gis> <b gis>] [<b gis> <b gis> <b gis>] |		%45
  [<b a> <b a> <b a>] [<b a> <b a> <b a>]
    [<b a> <b a> <b a>] [<b a> <b a> <b a>] |
  [<b gis> <b gis> <b gis>] [<b gis> <b gis> <b gis>]
    [<b gis> <b gis> <b gis>] [<b gis> <b gis> <b gis>] |
  [<ces as! d,> <ces as d,> <ces as d,>] [<ces as d,> <ces as d,> <ces as d,>]
    [<ces as d,> <ces as d,> <ces as d,>] [<ces as d,> <ces as d,> <ces as d,>] |
  [<ces as d,> <ces as d,> <ces as d,>] [<ces as d,> <ces as d,> <ces as d,>]
    [<ces as d,> <ces as d,> <ces as d,>] [<ces as d,> <ces as d,> <ces as d,>] |	%49
  [<bes! as des,!_#'(italic "cresc.")> <bes as des,> <bes as des,>]
    [<bes as des,> <bes as des,> <bes as des,>]
    [<bes g des> <bes g des> <bes g des>] [<bes g es des> <bes g es des> <bes g es des>] |
  [c,( \p )es_. es_.] [as( )es_. es_.] [g( )es_. es_.] [g( )es_. es_.] |
  [as( )es_. es_.] [as( )es_. es_.] [bes'( )es,_. es_.] [bes'( )es,_. es_.] |
  [as( )es_. es_.] [bes'( )es,_. es_.] [c'( )as_. as_.] [d( )as_. as_.] |	%53
  [g( )bes_. bes_.] [g( )bes_. bes_.] [g( )bes_. bes_.] [g( )bes_. bes_.] |
  [g( )bes bes] [g( )bes bes] [g( )es es] [g( )es es] |
  [as( )es es] [as( )es es] [es( )c c] [es( )c c] |
  [f( )des des] [f( )des des] [g( )des des] [des( )des des] |			%57
  [des( )es es] [des( )es es] [c-. es-. as-.] \stemBoth [c-. es-. as-.] \stemDown |
  [c,( )es es] [c( )es es] [bes( )es es] [bes( )es es] |
  [es( )as as] [es( )as as] [es( )bes' bes] [es,( )bes' bes] |
  [es,( )as as] [es( )bes' bes] [as( )c c] [as( )d d] |			%61
  [g,( )bes bes] [g( )bes bes] [g( )bes bes] [g( )bes bes] |
  [g( )bes bes] [g( )bes bes] [g( )es es] [g( )es es] |
  [as( )es es] [as( )es es] [es( )c c] [es( )c c] |
  [f( )des des] [f( )des des] [g( )des des] [des des des] |		%65
 }
 s2*5									%66 - %70
 s4 g4( |
 \stemBoth )as!8 r \stemDown g,4 |
 
 \stemBoth
}


bottom = \notes \relative c {
 \property Voice . TextScript \override #'padding = #2
 \key as \major
 \time 2/4
 \clef bass
 
 as4( des |		%1
 c )g |
 [as8( g f )f'] |
 es4( es, |
 des! )des' |		%5
 c( f, |
 bes, )es |
 as,8 as' as, r |
 < {
  as''16 es as es g es g es |	%9 (1)
  as es as es g es g es |
  as es g es f as, f' as, |
 } \\ {
  as4( des |			%9 (2)
  c )g |
  [as8( g )f f] |
 } >
 es16( g bes es g bes g )bes |
 des,,( g bes des g bes g )des | %13
 < {
  c16 es c es c f c f |
  des f des f bes, es bes es |
  r es g es as8 r |
 } \\ {
  c,8 c f,4( |
  bes )es, |
  as4. r8 |
 } >
 r16 c c c c c c c |		%17
 <c g e> <c g e> <c g e> <c g e> <c as f> <c as f> <c as f> <c as f> |
 <e bes g> <e bes g> <e bes g> <e bes g> <f c as> <f c as> <f c as> <f c as> \clef treble |
 <as f bes,> <as f bes,> <as f bes,> <as f bes,> <as f b,> <as f b,> <as d, b> <as d, b> |
 <g es c> <g es c> <g es c> <g es c> <es as,> <es as,> <es as,> <es as,> |		%21
 r <g es bes> <g es bes> <g es bes> r \clef bass <as, d, bes> <as d, bes> <as d, bes> |
 <g8 es> r r4 |
 bes,,2 |
 es8 r16 bes'( g bes g )es |	%25
 bes4 bes' |
 es,2 ~ |
 es |
 <as4 as,(> des |		%29
 c )g |
 [as8( g f )f'] |
 es4( es, |
 des )des' |			%33
 c( f, |
 bes, )es |
 as,8 as' as, r |
 <as''4 as,> r |		%37
 bes8 ~ \times 2/3 { [bes16 bes( a] [)bes-. bes-.( )as-.] [g-.( f-. )es-.] } |
 as8 r r4 |
 es8 ~ \times 2/3 { [es16 es( d] [)es-. fes-.( )es-.] [des-.( ces-. )bes-.] } |
 as8 r r4 |			%41
 \times 2/3 {
  [<fis'16 dis b a> <fis dis b a> <fis dis b a>] [<fis dis b a> <fis dis b a> <fis dis b a>]
    [<gis e b gis> <gis e b gis> <gis e b gis>] [<gis e b gis> <gis e b gis> <gis e b gis>] |
  [<ais fis e cis> <ais fis e cis> <ais fis e cis>] [<ais fis e cis> <ais fis e cis> <ais fis e cis>]
    [<b gis e b> <b gis e b> <b gis e b>] [<b, b,> <b b,> <b b,>] |
 }
 <e8 e,> r r4 |
 <e e,> r |			%45
 fis8 ~ \times 2/3 { [fis16 fis( eis] [)fis-. fis-.( )e-.] [dis-.( cis-. )b-.] } |
 e8 r r4 |
 \times 2/3 { r16 [f,,!-. as!-.] [ces-. d-. f!-.] } as!8 r |
 \times 2/3 { r16 [f,-. as-.] [ces-. d-. f-.] } as8 r |		%49
 \times 2/3 { r16 [fes-. as-.] } bes!8-. \times 2/3 { r16 [es,-. g-.] } bes8-. |
 <as4 as,(> des |
 c )g |
 [as8( g f )f'] |		%53
 es4( es, |
 des )des' |
 c( f, |
 bes, )es |			%57
 as,8 as' as, r |
 < {
  \times 2/3 {
   [as''16( )es es] [as( )es es] [g( )es es] [g( )es es] |
   [as( )es es] [as( )es es] [g( )es es] [g( )es es] |
   [as( )es es] [g( )es es] [f( )as, as] [f'( )as, as] |	%61 (1)
  }
 } \\ {
  as4( des |
  c )g |
  [as8( g )f f] |		% 61 (2)
 } >
 \times 2/3 { [es16-. g-. bes-.] [es-. g-. bes-.] } es4 |
 \times 2/3 { [des,,16-. g-. bes-.] [des-. g-. bes-.] } des4 |
 c( f, |
 )bes, < { \times 2/3 { [bes16( )es es] [es,( )es' es] } } \\ { es,8 es } > |	%65
 \times 2/3 {
  [as,16 es'-.( )es-.] [es-.( es-. )es-.] [es es es] [es es es] |
  [<es des es,> <es des es,> <es des es,>] [<es des es,> <es des es,> <es des es,>]
    [<es des es,> <es des es,> <es des es,>] [<es des es,> <es des es,> <es des es,>] |
  [<es c as> es-.( )es-.] [es-.( es-. )es-.] [es es es] [es es es] |
  [<es des es,> <es des es,> <es des es,>] [<es des es,> <es des es,> <es des es,>]
    [<es des es,> <es des es,> <es des es,>] [<es des es,> <es des es,> <es des es,>] |	%69
 }
 <es8 c as> r \clef treble <g'4( es> |
 <)as8 as,> r \clef bass <des,4( es,> |
 <)c8 as> r <des,4( es,> |
 <)c16 as> r as, r as4^\fermata \bar "|."	%73
}


\score {
 \notes \context PianoStaff <
  \context Staff = "up" <
   \property Staff.midiInstrument = #"acoustic grand"
   \context Voice = VA { \voiceOne \topmain }
   \context Voice = VB { \voiceTwo \topsecondary }
  >
  \context Staff = "down" <
   \property Staff.midiInstrument = #"acoustic grand"
   \bottom
  >
 >

 \paper {
  \translator{
   \VoiceContext
   \remove Tuplet_engraver
  }
 }
 
 \midi {
  \tempo 4 = 40
  \translator{
   \VoiceContext
   \remove Dynamic_performer
  }
 }
}
