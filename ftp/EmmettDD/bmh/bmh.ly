\version "2.4.2"
% Oh! Boatman, Haste!
% Transcribed directly from the second edition for the Mutopia Project.
\header 
{
  mutopiatitle = "Oh! Boatman, Haste!"
  mutopiacomposer = "EmmettDD"
  mutopiapoet = "G. P. Morris (1802-1864)"
  mutopiainstrument = "Voice, Piano"
  date = "1843"
  source = "Atwill, 1843"
  style = "Song"
  copyright = "Public Domain"
  maintainer = "Rob J Platt"
  maintainerEmail = "rob.j.platt@gmail.com"
  lastupdated = "2005/Jan/07"

  title = "Oh! Boatman, Haste!"
  subtitle = "A Popular Western Refrain"
  subsubtitle = "The Music arranged from Emmett's Melody of Dance, Boatman, Dance"
  poet = "Words by G. P. Morris Esq. (1802-1864)"
  dedication = "The Poetry written and respectfully dedicated to Mrs.~Charles~F.~Dennet, of Boston, by George P. Morris."
  composer = "Daniel Decatur Emmett Esq. (1815-1904)"
  arranger = "Arranged by George Loder Esq. (1816-1868)"
  meter = "Andante con molto esspressione"
  
  
  footer = "Mutopia-2005/01/07-516"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}

% Other information:
% The lithographers were Thayer & Co. Boston
% (Benjamin W. Thayer Esq was born 1814 died 1875)

%%%%%%%%%%%%%%%%%%%%%%%%
%                      %
%     Identifiers      %
%                      %
%%%%%%%%%%%%%%%%%%%%%%%%

% For this particular piece, the default volume levels associated with
% dynamics pp, p, mf, f give unsettling jumps in the volume of the midi output.
% As a compromise, define a new list with the volume fractions closer together.
#(define my-absolute-volume-alist '())
#(set! my-absolute-volume-alist
      (append 
      '(
	("sf" . 1.00)
	("fffff" . 0.95)
	("ffff" . 0.90)
	("fff" . 0.80)
	("ff" . 0.70)
	("f" . 0.61)
	("mf" . 0.56)
	("mp" . 0.53)
	("p" . 0.50)
	("pp" . 0.43)
	("ppp" . 0.30)
	("pppp" . 0.20)
	("ppppp" . 0.10)
	)
      my-absolute-volume-alist))

% This is the procedure which finds the volume fraction for a given dynamic.
% It is used in the midi block at the end of the file
#(define (my-dynamic-absolute-volume s)
  (let ((entry (assoc s my-absolute-volume-alist)))
    (if entry
	(cdr entry))))

% Used for cross staff stems in the piano part:
stemExtend = \once \override Stem #'length = #15
noFlag = \once \override Stem #'flag-style = #'no-flag
% Used to tweak the positions of dynamics to properly centre them
% (the usual way of centring dynamics didn't work very well):
smallNudgeDynamic = \once \override DynamicText #'extra-offset = #'(0 . -0.5)
bigNudgeDynamic = \once \override DynamicText #'extra-offset = #'(0 . -0.8)
nudgeCresc = \once \override DynamicLineSpanner #'padding = #0.2
nudgeAfterCresc = \once \override DynamicText #'extra-offset = #'(0 . 0.4)

soloVerseA = \relative c'' {
  r4 r8 bes8\p
  c8 c bes8. g16
  c8 c bes bes
  c8 c bes g		    
  bes8. aes16 g8 bes
  c8 c bes g
  c8. c16 bes8 g
  d'8. c16 bes8 g
  bes8 bes g8.\fermata f16
  g8.^\markup{ Animato. } ees16 f8 g
  bes4. c8
  bes8 ees, f g
  ees2
  g8^>\f r16 ees16 f8 r16 g
  bes8 bes ees,\fermata ees16\p ees
  g8 bes16 bes f8 g
  ees4 ees8 r8
}

soloVerseB = \relative c'' {
  r4 r8 bes\p
  c8 c bes8. g16
  c8 c bes bes
  c8 c bes g		    
  bes8. aes16 g8 bes
  c8 c bes g
  c8. c16 bes8 g
  d'8.^> c16 bes8 g
  bes8 bes g8.\fermata f16
  g8.\pp ees16 f8 g
  bes4. c8
  bes8 ees, f g
  ees2
  g8.\f ees16^\markup{ Lentando. } f8 g8
  bes8 bes ees,\fermata ees16\p ees
  g8 a16 bes f8 g
  ees4 ees8 r8
}

soloVerseC = \relative c'' {
  r4 r8 bes\p
  c8 c bes8. g16
  c8 c bes bes
  c8 c bes g		    
  bes8. aes16 g8 bes
  c8. c16 bes8 g
  c8. c16 bes8. g16
  d'8.^> c16 bes8 g
  bes8. bes16 g8.\fermata f16
  g8. ees16 f8 g
  bes4. c8
  bes8 ees, f g
  ees2
  g8.^>\f ees16 f8^> g
  bes8 bes ees,\fermata << { \context Voice = solo ees8\turn\fermata } \\
			   { s16 \grace { f16 } } >>
  g8 a16 bes f8 c'16 bes
  ees,8.[( \grace g16 f16)] ees4
}

soloChorusA = \relative c'' {
  ees4\f ees8 r8
  f8 ees c4
  ees,16\p[( g)] c bes g8 bes16 bes
  f8 bes g4
  
  ees'4\pp ees4
  f8 ees bes4\fermata
  g16^"Ad lib."[( bes)] ees a, c16[( bes)] ees, f
  g8 g16.[(\fermata f32)] ees4
}

soloChorusB = \relative c'' {
  ees4\mf ees8 r8
  f8 ees c4
  ees,16\p[( g)] c bes g8 bes16 bes
  f8 bes g4
  
  ees'4\pp ees4
  f8 ees bes4\fermata
  g16^"Ad lib."[( bes)] ees a, c16^>[( bes)] ees, f
  g8 g16.^>[(\fermata f32)] ees4
  \pageBreak
}

soloChorusC = \relative c'' {
  ees4\f ees8 r8
  f8^> ees c4
  ees,16[( g)] c bes g8 bes16 bes
  f8 bes g4
  
  ees'4 ees4
  f8^> ees bes4\fermata
  g16[( bes)] ees a, c16[( bes)] ees, f
  g8 g16.[(\fermata f32)] ees4
}

firstTenorAB = \relative c'' {
  c4\f c
  c8 c aes4
  g8\p r8 bes r8
  d8 d ees4
  ces4\pp ces
  bes8 bes ees4\fermata
  ees8^\markup { Colla voce. } r8 bes8 r8
  bes8 bes\fermata bes4
  R2*4
}

firstTenorC = \relative c'' {
  ees4\f ees
  c8 c ees4
  bes8 r8 bes8 r8
  bes8 bes bes4
  c4 ces
  bes8 bes8 ees4\fermata
  ees8^\markup { Colla voce. } r8 ees8 r8
  ees8 d\fermata ees4
}

secondTenorAB = \relative c'' {
  aes4\f aes
  aes8 aes ees4
  ees8\p r8 g r8
  aes8 aes g4
  aes4\pp aes
  g8 g g4\fermata
  g8^\markup { Colla voce. } r8 g8 r8
  bes8 aes\fermata g4
  R2*4
}

secondTenorC = \relative c'' {
  g4\f g
  aes8 aes aes4
  g8 r8 g8 r8
  aes8 aes g4
  aes4 ees4
  g8 g g4\fermata
  g8^\markup { Colla voce. } r8 g8 r8
  bes8 aes\fermata g4
}

bassAB = {
  aes,4\f aes,
  aes,8 aes, aes,4
  bes,8\p r8 bes, r8
  bes,8 bes, ees4
  aes,4\pp aes,
  ees8 ees ees4\fermata
  bes,8^\markup { Colla voce. } r8 bes,8 r8
  bes,8 bes,\fermata << \context Voice = Bass { \stemUp ees4 } \\
			{ \tiny \stemDown ees,4 } >>
  R2*4
}

bassC = {
  ees4\f ees
  aes,8 aes, aes,4
  bes,8 r8 bes,8 r8
  bes,8 bes, ees4
  aes,4 aes,
  g,8 g,
  << { \tiny \stemUp ees4 } \\
     \context Voice = Bass { \stemDown ees,4\fermata } >>
  bes,8^\markup { Colla voce. }  r8 bes,8 r8
  bes,8 bes,\fermata
  << { \tiny \stemUp ees4 } \\
     \context Voice = Bass { \stemDown ees,4\fermata } >>
}

pianoChorusUpAB = {
  r16\f c ees aes c aes ees c
  r16 c ees aes c aes ees c
  bes16\p ees g ees bes ees g ees
  aes,16 d f d g, bes ees bes
  \dynamicUp
  \change Staff = down ees,16^>\pp aes \change Staff = up
  \dynamicNeutral
  ces ees
  \change Staff = down ees,^> aes \change Staff = up
  ces ees
  \change Staff = down ees,16^> g bes \change Staff = up ees
  \change Staff = down ees,^> g bes \change Staff = up ees
  ees8^\markup{ "Colla voce."  } r8 ees8 r8
  <bes ees g>8 <aes bes d>8\fermata <g bes ees>4
				% Lead-in to next verse
  \smallNudgeDynamic <c' ees>4\f <c ees>4
  << {\bigNudgeDynamic f8\p ees bes4} \\ { <g bes>4 g } >>
  ees'16 d c bes a bes ees, f
  << { g8.^> f16 ees8 } \\ { d4 ees8 } >> r8
}

pianoPartUp = \relative c'' {		   
  << \phrasingSlurUp {bes4.\( aes8 g8 f ees d\)} \\
     {\smallNudgeDynamic r8\p <es g> <d f> <c es>}>>
  \bigNudgeDynamic ees4^>\pp es8. es16
  ges8^> f es4
  \setTextCresc \nudgeCresc
  <ees g ees'>4\< <g ees'>8. <g ees'>16
  <g f'>8 <g ees'> <ees g bes>4
  ees16 g c bes a bes g ees
  << {g8.^> f16 ees8} \\ {d4( ees8)} >> \bar "||" \nudgeAfterCresc r8\!\p
				% End of Introduction
  r8 <aes, c ees>8 r8 <g bes ees>8
  r8 <aes c ees>8 r8 <g bes ees>8
  r8 \skip 8 * 3
  \slurUp f'4( ees8) r8
  c4 bes8 ees
  c8 d ees4
  <aes, c>4 <bes ees>8 r8
  \skip 8 * 3 r8
  \bigNudgeDynamic
  ees16\pp\stemUp \change Staff = down g, bes \change Staff = up ees
  d aes ees' bes
  f'16 aes, d ees f d \change Staff = down bes aes
  g16 bes \change Staff = up ees \change Staff = down bes
  aes c bes d
  g,16 bes \change Staff = up ees g
  ees \change Staff = down bes g bes \change Staff = up
  ees16\f \change Staff = down g, bes \change Staff = up ees
  <d f> \change Staff = down bes \change Staff = up
  <ees g> \change Staff = down bes \change Staff = up
  <d f>16 \change Staff = down bes \change Staff = up
  <d f> \change Staff = down bes \change Staff = up ees8\fermata
  \bigNudgeDynamic r8\p
  r16 bes <ees g> bes r16 bes <aes d> bes
  r16 g <bes ees g> g <g bes ees>4
  \pianoChorusUpAB
  \bigNudgeDynamic r16\p aes,-. <c ees>-. aes-. r16 g-. <bes ees>-. g-.
  r16 aes-. <c ees>-. aes-. r16 g-. <bes ees>-. g-.
  r16 \change Staff = down fis \change Staff = up <c' ees>
  \change Staff = down fis, \change Staff = up
  r16 \change Staff = down g \change Staff = up <bes ees>
  \change Staff = down g \change Staff = up
  r16 aes <bes d> aes g bes ees g
  \once \override DynamicText #'extra-offset = #'(-1 . 0.3)
  <c ees>16-|\pp ees,-| <aes ees'>-| ees-|
  <g ees'>-| ees-| <bes' ees>-| ees,-|
  <c' ees>16-| ees,-| <aes ees'>-| ees-|
  <g ees'>-| ees-| <bes' ees>-| ees,-|
  r16 <c' ees>-. <ees aes>-. <aes c>-. r16 <bes, ees>-. <ees g>-. <g bes>-.
  r16 <aes, d>-. <aes d f>-. <aes d bes'>-. <g ees'>8\fermata r8
  ees16 \change Staff = down g, bes \change Staff = up
  ees d aes ees' bes
  f'16 aes, d ees f d \change Staff = down bes aes
  g16 bes \change Staff = up ees \change Staff = down bes
  \change Staff = up f' c g' d
  ees16 \change Staff = down bes g bes \change Staff = up     
  ees16 \change Staff = down bes g bes \change Staff = up
  << { bes16^\mf ees g ees des ees g ees } \\ { bes4 bes } >>
  << { des16 ees g ees } \\ { bes4 } >> <ces ees>8\fermata r8
  <ees g>16 bes <ees g> bes <d f> aes <d f> aes
  ees'16 g, bes g' <g, ees'>4
  \pianoChorusUpAB
  r8 <aes, c ees>8 r8 <g bes ees>8
  r8 <c ees>8 r8 <bes ees>8
  r8 <c ees>8 r8 ees8
  \slurUp f4( ees8) r8
  c4 bes8 ees
  c16 bes c d ees4
  <aes c>4 <bes ees>8 r8
  \skip 8 * 3 r8
  ees,16 \change Staff = down g, bes \change Staff = up
  ees d aes ees' bes
  f'16 aes, d ees f d \change Staff = down bes aes
  g16 bes \change Staff = up ees \change Staff = down bes
  \change Staff = up f' c g' d
  ees16 \change Staff = down bes g bes \change Staff = up     
  ees16 \change Staff = down bes g bes \change Staff = up
  bes16\f ees g ees  bes ees g ees
  bes16 ees g ees <aes, ees'>8\fermata <a ees'>8\fermata
  <ees' g>16 bes <ees g> bes <d f> aes <d f> aes
  ees'16 g, bes g ees' g, bes ees
				% Chorus - third and final time
  r32\f \change Staff = down g, bes \change Staff = up ees g ees
  \change Staff = down bes g \change Staff = up
  r   \change Staff = down g bes \change Staff = up ees g ees
  \change Staff = down bes g \change Staff = up
  r32 \change Staff = down aes \change Staff = up c ees aes ees c
  \change Staff = down aes \change Staff = up
  r   \change Staff = down aes \change Staff = up c ees aes ees c
  \change Staff = down aes \change Staff = up
  r32 \change Staff = down g bes \change Staff = up ees g ees
  \change Staff = down bes g \change Staff = up
  r   \change Staff = down g bes \change Staff = up ees g ees
  \change Staff = down bes g \change Staff = up
  r32 \change Staff = down aes bes \change Staff = up d f d
  \change Staff = down bes aes \change Staff = up
  r   \change Staff = down g bes \change Staff = up ees g ees
  \change Staff = down bes g \change Staff = up
  r32 c ees aes c aes ees c r ces ees g c aes ees ces
  r32 bes ees g bes g ees bes r
  \change Staff = down g bes \change Staff = up ees
  <ees g>8\fermata
  <bes ees g>8 r8 <bes ees g>8 r8
  <bes ees g>8 <aes bes d>8\fermata <bes ees>4
  <c' ees>4 <c ees>4
  << {f8 ees bes4} \\ { <g bes>4 g } >>
  ees'16 d c bes a bes ees ees,
  << { g8. f16 ees8 } \\ { d4 ees8 } >> r8
}

pianoChorusDownAB = {
  <aes, ees aes>4\f <aes, ees aes>4
  <aes, ees aes>4 <aes, ees aes>4
  bes,8\p r8 bes,8 r8
  bes,4 <ees, ees>8 r8	    
  \once \override DynamicText #'transparent = ##f
  <aes,, aes,>4\pp <aes,, aes,>4
  ees,4 ees,4
  << { \noFlag \stemExtend g8 \skip 8 \noFlag \stemExtend g8 \skip 8 } 
     \\ { g,8 r8 g,8 r8 } >>
  g,8 g,8\fermata ees,4
				% Lead-in to next verse
  aes,16\f ees aes c' aes, ees aes c'
  <ees g>16\p bes ees' bes <ees g> bes ees' bes
  <bes, ees g>8 r8 r4
  <bes, aes>^>( <ees g>8) r8
}

pianoPartDown = {
  r2\p
  <bes d'>8 <aes c'> <g bes> <f aes>
  <a, c>16\pp fis aes fis <a, c>16 fis aes fis
  <a, c>16 f aes f <a, c>16 f aes f
  <bes, ees>16 g bes g <bes, ees>16 g bes g
  <bes, ees>16 g bes g <bes, ees>16 g bes g
  <bes, g bes>2
  \slurDown <bes, aes>4_>( <ees g>8) r8\p
				% End of Introduction
  <ees, ees>8 r8 <ees, ees>8 r8
  <ees, ees>8 r8 <ees, ees>8 r8
  << { \skip 8 <fis c'>8 <g bes>8 \change Staff = up ees' } \\
     { \skip 8 * 3 \stemUp \noFlag \stemExtend g } \\
     { \stemDown ees,4 ees,} >>
  << { \stemExtend <aes bes>4\( ~ \noFlag \stemExtend <g bes>8\) } \\
     { <bes, d>4( <ees, ees>8) } >> r8
  << { aes8 f g4 } \\ { <ees, ees>2 } >>
  << { \noFlag \stemExtend aes8\noBeam \noFlag \stemExtend f
       \stemExtend g4 } \\ { <ees, ees>2 } >>
  aes,4 g,8 r8
  << { <aes bes>4 <g bes>8\fermata } \\
     { <f, d>4 <ees, ees>8\fermata} >> r8
  \stemDown <ees, ees>2\pp
  \stemDown <ees, ees>2
  \stemDown <ees, ees>2
  \stemDown <ees, ees>2
  << { \skip 8 * 2 \noFlag \stemExtend aes16 \skip 16
       \noFlag \stemExtend g16 \skip 16 } \\
     { \context Voice = downvoice <ees, ees>8\f r8 bes,8 ees8 } >>
  << { \noFlag \stemExtend aes16 \skip 16
       \noFlag \stemExtend aes16 \skip 16
       \noFlag \stemExtend g } \\
     { <bes,, bes,>4 <c, c>8\fermata } >> r8\p
  <bes,, bes,>8 r8 <bes,, bes,>8 r8
  ees8 ees,8 <ees, ees>4
  \pianoChorusDownAB
  <ees, ees>8\p r8 <ees, ees>8 r8
  aes,8 r8 <ees, ees>8 r8
  a,4 bes,
  bes,4 <ees, ees>8 r8
  <aes, aes>8-|\pp <aes c'>-| <ees bes>-| <ees g>-|
  <aes, aes>8-| <aes c'>-| <ees bes> <ees g>
  <aes, aes>8 <aes c'> <g, g> <g bes>
  <f, f>8 <f bes> <ees bes>\fermata r8
  <ees, ees>2
  <ees, ees>2
  <ees, ees>8 g, aes, bes,
  ees,2
  \once \override DynamicText #'transparent = ##f
  <ees,-> ees>4_\mf <ees,-> ees> ~
  <ees, ees>4 <aes, ees>8 r8
  bes,8 r8 bes,8 r8
  ees8 ees, ees4
  \pianoChorusDownAB
  <ees,\p ees>8 r8 <ees, es>8 r8
  aes,8 r8 g, r8
  << {s8 \noFlag \stemExtend fis8 s8 \noFlag \stemExtend <g bes>8 } \\
     {a, r8  bes8 r8} >>
  << { \stemExtend <aes bes>4\( ~ \noFlag \stemExtend <g bes>8\) } \\
     { <bes, d>4( <ees, ees>8) } >> r8
  << { bes8 f g4 } \\ { <ees, ees>2 } >>
  << { \noFlag \stemExtend bes8\noBeam \noFlag \stemExtend f
       \stemExtend g4 } \\ { <ees, ees>2 } >>
  aes,4 g,8 r8
  << { <aes bes>4 <g bes>8\fermata } \\
     { <f, d>4 <ees, ees>8\fermata} >> r8
  <ees, ees>2
  <ees, ees>2
  <ees, ees>8 g, aes, bes,
  ees,2
  <ees, ees>4\f <des, des>^>
  <des, des>4( <c, c>8\fermata) <b, fis>\fermata
  bes,8 r8 bes,8 r8
  <ees, ees>4 ees,8 r8
				% Chorus - third and final time
  <ees, ees>4\f <ees, ees>4
  <aes, ees>4 <aes, ees>4
  bes,,8 r8 bes, r8
  bes,4 <ees, ees>4
  <aes, aes>4 <aes, aes>4
  << { \skip 8 * 3 \noFlag \stemExtend <g bes>8 } \\
     { <g, g>4 <ees, ees>4 } >>
  bes,8 r8 bes,8 r8
  g,8 g,8\fermata << { \stemExtend g4 } \\ { ees,4 } >>
  aes,16 ees aes c' aes, ees aes c'
  <ees g>16 bes ees' bes <ees g> bes ees' bes
  <bes, ees g>8 r8 r4
  <bes, aes>( <ees g>8) r8 \bar "|."
}

soloPoetry = \lyricmode {	   
  Oh! boat -- man haste! __ the twi -- light hour Is
  clo -- sing gen -- tly o'er the lea! The
  sun, whose se -- tting shuts the flow'r, His
  look'd his last up __ on the sea! Oh!
  row, then, boat -- man, row! Oh!
  row, then, boat -- man, row!
  Row! __ A ha! __ We've moon and star! And our
  skiff with the stream is flow __ ing,

  Heigh __ ho! Ah! heigh __ ho!
  E __ cho re -- sponds to my sad heigh __ ho!
  Heigh __ ho! Ah! heigh __ ho!
  E __ cho re -- sponds to my sad heigh __ ho!

  Oh! boat -- man, haste! __ the sen __ try calls The
  mid -- night hour on yon __ der shore! And
  silv' __ ry sweet the e __ cho falls As
  mus __ ic drip -- ping from the oar! Oh!
  row, then, boat -- man, row! Oh!
  row, then, boat -- man, row!
  Row __ A __ far Sail moon and star! While our
  skiff with the stream is flow __ ing,

  Heigh __ ho! Ah! heigh __ ho!
  E __ cho re -- sponds to my sad heigh __ ho!
  Heigh __ ho! Ah! heigh __ ho!
  E __ cho re -- sponds to my sad heigh __ ho!

  Oh! boat -- man, haste! the morn -- ing beam Glides
  through the flee __ cy clouds a __ bove! So
  breaks, on life's dark murm' __ ring stream, The
  ro __ sy dawn of wo -- man's love! Oh!
  row, then, boat -- man, row! Oh!
  row, then, boat -- man, row!
  Row! __ 'Tis day! __ A __ way, a __ way To
  land with the stream we are flow __ ing!

  Heigh __ ho! Dear one, ho!
  Beau -- ty re -- sponds to my glad heigh -- ho!
  Heigh __ ho! Dear one, ho!
  Beau -- ty re -- sponds to my glad heigh -- ho!
}

chorusPoetryAB = \lyricmode {
    Heigh __ ho! ah heigh __ ho!
    Heigh __ ho! ah heigh __ ho!
    Heigh __ ho! ah heigh __ ho!
    Heigh __ ho! ah heigh __ ho!
}

chorusPoetryC = \lyricmode {
    Heigh __ ho! Dear one, ho!
    Heigh __ ho! ah heigh __ ho!
    Heigh __ ho! Dear one, ho!
    Heigh __ ho! ah heigh __ ho!
}

%%%%%%%%%%%%%%%%%%%%%%%
%                     %
%     Score block     %
%                     %
%%%%%%%%%%%%%%%%%%%%%%%
\score {
  <<
    
    \new Staff <<
      \context Voice = "solo" \with {
	\consists Ambitus_engraver
      } {
	\set Staff.instrument = \markup { \center-align < "Solo" > }
	\set Staff.instr = "solo"
	\clef treble
	\key ees \major
	\autoBeamOff \dynamicUp
	R2*7
	\soloVerseA
	\soloChorusA
	R2*3
	\soloVerseB
	\soloChorusB
	R2*3
	\soloVerseC
	\soloChorusC
	R2*4
      }
      \context Lyrics = soloLyrics { s1 }
    >>

    \lyricsto "solo" \context Lyrics = soloLyrics \soloPoetry

    \context ChoirStaff = "chorus"  <<

      \context Voice = FirstTenor \with {
	\consists Ambitus_engraver
      } {
	\set Staff.instrument = \markup { \center-align < "1st Tenor" > }
	\set Staff.instr = "T. I"
	\clef treble
	\key ees \major
	\autoBeamOff \dynamicUp
	R2*24
	\firstTenorAB
	R2*16
	\firstTenorAB
	R2*16
	\firstTenorC
	R2*4
      }
      \context Lyrics = FirstTenorLyrics { s1 }

      \context Voice = SecondTenor \with {
	\consists Ambitus_engraver
      } {
	\set Staff.instrument = \markup {
	  \center-align < \caps { "Chorus" }
			  "2nd Tenor" \caps { "Ad Libitum." } >
	}
	\set Staff.instr = "T. II"
	\clef treble
	\key ees \major
	\autoBeamOff \dynamicUp
	R2*24
	\secondTenorAB
	R2*16
	\secondTenorAB
	R2*16
	\secondTenorC
	R2*4
      }
      \context Lyrics = SecondTenorLyrics { s1 }
    
      \context Voice = Bass \with {
	\consists Ambitus_engraver
      } {
	\set Staff.instrument = \markup { \center-align < "Bass" > }
	\set Staff.instr = "B."
	\clef bass
	\key ees \major
	\autoBeamOff \dynamicUp
	R2*24
	\bassAB
	R2*16
	\bassAB
	R2*16      
	\bassC
	R2*4
      }   
      \context Lyrics = BassLyrics { s1 }

    >>

    \lyricsto "FirstTenor" \context Lyrics = FirstTenorLyrics \lyricmode {
      \chorusPoetryAB
      \chorusPoetryAB
      \chorusPoetryC
    }
    \lyricsto "SecondTenor" \context Lyrics = SecondTenorLyrics \lyricmode {
      \chorusPoetryAB
      \chorusPoetryAB
      \chorusPoetryC
    }
    \lyricsto "Bass" \context Lyrics = BassLyrics \lyricmode {
      \chorusPoetryAB
      \chorusPoetryAB
      \chorusPoetryC
    }

% Define both piano staves before putting notes in them,
% so that notes can cross over from one stave to the other:
    \new PianoStaff \with {
      % Usually fix at #7 for piano staves, but need more space
      % for the many staff crossings, and for dynamics/articulations
      \override VerticalAlignment #'forced-distance = #9
    } <<
      \set PianoStaff.instrument = \markup {
	\center-align < "Piano" "Forte." >
      }
      \set PianoStaff.instr = "pf."
      \context Staff = "up" {
	\skip 2 * 36
      }
      \context Staff = "down" {
	\skip 2 * 36
      }
    >>

% Now fill the upper staff of the piano part
    \context Staff = "up" \new Voice {
      \clef treble
      \key ees \major
      \time 2/4
      \pianoPartUp
    }

% And now fill the lower staff of the piano part
    \context Staff = "down" \context Voice = "downvoice"
    {
      \override DynamicText #'transparent = ##t
      \clef bass
      \key ees \major
      \pianoPartDown
    }
  >>

  \layout {
    \context {
      \RemoveEmptyStaffContext
      \override RemoveEmptyVerticalGroup #'remove-first = ##f
    }
  }
  \midi {
    \context {
      \Voice
      % Tweak the midi volumes as explained at the beginning of this
      % file. Comment the next line out for the default volumes:
      dynamicAbsoluteVolumeFunction = #my-dynamic-absolute-volume
    }
    \tempo 4=78
  }
}
