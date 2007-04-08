% -*- LilyPond -*-

\version "2.2.2"

\header {
    title = "Air"
    subtitle = "from Suite No.3 in D, BWV 1068"
    composer = "J.S. Bach"
    opus = "arr. Ross Keenum"

 mutopiatitle = "Air, from Suite No.3 in D"
 mutopiacomposer = "BachJS"
 mutopiaopus = "BWV 1068"
 mutopiainstrument = "Brass, Trombone"
 source = "Mutopia Project"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Ross Keenum"
 maintainerEmail = "rosskeenum@gmail.com"
 lastupdated = "2004/November/26"

 tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
 footer = "Mutopia-2004/11/26-461"
}
%%%%%%%%%%%% Keys, Time, Repeats%%%%%%%%%%%%%%%%%

global = \notes {
    \time 4/4
}
Key = \notes { \key d \major }
#(set-global-staff-size 16)
% ------Alto Bone------
alto = \notes {
	 \Key
       \repeat volta 2 {d'1 ~ d'4 b cis' \grace b8( a4) \noBreak
       a'2 ~ a'16 fis' c'( b) e'( dis') a'( g') \break
       g'2 ~ g'16 e' b( a) d'( cis') g'( fis') 
       a2 ~ a8 gis16 a b8 gis \noBreak }
       \alternative { {a8 a4 gis8 e2} {a8 a4 gis8 e2} }
       \repeat volta 2 {cis'4 ~ cis'16[ d'32 cis' b cis' a16]
       a'4. c'8 b8 b' ~ b'16
       a'16 g' fis' g'4 ~ g'32[ fis'( e' d') cis'16 b]
       ais16 b cis'8 ~ cis'16 d' e'8 ~ e'16 fis' g'8 ~ g' fis' \break
       e'16 d' cis' b cis'[( d'32 e') d'8] b2 d'4 ~ d'16 fis' e' d'
       b'4 ~ b'8 a'16 gis' \grace fis'8( e'16) a' a4 gis8 a2 ~ a8
       b16 c' b cis' d'8 ~ d' cis'16 b cis' dis' e'8 ~ e'
       dis'16 cis' dis' e'  fis'8 g'2 a4 ~ a16 cis' e' g' g' e'
       fis'8 ~ fis'8. g'32 a' \break
       d'4 ~ d'16 fis' a' c'' b'4. d'8 cis'16 e'
       g'4 d'8 a[ e'16 fis'32 g'] ~ g'16 fis'8 e'16 d'32[ cis' b8 cis'16]
       d'8( cis'16) d'16 d'2
}
}
alto = {
        \global
        \set Staff.midiInstrument = "trombone"
        \set Staff.instrument = #"Trombone I"
        \clef alto
        \context Staff <<
                \alto
        >>
}
% -------Tenor Bone 1----    
tenor1 = \notes {
       \Key
       \repeat volta 2 {fis'1 ~ fis'8 b'16 g' \grace fis'8( e'16) d' cis' d'
       a2 ~ a8 c'16 b c'8 a'16 c' b8 r8 r4 b8 e'16 d' e' fis' g' e' a8
       r8 r4 fis'4. gis'16( a') d'8[ d'32 e' fis'16] ~ fis'
       e'16 e'( d')}
       \alternative { {cis'16[ b b32 cis' d'16] ~ d'8 cis'16 b a2} 
       {cis'16[ b b32 cis' d'16] ~ d'8 cis'16 b a2} } \break
       \repeat volta 2 {a2 ~ a16 b c'8 ~ c'16 b a g fis4.
       b8 e e' d' d cis cis' b b, ais, b, cis ais,
       b,8 g e fis b, b a a, e4 fis b,8 e16 fis gis a b8 ~ b[ a]
       b8.[( cis'32 d')] cis'8. b16 a4 \break
       d'4. fis'16( e') e'4.
       g'16( fis') fis'4. a'16( g') r16 dis'16 e' b e4 ~ e16 cis e a
       cis'8 a ~ a cis'16 d' d4 ~ d8 e fis4 d2
       e16( b, e g) b( a g fis) e8 a4 g8 a4 g16( fis g8) fis2
}
}
tenor1 = {
        \global
        \set Staff.midiInstrument = "trombone"        
        \set Staff.instrument = #"Trombone II"
        \clef tenor
        \context Staff <<
                \tenor1
        >>
}
% --------Tenor Bone 2----
tenor2 = \notes {
       \Key
       \repeat volta 2 {d8 d' cis' cis b, b a a, g, g gis gis, e2 ~ e8
       dis4 e8 fis r8 r4 e8 b4 e8 e r8 r4
       d4. e8 fis d b e ~}
       \alternative { {e8 fis b e cis2} {e8 fis b e cis2} }
       \repeat volta 2 {e2 ~ e8 dis16 e fis4 ~ fis16 g16 a g 
       dis8 dis' e'2 ~ e' ~ e'16 d' cis' 
       b16 ais b cis'8 b b b ais fis2 b,8 b a16 gis a8 gis8. fis16
       e4 ~ e8 e fis e e8. d16 cis d fis cis fis,8 fis g g, gis, gis
       a8 a, ais, ais b b, e e' d' d a g fis e d4 a ~ a8 g a4
       g2 ~ g8 b e'4 ~ e'16 d' cis' b a8 b fis4 e8 a a2
}
}
tenor2 = {
        \global
        \set Staff.midiInstrument = "trombone"        
        \set Staff.instrument = #"Trombone III"
        \clef bass
        \context Staff <<
                \tenor2
        >>
}
% ---------Bass Bone-------
bass = \notes {
       \Key
       \repeat volta 2 {a2 b b,4 e a,8 a g g, fis, fis e e, dis, dis b, b
       e,8 e d d, cis, cis a, a d d' cis' cis b, b gis e}
       \alternative { {a8 d e e, a,16( b, cis d e g fis e)} {a8 d e e, a,2} }
       \repeat volta 2 {a,8 a g g, fis, fis e e, dis, dis fis b,
       b4 b, cis16( d e fis) g( fis g e) fis8 e16 d cis8 fis
       fis8 e16 d g8 fis16 e d2 gis,8 gis fis fis, e, e d d, cis, cis d e a, a g g,
       a,8 d4 b,8 ~ b, e4 cis8 ~ cis fis4 dis8 b,4 ~ b,16 b g e cis8 cis' a cis'
       d'8 d c c' b b, a, a g g, fis, fis e e, d, d cis a, d g a g a a, d,2
}
}
bass = {
        \global
        \set Staff.midiInstrument = "trombone"        
        \set Staff.instrument = #"Bass Trombone"
        \clef bass
        \context Staff <<
                \bass
        >>
}

\score {
<< 
        \context StaffGroup = quartet <<
                \context Staff = alto \alto
                \context Staff = tenor1 \tenor1
                \context Staff = tenor2 \tenor2
                \context Staff = bass \bass
        >>
>>
      \paper {}
      \midi { \tempo 8=85 }
}
