\version "2.18.2"

\header {
  title =  "Nocturne"
  composer = "John Field"
  opus = "H.37"
  mutopiatitle = "Nocturne"
  mutopiacomposer = "FieldJ"
  mutopiaopus = "H.37"
  mutopiainstrument = "Piano"
  date = "1817"
  source = "Neue Musik-Zeitung, 1889"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Alex Schreiber"
  maintainerEmail = "alexschreiber AT gmx DOT de"
  lastupdated = "2016-10-05"
  moreInfo = "Nocturne No.5 in B-flat major"

 footer = "Mutopia-2016/10/06-2137"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}


%\paper {
%  top-margin = 8\mm
%  bottom-margin = 9\mm
%  top-system-spacing.basic-distance = #12
%  ragged-last-bottom = ##f
%}

#(set-global-staff-size 16.8)


originalBreaks = {
  \repeat unfold 3 {s1. \noBreak}
  \break
  \repeat unfold 4 {s1. \noBreak}
  \break
  \repeat unfold 4 {s1. \noBreak}
  \break
  \repeat unfold 4 {s1. \noBreak}
  \break
  \repeat unfold 3 {s1. \noBreak}
  \break
  \repeat unfold 3 {s1. \noBreak}
  \break    % page break  
  \repeat unfold 4 {s1. \noBreak}
  \break
  \repeat unfold 4 {s1. \noBreak}
  \break
  \repeat unfold 4 {s1. \noBreak}
  \break
  \repeat unfold 4 {s1. \noBreak}
  \break
}
originalBreaks = {}   % comment out this line to obtain the original line breaks.

rightNotes = \relative c'{
  \clef treble
  \key bes \major
  \time 12/8
  f'2.-4(_\markup{\dynamic p \italic cantabile}^\markup { \large "Andante." } e4. g4. 
  f4.~ f4 d8 f4.) r4 r8
  d2.( es4. c4. 
  bes4. ~ bes4 d16 c bes4.) r4 r8
  d2.(\< e4. a,4. 
  f'2. e4. d4.\! 
  c2.\> d4. e4.\!   
  f4.) r8 f'->(\pp a,) r bes->( d,) r es->( a,)
  \grace bes16~ <bes f'>2.->(\mf <bes e>4. <bes g'>4.)
  <<{f'4.( ~ f4 d8 f4.) r4 r8}\\{bes,4.~ bes~ bes s}>> 
  d2.( es4. c4.   
  bes4. ~ bes4 d16 c bes4.) r4. 
  es2.( \cresc d4. ~ d4 es8 
  d4.-> c2.) c8( d16 c b c 
  f4.\> es4 c8 bes4.)\! c\<   
  des2.(\sf\> ~ des4.\dim c) 
  f( es4 c8 bes4. d4\> c8\! 
  bes) <<{e,-.(\pp f-. fis-. g-. gis-. a-.\< bes-. b-. c-. cis-. d-.\!) 
	  es-.\>( d-. c-. b-. c-. d-.\!) es-.( d-. c-. b-. c-. f-.) 
	  bes, e,-.\>( f-.\! fis-. g-. gis-. a-._\markup{\italic cresc.} bes-. b-. c-. cis-. d-.)}\\
	 {d, d d d d d d d d d d 
	  <es a> <es a> <es a> <es a> <es a> <es a> <es a> <es a> <es a> <es a> <es a> <es a> 
	  d d d d d d d d d d d d}>>  
  <es a es'>-.( <es a d>-. <es a c>-. <es a b>-.\dim <es a c>-. <es a d>-.) <es a es'>-.( <es a d>-. <es a c>-. <es a b>-. <es a c>-. <es a f'>-.)    \pageBreak
  <d bes'> r4 <f d'>8-> r4 <d bes'>4.-> f8\<( bes d\!
  f2.\mf e4. g4. 
  f4. ~ f4 d8\> f\!) f16\p( c'8 bes a16 g f e es 
  d2. es4. c4.)   
  bes4.( ~ bes8 a16 bes d c bes4.) r4. 
  d2.\<( e4. a,4.\!) 
  f'2. \times 6/8 {e8\>( f bes a g f e d\!} 
  c2. d4. e 
  f) r8\pp f\<( a,) r f'( bes,) r f'( as,\!) 
  \grace g~ <g f'>4.->\mf( ~ f'8 ~ f16 e g f es4. d 
  c d) es f 
  d2.( c4. g)   
  bes2.( a4.) r8 f'( e 
  es2. d4. des 
  c8) fis16\p( g bes a g8) fis'16\pp( g bes a g8) r r c,,\p( d16 c b\< c 
  f4.\! ~ f8 es c bes4. d4\> c8\!   
  bes) <<{e,-.( f-. fis-. g-. gis-.\< a-. bes-. b-. c-. cis-. d-.\!)}\\{d, d d d d d d d d d d}>>
  <es a es'>-.( <es a d>-. <es a c>-. <es a b>-.\>-. <es a c>-. <es a d>-. <es a es'>-. <es a d>-. <es a c>-. <es a b>-.\! <es a c>-. <es a f'>-.)
  <d bes'> <d e>-.\pp( <d f>-. <d fis>-.\< <d g>-. <d gis>-. <d a'>-. <d bes'>-. <d b'>-. <d c'>-. <d cis'>-. <d d'>-.\!)   
  <es a es'>-.\>-.( <es a d>-. <es a c>-. <es a b>-. <es a c>-. <es a d>-. <es a es'>-. <es a d>-. <es a c>-. <es a b>-. <es a c>-. <es a f'>-.\!) 
  <d bes'> d'\p( es) f-.( <e g>-. <es a>-.) <d bes'> r \dim r <<{d-.( c-. f,-.)}\\{ f e es}>> 
  <d bes'> r\pp r \clef bass f,-._\markup{\italic ritard.} ( <b, f' g>-. <c es f a>-.) <bes d f bes>4. ~\arpeggio <bes d f bes>8 r r   
  \bar "|."
}

leftNotes = \relative c{
  \clef bass
  \key bes \major
  bes8 d'( bes f' d bes g cis bes e cis bes) 
  bes, d'( bes f' d bes f d' bes f' d bes) 
  bes, d'( bes f' d bes ges c a es' c a) 
  bes, d'( bes f' d bes f d' bes f' d bes) 
  bes, d'( bes f' d bes) a, cis'( a g' cis, a) 
  d, d'( a f' d a) b, d'( as f' d as) 
  c, bes'( g e' bes g) c, bes'( g e' bes g) 
  
  f f'( a, es f' c d, f' bes, c, es' f,) 
  bes, d'( bes f' d bes g cis bes e cis bes) 
  bes, d'( bes f' d bes f d' bes f' d bes) 
  bes, d'( bes f' d bes ges c a es' c a)
  bes, d'( bes f' d bes f d' bes f' d bes) 
  g es'( bes g' es bes f d' bes f' d bes)
  e,( c' bes g' c, bes e, g' bes, es, f' a,) 
  d,( f' bes, es, c' g f d' bes f es' a,) 
  e des'( bes g' des bes) e,( g' bes,) es,( ges' a,)
  
  <<{ d,4. es f f}\\
    {d8( f' bes,) es,( c' g) f( d' bes) f( es' a,)}>>
  
  <bes d> <bes, f' bes>-.( <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-.) 
  <bes f'>-.( <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-.)
  <bes f'> <bes f' bes>-.( <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-.) 
  <bes f'>-.( <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-.) 
  
  <bes f'> r r <bes f' bes>\arpeggio-> r r <bes f' bes>4.-> r4. 
  <<{s2. g'4. s}\\{bes,8 d'( bes f' d bes g cis bes e cis bes)}>>
  bes, d'( bes f' d bes f d' bes f' d bes) 
  <<{s2. ges4. s}\\{bes,8 d'( bes f' d bes ges c a es' c a) }>>
  bes, d'( bes f' d bes f d' bes f' d bes) 
  bes, d'( bes f' d bes) a, cis'( a g' cis, a) 
  d, d'( a f' d a) bes, d'( g, f' d g,) 
  <<{s2. as4. g}\\{c,8 c'( a f' c a) as( f' b, g c bes) }>>
  <<{ f4. es8 s4 d8 s4 c8 r4}\\
    {f8( f' a,) es( f' c) d,( f' bes,) c,( f' f,)}>> 
  b, d'( g, f' d g,) c, es'( g, f d' as) 
  g es'( c g f' b, c g' es <a, c> f' c) 
  bes, d'( bes f d' bes es, c' bes e, c' bes) 
  f( d' bes f' d bes f c' a f') r r 
  g,( es' bes <ges ges'> es' bes f d' bes f' des bes) 
  e,( c' bes g' c, bes) e,( c' bes es, f' a,) 
  d,( b' as es c' g f d' bes f es' a,) 
  <bes d> <bes, f' bes>-.( <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-.) 
  <bes f'>-.( <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-.)
  <bes f'> <bes f' bes>-.( <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f' bes>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-. <bes f'>-.) 
  <bes ges'>-.( <bes ges'>-. <bes ges'>-. <bes ges'>-. <bes ges'>-. <bes ges'>-. <bes ges'>-. <bes ges'>-. <bes ges'>-. <bes f'>-. <bes f'>-. <bes f'>-.) 
  <bes f'> r r \clef treble d''-.( c-. f,-.) bes \clef bass d,,( es) 
  <<{f-.( g-. a-.)}\\{f,4.}>> 
  <bes bes'>8 d,( es) f-.( f-. f-.) <bes, f'>4. ~\arpeggio <bes f'>8 r r
}

on = \sustainOn
off = \sustainOff
pedalOne = {s1\on s4 s8 s8 \off}
pedalHalf = {s2\on s8 s8 \off}
pedalQuarter = {s4\on s8 \off  }
pedalThreeQuarter = {s1\on s8 s4. \off  }
pedalTwo = {\pedalHalf \pedalHalf}
pedalThree = {\pedalHalf \pedalQuarter \pedalQuarter}
pedalFour= {\pedalQuarter \pedalQuarter  \pedalQuarter \pedalQuarter }
pedal = {\pedalTwo \pedalOne \pedalTwo
         \pedalThreeQuarter \pedalTwo \pedalTwo \pedalOne
	 \pedalThree \pedalTwo \pedalThreeQuarter \pedalTwo
	 \pedalOne \pedalTwo \pedalThreeQuarter \pedalFour
	 \pedalThreeQuarter s1. \pedalOne
	 \pedalOne \pedalOne \pedalOne   % pageBreak
	 s4. s8\on s4 \off s4.\on s4. \off \pedalTwo s2. \on s2. \off \pedalTwo
	 \pedalThreeQuarter \pedalTwo \pedalTwo \pedalThree
	 \pedalHalf \pedalQuarter s4. \pedalThree \pedalQuarter s1 s8 \pedalTwo
	 \pedalHalf s2\on s4\off s4.\on s4.\off s4.\on s4.\off \pedalHalf s2. \pedalFour
	 \pedalOne \pedalOne \pedalOne
	 s1\on s8\off \pedalQuarter s1. s2. \pedalHalf }

\score  
{
  \new PianoStaff  <<
    \set PianoStaff.instrumentName = "Piano  "
    
    \new Staff = "rightNotes" \originalBreaks \rightNotes
    \new Staff = "leftNotes" \leftNotes 
    \new Dynamics = "pedal" \pedal
  >>
  \layout {}
  \midi {}
}
