%Finnish Folk Song: Aamulla varhain
\version "2.10.20"
\header {
dedication = "To my dear grand-mother"
title = "Aamulla varhain"
subtitle = "Kansanlaulu"
composer = "Finnish folk song"
arranger = "Arr. Tanja Kivi"
copyright = "Public Domain"
mutopiacomposer = "Traditional" 
mutopiainstrument = "Voice and Piano"
style = "Folk"
maintainer = "Tanja Kivi"
source = "Transcription"
 footer = "Mutopia-2007/08/07-1020"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
<<
  \new ChordNames \chordmode { \set chordChanges = ##t
%chords in fis \minor
fis2:m d a cis:m fis:m b:m cis fis:m a d:7 gis:7 cis fis:m b:m cis fis:m }
  \new Staff { \override Staff.TimeSignature #'style = #'() \clef treble \time 4/4 \key fis \minor 
%melody
\bar "|:" fis'4 fis'8 fis'8 fis'4 e'8 dis'8 e'4 e'8 e'8 e'4 cis'4\breathe 
fis'4 gis'8[ gis'8] a'8[ a'8] gis'8[ gis'8] cis'4 eis'4 fis'2\breathe 
a'8[ a'8 a'8 a'8] a'8[ a'8] gis'8( [ fis'8)] gis'8 gis'4 gis'8 gis'4 cis'4\breathe
a'4 gis'8 gis'8 gis'4 fis'8 fis'8 cis'4 eis'8 eis'8 fis'2 \bar ":|" }
%lyrics 
  \addlyrics { \set stanza = "1. "
Aa4 -- mul8 -- la8 var4 -- hain8 kun8 au4 -- rin8 -- ko8 nou4 -- si,4
kun4 mi8 -- na8 u8 -- nes8 -- ta8 -- ni8 he4 -- ra4 -- sin,2
sy8 -- da8 -- me8 -- ni8 o8 -- li8 niin4 su8 -- rus4 -- ta8 ras4 -- kas;4 
mik4 -- si8 sa8 kul4 -- ta8 -- ni8 hyl4 -- ja8 -- sit8 mun?2 }
  \addlyrics { \set stanza = "2. "
En4 -- ka8 ma8 tah4 -- to8 -- nut8 us4 -- ko8 -- a8 lain4 -- kaan 4
noi4 -- hin8 _8 sil8 -8 mii8 -- si8 si4 -- ni4 -- siin,2
mut8 -- ta8 kun8 tie8 o8 -- li8 ol-lut4 niin8 _4 _8  pit4 -- ka4 
mo4 -- nis8 -- ta8 mur4 -- heis8 -- ta8 lu4 -- pa8 -- uk8 siin.2 }
  \addlyrics { \set stanza = "3. "
Yo4 o8 -- li8 kau4 -- nis8 ja8 aa4 -- ne8 -- si8 hel4 -- la,4 
kai4 -- ken8 _8 nah8 -8 da8 sain8 uu4 -- des4 -- taan.2 
Rie8 -8 mui8 -- ten8 an8 -8 noin_ma4 sie-8 lu4 -- ni8 sul4 -- le.4
Mik4 -- si8 _8 si_ta4 et8 _8 huo4 -- li8 -- nut-8 kaan?2 }
  \addlyrics { \set stanza = "4. "
Mik4 -- si8 sa8 hyl4 -- ja8 -- sit8 toi8 -8  sen4 tah4 -- den,4 
mik4 -- si8 mun8 u8 -- ne8 -- ni8 _8 lop4 -- pua4 sai?2
Sy8 -- da8 -- me8 -- ni8 on8 -8 nyt4 su8 -- rus4 ta8 ras4 -- kas,4 
kun4 si8 -- na8 kul4 -- ta8 -- ni8 hyl4 -- ja8 -- sit8 mun.2 }
>>

\layout {}
\midi {}
}
