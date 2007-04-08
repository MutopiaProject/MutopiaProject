\version "2.8.6"

#(set-global-staff-size 17) 

\header {
 title = "Alas! and Did My Savior Bleed?"
 composer = "James Banks"
 poet = "Isaac Watts"
 
 mutopiatitle = "Alas! and Did My Savior Bleed?"
 mutopiacomposer = "BanksJK"
 mutopiapoet = "Isaac Watts"
 mutopiaopus = ""
 mutopiainstrument = "Voice (SATB)"
 source = "Original Composition"
 copyright = "Public Domain"
 style = "Hymn"
 maintainer = "James Banks"
 maintainerEmail = "foreclosers (at) gmail.com"
 lastupdated = "2006/Sep"
 footer = "Mutopia-2006/09/07-813"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopranoNotes = \relative { 
 \time 3/4
 \key g \minor
 \clef treble
 \set Staff.midiInstrument = "voice oohs"

  \tempo 4 = 120
  \partial 4*1 bes'4 
  a2 f4
  g2 a4
  bes( a) g
  d'2 a4
% 5
  bes c2
  c2 ees4
  d2.~
  d2 a4 
  bes2 f4
% 10
  g2 g4
  g2 f4
  g2 a4
  bes2 a4
  g2 f4
% 15
  g2.~
  g4 r a
  a2 a8( bes)
  c4( d) ees
  bes( a) bes
% 20
  d2 g,4
  g( a) g
  f2 c4
  d2.(
  f2) g4
  f4( g) a
  bes2 bes4
  ees2 c4
  d2 d4
  d2 d4
  d2 d4
  d2.~
  \partial 2*1 d2
}

altoNotes = \relative { 
 \time 3/4
 \key g \minor
 \clef treble
 \set Staff.midiInstrument = "voice oohs"


  \partial 4*1 g'4 
  g4 f2
  g2 f4
  bes( bes) bes
  f2 f8( g)
% 5
  ees4 ees2
  g2 g4
  f2.~
  f2 f4 
  g2 f4
% 10
  g2 d4
  ees2 c4
  d2 g4
  g4 g2
  d2 ees4
% 15
  bes2.~
  bes4 r a'
  g2 a4
  a4( f) g 
  g( f) ees
% 20
  f2 ees4
  g( a) g
  f2 c4
  d2.(
  c2) c4
% 25
  c4( ees) ees
  d4 g2
  c,4( d) c
  d2 bes'4
  g4 d2
  ees2 d4
  g,2.~
  \partial 2*1 g2
}

tenorNotes = \relative { 
 \time 3/4
 \key g \minor
 \clef bass
 \set Staff.midiInstrument = "voice oohs"


  \partial 4*1 d4 
  d4 c2
  bes2 a4
  g( a) bes
  d2 d4
  ees2 ees4
  d2 bes4
  d2.(
  c2) bes8( a) 
  g4 a2
  bes2 bes4
  c4( d) c
  bes2 a4
  bes4 c2
  d,2 f4
  g2.~
  g4 r d'
  d2 f4
  f2 ees4 
  d2 d4
  d2 ees4
  d2 a4
  g4 g2
  g2.(
  g2) a4
  a4( d) c
  d4 bes2
  a4( bes) c
  d2 f4
  ees2 d4
  c2 bes4
  g2.~
  \partial 2*1 g2
}

bassNotes = \relative { 
 \time 3/4
 \key g \minor
 \clef bass
 \set Staff.midiInstrument = "voice oohs"


% 1
  \partial 4*1 g,4 
  g'2 f4
  ees2 f4
  ees4 ees2
  f2 c4
% 5
  d4( c) a
  bes4( c) d
  a'2.(
  d,2) f,4 
  g2 a4
% 10
  bes2 c4
  c4 a'2
  g2 f4
  ees2 bes'4
  d,2 f4

% 15
  g,2.~
  g4 r f
  f'2 ees8( d)
  c4( d) ees 
  d4( c) bes 
  bes2 g'4
  ees4 f2
  d4 ees2
  d2.(
  a2) c4
  c4( bes) a
  g2 g'4
  f4( ees) d
  bes2 bes'4
  bes4( g) bes
  f2 f4
  g2.~
  \partial 2*1 g2
}

sopranoEnd = \relative {
 \time 3/4
 \clef treble
 \set Staff.midiInstrument = "voice oohs"
 \key g \minor

 \tempo 4 = 60
 \partial 4*1 fis4
 fis2 fis8( g)
 a2 a4
 bes4 a g
 fis2 e4
 ees2 ees4
 g2 ees4
 d2.~
 d2 fis4
 fis4.( g8) fis( g)
 a2 a4
 d2 bes4
 a2 a4
 c2 c4
 bes2 a8( g)
 a2.~
 a2 a4
 g2 f4
 f4 g2
 e2.(^\fermata
 fis2.)^\fermata
}

altoEnd = \relative {
 \time 3/4
 \clef treble
 \set Staff.instrument = ""
 \set Staff.midiInstrument = "voice oohs"

 \partial 4*1 d4
 d2 d4
 d4 c2
 d4 d d
 d2 d4
 c2 c4
 bes4 a2
 d2.~
 d2 d4
 d4 c2
 a2 d4
 f2 f4
 f2 fis4
 e2 e4
 ees2 e4
 d2.~
 d2 d4
 c2 c4
 f2 e4
 d2.~
 d2.
}

tenorEnd = \relative {
 \time 3/4
 \key g \minor
 \clef bass
 \set Staff.instrument = ""
 \set Staff.midiInstrument = "voice oohs"


 \partial 4*1 a4
 a2 a4
 a4 a2
 a4 a a
 a2 a4
 a2 a4
 g2 g4
 fis2.~
 fis2 a4
 a2 a8( g)
 a2 a4
 bes2 bes4
 a2 a4
 g2 g4
 bes2 c8( bes)
 bes4( a2
 fis2) d4
 ees4 g2
 a2 a4
 bes2.(
 a2.)
}

bassEnd = \relative {
 \time 3/4
 \clef bass
 \set Staff.midiInstrument = "voice oohs"

 \partial 4*1 d,4
 d2 d4
 d2 d4
 d4 d d
 d2 d4
 d2 d4
 d2 d4
 d2.(
 a2) d4
 d2 d4
 d2 d4
 bes2 c4
 f2 d4
 c2 g4
 g4 a2
 bes2 c4
 d2 d4
 c2 c4
 d2 ees4
 g2.(
 d2.)
}

verseOne = \lyricmode { 
\set stanza = "1. " A -- las! and did my Sav __ ior bleed?
And did my Sov' -- reign die? Would He de -- vote that sa --
cred head For such a worm as I? Was it for __ crimes __ that
I __ have done He groaned __ u -- pon the tree? A -- maz __
ing pi -- ty! grace un -- known! And love be -- yond de --
 gree! }

verseTwo = \lyricmode { 
\set stanza = "2. " Well might the sun in dark -- ness
hide, And shut his glo -- ries in, When Christ, the migh -- 
ty Mak -- er, died For man, the crea -- ture's sin.
Thus might I __ hide __ my blu __ shing face  While His __
dear cross a -- ppears; Di -- ssolve __ my heart in thank --
ful -- ness and melt mine eyes to tears. }

verseLast = \lyricmode { \set stanza = "3. "
But drops of __ grief can ne -- ver
re -- pay The debt of love I owe:  Here, Lord, __ I __ give
my -- self a -- way, 'Tis all that I can do! __ 'Tis all that
I can do. }

\score {
{
<<
\context Staff = TrebStaff 
  << 
  \context Voice = SVoice {
    \voiceOne \sopranoNotes 
    }
  \context Voice = AVoice {
    \voiceTwo \altoNotes
    }
  >>
\context Lyrics = verseone \lyricsto SVoice \verseOne
\context Lyrics = versetwo \lyricsto SVoice \verseTwo 
\context Staff = BassStaff
 <<
 \context Voice = TVoice {
  \voiceOne \tenorNotes
  }
 \context Voice = BVoice {
  \voiceTwo \bassNotes
  }
 >>
>>

<<
\context Staff = TrebStaff 
  << 
  \context Voice = SeVoice {
    \voiceOne \sopranoEnd 
    }
  \context Voice = AeVoice {
    \voiceTwo \altoEnd 
    }
  >>
\context Lyrics = lastverse \lyricsto SeVoice \verseLast

\context Staff = BassStaff
 <<
 \context Voice = TeVoice {
  \voiceOne \tenorEnd 
  }
 \context Voice = BeVoice {
  \voiceTwo \bassEnd 
  }
 >>
>>
}

 \midi { \tempo 4 = 120 }
 \layout { }
 }
