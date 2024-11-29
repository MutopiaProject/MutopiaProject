% This was adapted from an open score version, created by Kyle Rother, found at https://imslp.org/wiki/Special:ImagefromIndex/497249/torat
% Kyle's score came with the following header
%
%		This edition was prepared and typeset by Kyle Rother using the 1866 Breitkopf & Härtel Bach-Gesellschaft Ausgabe as primary source. 
%		Reference was made to both the Henle and Bärenreiter urtext editions, as well as the critical and scholarly commentary of Alfred Dürr, however the final expression is in all cases that of the composer or present editor.
%		This edition is in the public domain, and the editor does not claim any rights in the content.
%
% My amendments are minor, and consist of changing the header to match Mutopia style, adding a midi section, and converting from an open to a standard piano score
% This edition is in the public domain, and the editor does not claim any rights in the content.

\version "2.22.1"

\header {
  title = "Fugue 13"
  composer = "Johann Sebastian Bach"
  opus = "BWV 858"
  mutopiatitle = "Well-Tempered Clavier I, Fugue 13"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Harpsichord, Piano"
  date = "1722"
  source = "Bach-Gesellschaft Ausgabe, Band 14, Breitkopf und Härtel, 1866, Plate B.W.XIV, pp.48-49"
  style = "Baroque"
  maintainer = "Alex McGuire"
  maintainerEmail = "cage433@gmail.com"
  version = "2.22.1"
  license = "Public Domain"
  tagline = ##f
}


global = {
  \key fis \major
  \time 4/4
  \accidentalStyle modern-cautionary
}
\include "articulate.ly"

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f

}

soprano = \new Voice \relative c'' {
  \global
  \voiceOne
  
  r8 cis fis eis fis eis16 dis cis8. b32 cis | % m. 1
  dis4 r8 cis b ais gis cis | % m. 2
  ais8 fis16 fis' eis fis gis dis eis fis gis8~ gis16 fis eis dis | % m. 3
  cis16 dis eis bis cis dis eis cis ais bis cis4 bis8 | % m. 4
  cis2~ cis8 cis16 dis eis4 | % m. 5
  fis4 r8 ais,8 gis ais b ais16 gis | % m. 6
  ais16 cis cis ais gis cis cis gis ais8 cis fis4~ | % m. 7
  fis8 eis4 dis16 cis bis8 dis gis4~ | % m. 8
  gis8 fis 16 eis  fis4~ fis8 eis16 dis eis4~ | % m. 9
  eis8 eis dis cis bis gis cis4~ | % m. 10
  cis4~ cis16 cis8 bis16 cis8 cis fis eis | % m. 11
  fis8 eis16 dis cis4 dis r8 cis | % m. 12
  b8 ais gis cis ais ais dis cisis | % m. 13
  dis4 r8 eis fis gis ais fis | % m. 14
  dis4 r8 gis eis4 r8 eis | % m. 15
  dis16 bis cis eis dis bis cis8~ cis16 bis cis4 bis8 | % m. 16
  cis4 r8 bis cis16 eis eis cis bis eis eis bis | % m. 17
  cis8 eis ais4~ ais8 gis16 fis gis4~ | % m. 18
  gis8 fis16 eis fis4~ fis8 fis eis dis | % m. 19
  cisis8 r r4 r8 dis,16 eis fis dis dis fis | % m. 20
  gis16 dis dis gis ais dis, dis ais' b dis, dis b' cisis dis, dis cisis' | % m. 21
  dis4 r16 eis fis gis cisis, b' ais8 fis \prall eis16 dis | % m. 22
  dis8 fis b ais b2~ | % m. 23
  b8 eis, ais gis ais2~ | % m. 24
  ais8 ais gis fis eis4 e!~ | % m. 25
  e16 cis cis e! dis b b dis dis b b dis cis ais ais cis | % m. 26
  cis16 ais ais cis b gis gis b b gis gis b ais b cis gis | % m. 27
  ais8 cis dis e!~ e16 dis cis e dis b b dis | % m. 28
  e!16 b b e fis b, b fis' gis b, b gis' ais b, b ais' | % m. 29
  b8 r r4 r8 dis, gis fisis | % m. 30
  gis8 ais b gis eis cis fis eis | % m. 31
  fis8 eis16 dis cis8. \prall b32 cis dis4 r8 cis | % m. 32
  b8 ais gis cis ais16 cis cis ais gis cis cis gis | % m. 33
  ais8 cis fis2 eis4 | % m. 34
  fis1 \fermata \bar "|." | % m. 35
 
}

mezzo = \new Voice \relative c' {
  \global
  \voiceTwo
  
  R1 | % m. 1
  R1 | % m. 2
  r8 fis cis' bis cis bis16 ais gis8. \prall fis32 gis | % m. 3
  ais4 r8 gis fis eis dis gis | % m. 4
  eis8 cis16 b'! ais b cis gis ais b cis8~ cis16 b ais gis | % m. 5
  fis16 gis ais eis fis gis ais fis dis eis fis4 eis8 | % m. 6
  fis4 r8 eis fis4 r8 ais | % m. 7
  dis16 gis, gis cis ais fis fis ais gis4 r8 bis!8 | % m. 8
  ais4 r8 ais8 gis4 r8 gis | % m. 9
  fis4~ fis16 gis ais fis dis4 r8 gis | % m. 10
  fis8 eis dis dis eis16 gis cis b! ais b cis gis | % m. 11
  ais16 b cis8~ cis16 b ais gis fis gis ais eis fis gis ais eis | % m. 12
  fis4 gis~ gis8 fis r4 | % m. 13
  r8 ais dis cisis dis eis fis dis | % m. 14
  bis8 gis cis bis cis bis16 ais gis8. -\parenthesize \prall fis32 gis | % m. 15 
  ais4 r8 gis fis eis dis gis | % m. 16
  eis16 gis gis eis dis gis gis dis eis4 r8 gisis | % m. 17
  ais4 r8 cis b!4 r8 b | % m. 18
  ais4 r8 ais gis2~ | % m. 19
  gis16 b ais gis fis gis ais eis fis gis ais8 r dis | % m. 20
  dis2. gis,4~ | % m. 21
  gis16 fis gis ais b4 ais8 r16 dis~ dis8 cisis! | % m. 22
  dis8 r r4 r8 dis gis fis | % m. 23
  gis2~ gis8 cis, fis eis | % m. 24
  fis8 cis dis4~ dis16 gis, gis cis cis gis gis b | % m. 25
  ais2 gis | % m. 26
  fis2 eis4 r | % m. 27
  r8 fis b ais b ais16 gis fis8. -\parenthesize \prall e!32 fis | % m. 28
  gis4 r8 fis e! dis cis fis | % m. 29
  dis8 dis gis fisis gis4 r8 ais | % m. 30
  b8 cis dis b gis4 r8 cis | % m. 31
  ais4 r8 ais8 gis16 eis fis ais gis eis fis8~ | % m. 32
  fis16 eis fis4 eis8 fis4 r8 eis | % m. 33
  fis4 r8 ais gis16 dis' dis b gis cis cis b | % m. 34
  ais1 \fermata \bar "|." | % m. 35
  
}

bass = \new Voice \relative c {
  \global
  \voiceThree
  
  R1 | % m. 1
  R1 | % m. 2
  R1 | % m. 3
  R1 | % m. 4
  r8 cis fis eis fis eis16 dis cis8. \prall b32 cis | % m. 5
  dis4 r8 cis b ais gis cis | % m. 6
  fis,8 fis' eis cis fis16 ais ais fis dis fis fis dis | % m. 7
  bis8 cis fis4~ fis16 gis bis gis eis gis gis eis | % m. 8
  cisis16 ais' ais fis dis fis fis dis bis gis' gis eis cis! eis eis cis | % m. 9
  ais16 cis cis ais fis8 fis'~ fis16 fis eis dis cis dis eis cis | % m. 10
  ais16 bis cis ais fis8 gis cis,4 r | % m. 11
  r8 fis'16 gis ais fis fis ais b fis fis b cis fis, fis cis' | % m. 12
  dis16 fis, fis dis' eis fis, fis eis' fis eis dis cis b gis' gis b, | % m. 13
  ais16 fis' fis ais, gis eis' eis gis, fis gis fis eis dis eis fis dis | % m. 14
  gis16 ais gis fis eis fis gis eis ais bis cis8~ cis16 bis ais gis | % m. 15
  fis16 gis ais eis fis gis ais fis dis8 eis16 fis gis8 gis, | % m. 16
  cis8 cis' bis gis cis ais gisis eis | % m. 17
  ais16 cis cis ais fis ais ais fis dis b' b gis eis gis gis eis | % m. 18
  cisis16 ais' ais fis dis fis fis dis b dis dis b gis b b gis | % m. 19
  ais8 ais dis cisis dis cis!16 b ais8. -\parenthesize \prall gis32 ais | % m. 20
  b4 r8 ais gis fis eis ais | % m. 21
  dis, fis gis4~ gis16 eis' fis gis ais8 ais, | % m. 22
  dis16 ais' ais fis dis fis fis dis gis, dis'' dis b gis b b gis | % m. 23
  eis16 gis gis eis cis eis eis cis fis, cis'' cis ais fis ais ais fis | % m. 24
  dis16 fis fis dis b dis dis b cis8 cis, r cis''16 b | % m. 25
  cis8 fis, b ais b eis, ais gis | % m. 26
  ais8 dis, gis fis gis cis, fis eis | % m. 27
  fis16 ais ais fis dis fis fis dis b8 r r b' | % m. 28
  b1~ | % m. 29
  b16 ais gis fis e! cis' cis e, dis b' b dis, cis ais' ais cis, | % m. 30
  b16 cis b ais gis ais b gis cis dis cis b ais b cis ais | % m. 31
  dis16 eis fis8~ fis16 eis dis cis b cis dis ais b cis dis b | % m. 32
  gis8 ais16 b cis8 cis, fis fis' eis cis | % m. 33
  fis16 ais ais fis dis fis fis dis b8 gis cis cis, | % m. 34
  fis1 \fermata \bar "|." | % m. 35
   
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI
\score {
  \articulate
  \new PianoStaff <<
    \new Staff="up" \with {midiInstrument = #"harpsichord"}
    << \global \clef treble \soprano \mezzo    >>
    \new Staff="down" \with {midiInstrument = #"harpsichord"}
    << \global \clef bass   \bass    >>
  >>  
  \midi { \tempo 4=72 }
  
}


\score {
  \new PianoStaff 
  <<
    \new Staff = "up" 
      <<\soprano \mezzo>>
    
    \new Staff = "down" 
      { \clef bass \bass }
      
  >>
  
  \layout { }

}
