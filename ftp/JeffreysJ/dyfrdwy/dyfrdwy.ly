\version "2.10.2"

globalDyfrdwy = {
  \key a \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \partial 4
  \skip 4*8 \bar "||" \skip 4*8 \bar "||" \break 
  \skip 4*8 \bar "||" \skip 4*5 \partial 4*3 \skip 4*3 \bar "|."
}

globalAmenDyfrdwy = {
  \skip 4*4 \bar "|."
}

saMusicDyfrdwy = {
  \voiceOne <e' cis'>4 <a' e'>4 <b' e'>4 <cis'' e'>4 <e'' a'>4 <a' fis'>4 <cis'' e'>4 <b' e'>4
  <cis'' e'>4 <a' fis'>4 <<{fis'4} \context Voice = altoOne { \voiceTwo fis'8[ e'8]}>> <d'' d'>4 <cis'' e'>4 <<{b'2} \context Voice = altoOne { \voiceTwo fis'4( e'8)[ d'8]}>> <a' cis'>4
  <b' e'>4 <cis'' e'>4 <<{a'4} \context Voice = altoOne { \voiceTwo e'8[ dis'8]}>> <b' e'>4 <gis' e'>4 <<{d''4} \context Voice = altoOne { \voiceTwo a'8[ e'8]}>> <<{cis''4} \context Voice = altoOne { \voiceTwo e'8[ fis'8]}>> <b' gis'>4
  <a' e'>4 <cis'' e'>4 <e'' a'>4 <a' cis'>4 <<{d''8[ \melisma cis''8] \melismaEnd} \context Voice = altoOne { \voiceTwo fis'4}>> <<{b'2} \context Voice = altoOne { \voiceTwo b8([ cis'8] d'4)}>> <a' cis'>4
}

saAmenDyfrdwy = {
  <a' d'>2 <a' cis'>2
}

tbMusicDyfrdwy = {
  <a a,>4 <a cis>4 <gis e>4 <<a4 \\ a4>> <a cis>4 <a d>4 <a a,>4 <gis e>4
  <<a4 \\ a4>> <cis' fis>4 <b d>8[ <ais cis>8] <b b,>4 <a cis>4 <a d>4( <gis e>4) <a a,>4
  <gis e>4 <<a4 \\ a4>> <a fis>4 <gis e>4 <b e>4 <a fis>8[ <b gis>8] <<{cis'8[ dis'8]} \\ {a4}>> <e' e>4
  <cis' a>4 <<a4 \\ a4>> <a cis>4 <a fis>4 <a d>4 <<{a4( gis4)} \\ {e2}>> <a a,>4
}

tbAmenDyfrdwy = {
  <fis d>2 <e a,>2
}

lyrAmen = \lyricmode {
  A -- men.
}
  
verseA = \lyricmode {
  Y Sawl ni rod -- ia, ded -- wydd yw,
  Yn ol drwg ys -- tryw gyng -- hor;
  Ni saif ar ffordd tros -- edd -- wyr ffol,
  Nid eist -- e'n stôl y gwat -- wor.
}

verseB = \lyricmode {
  Ond ei holl serch ef fydd yn rhwydd
  Ar ddeddf yr Ar -- glwydd uch -- od:
  Ac ar ei ddeddf rhydd, ddydd a nos,
  Yn ddidd -- os ei fyf -- yrd -- od.
}

verseC = \lyricmode {
  Fel pren plan -- ed -- ig ar làn dôl
  Ceir ffrwyth am -- ser -- ol ar -- no;
  Ni chrin -- a_'i ddal -- en, a'i holl waith
  A lwydd -- a'n ber -- ffaith idd -- o.
}

\header {
  title = ""
  subtitle = "Dyfrdwy M.S."
  incipit = "51235 13231 64321"
  poet = "Edmund Prys (1543-1623)"
  composer = "John Jeffreys (1718-1798)"
  instrument = "Quartet and Piano"
  lastupdated = "2007-09-07"
  mutopiatitle = "Dyfrdwy"
  mutopiacomposer = "JeffreysJ"
  mutopiainstrument = "Quartet and Piano"
  date = "1839"
  source = "‘Caniadau y Cyssegr,’ J. Roberts, Henllan, 1839, o dan yr enw ‘Glan Dyfrdwy.’"
  style = "Hymn"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Brian M. Ames"
  maintainerEmail = "bmames@apk.net"
  maintainerWeb = "http://junior.apk.net/~bmames"
 footer = "Mutopia-2007/09/11-1033"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\score { 

  \context ChoirStaff <<
    \context Staff = sa { << 
      \clef treble
      {\globalDyfrdwy \globalAmenDyfrdwy }
      \context Voice = VA { \saMusicDyfrdwy \saAmenDyfrdwy }
      \lyricsto "VA" \context Lyrics = lyricsUno {\set stanza = "1." \verseA \lyrAmen}
      \lyricsto "VA" \context Lyrics = lyricsDue {\set stanza = "2." \verseB}
      \lyricsto "VA" \context Lyrics = lyricsTre {\set stanza = "3." \verseC}
    >> }
    \context Staff = tb { << 
      \clef bass
      \globalDyfrdwy
      \context Voice = VC { \tbMusicDyfrdwy \tbAmenDyfrdwy }
    >> }
  >>

  \midi {
    \context {
      \Score tempoWholesPerMinute = #(ly:make-moment 92 4)
    } 
  }
  
  \layout {
    indent = 0.0\pt
    pagenumber = 1
  }
  
}
