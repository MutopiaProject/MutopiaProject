% $Id: ballade_p12.ly,v 1.2 2003/06/05 18:13:21 cve Exp $

PXIIRH= \notes {
\time 4/4
<
\context Voice=struts {
  \property Voice.NoteHead \set #'transparent = ##t
  \property Voice.Stem \set #'transparent = ##t
  \property Voice.Beam \set #'transparent = ##t
  \property Voice.TextSpanner \set #'type = #'dashed-line
  \property Voice.TextSpanner \set #'edge-height = #'(0 . 2.0)
  \property Voice.TextSpanner \set #'edge-text = #'("8" . "")
  \shiftOn

  s1 s1 s1 s1
  s2
  \property Staff.centralCPosition = #-13
  cis'''''2\spanrequest \start "text" 
  \repeat unfold 6 {cis'''''1} cis'''''2 s4...
  cis''''32 \spanrequest \stop "text"
}
\context Voice=AXII {
%1
 <ais4 fis'> r r8 
 <
 \relative c'' {
  fis8 ( g gis | )  a2-\arpeggio a8 e'4 d8|
%3
  cis2 cis8 g'4 fis8 |
  fis8-\arpeggio e4 d8~d8 cis4 b8 |
%5
  d4 ( ) cis4 d8\rest fis ( g gis | ) a2-\arpeggio a8 e'4 d8 |
  cis2 cis8 g'4 fis8 |
%8
  fis^#'(lines "crescendo ed accelerando" "") e4-.-- d8-. ~ d cis4-.-- b8-.-- |
 }
 \relative f' {
  fis8 g gis | <a2 d fis> s8 e'4 d8 |
%
  <cis2 fis ais> s8 g'4 fis8 | <fis b> e4 d8~d cis4 b8 |
%
  <d4 fis ais> cis s8 fis8 g gis |
  <a2 d fis> s8 e'4 d8 | <cis2 fis ais> s8 g'4 fis8 | 
  <fis b> e4 d8~d cis4 b8 |
 }
 >
 \relative g'' {
   <g8 cis g'> <fis4-.-- fis'> <e8-.-- e'8>~<e e'> 
   <dis4-.-- dis'> <cis8-.-- cis'>|
   <a'-\arpeggio ( dis a'> <fisis4 fisis'> <gis8 ) gis'>
   <b-\arpeggio e (b'> <gisis4 gisis'> <ais8 ) ais'> |
   <cis-\arpeggio (fis cis'> <b4 b'> <bis8 ) bis'> 
   <dis2_"rinforz." fis ais dis-^ >~ <dis4 fis ais dis>
 } 
 s8
 <
 \relative d'''' { s16 dis s cis s ais s gis s fis |
   \property Staff.centralCPosition = #-6
  s dis^"precipitato" s cis s dis s cis s ais s gis s ais s gis |
  s fis s dis s fis s dis s cis s ais s cis s ais |
  s gis s fis s dis s cis s ais s cis 
 }
 \relative d''' { f16\rest dis r cis r ais r gis r fis |
  r dis r cis r dis r cis r ais r gis r ais r gis |
  r fis r dis r fis r dis r cis r ais r cis r ais | \clef bass
  r gis r fis r dis r cis r ais r cis 
 }
 >
 r4 | \clef violin
}

\context Voice=BXII {
 %Two voices here to imitate grace notes, which otherwise
 % would cause an ugly break in the left hand arpeggios

 %microflat = #'((font-relative-size . -3) (music "accidentals--1"))
 %microsharp = #'((font-relative-size . -3) (music "accidentals-1"))
 %normalturn = #'(music "scripts-turn")
 s1 |  \tiny
 \tupletNumOff \stemUpS 
 \property Voice.PhrasingSlur \set #'direction = #1 
 \property Voice.Beam \override #'damping = #0
 \relative a'' {
  s4 s8 \times 2/3 { [b16 \( a gis] } s2|
  \property Voice.NoteHead \override #'transparent = ##t
  \property Voice.Stem \override #'transparent = ##t
  \) cis4 s8 
  \property Voice.NoteHead \revert #'transparent
  \property Voice.Stem \revert #'transparent
  \times 2/3 { [d16 \( cis b] } s4.
  \property Voice.NoteHead \override #'transparent = ##t
  \property Voice.Stem \override #'transparent = ##t
  \) fis'8 | s1 s1 | s4.
  \property Voice.NoteHead \revert #'transparent
  \property Voice.Stem \revert #'transparent
  \times 2/3 { [b16 \(a gis] } s2|
  \property Voice.NoteHead \override #'transparent = ##t
  \property Voice.Stem \override #'transparent = ##t
  \) cis4 s8 
  \property Voice.NoteHead \revert #'transparent
  \property Voice.Stem \revert #'transparent
  \times 2/3 { [d16 \( cis b] } s4.
  \property Voice.NoteHead \override #'transparent = ##t
  \property Voice.Stem \override #'transparent = ##t
  \) fis'8
  \repeat unfold 8 {s1}
  
  
 }
}
>
}

PXIILH=\notes {
 \time 4/4
<
\context Voice=CXII {
 \relative d 
 {
  \property Voice.Slur \override #'beautiful = #2.1
  \property Voice.Rest \set #'staff-position = #2
  r8 cis16_3 (fis ais_1 cis_4 fis_2 ais_1 fis cis ais fis )  cis8_. r |
  r d16_5 (fis a d_1 fis_2 a_1 fis_2 d_1 a fis ) d8_. r |
  r cis16 (fis ais! cis fis ais! fis cis ais fis )cis8_. r |
  r e16 (g b e g b g e b g )e8 r |
  r cis16 (fis ais cis fis ais fis cis ais fis )cis8_. r |
  r d16 (fis a d fis a fis d a fis )d8_. r |
  r cis16 (fis ais! cis fis ais! fis cis ais fis )cis8_. r | \stemBothS
  g16 e' g b e g b r gis,, e' gis b d e b' r | 
%9
  a,, e' a cis e g cis r ais,, e' fis cis' e fis e fis |
%10
  bis,, fis' gis dis' fis! gis fis gis cis,, fis ais e' fis ais fis ais |
  dis,, a' bis fis' a bis a bis <e,,, e'> fis' ais cis \clef violin 
  e fis ais cis |
  e fis ais cis d8-.
 }
 <
  \relative c''' { cis16 r ais r gis r fis r dis s |
   cis r ais r cis r ais r gis r fis r gis r fis s | 
   dis r cis r dis r cis r ais r gis r ais r gis s|
   fis r dis r cis r ais r gis r g r fis8 r8 |
  }
  \relative c'' {cis16 s ais s gis s fis s dis s  |
   cis s ais s cis s ais s gis s fis s gis s fis s | \clef bass
   dis s cis s dis s cis s ais s gis s ais s gis s|
   fis s dis s cis s ais s gis s g s fis8 r8 |
  }
 >
}
\context Voice=DXII { \stemDownS
 fis,4 s2. fis,4 s2. fis,4 s2. f,4 s2. 
 fis,4 s2. fis,4 s2. fis,4 s2.
 \repeat unfold 8 {s1}
}
>
}

