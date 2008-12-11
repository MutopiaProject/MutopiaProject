\version "2.10.33"
%{  comment out the "paper" section for Mutopia
\paper {
    #(set-paper-size "letter")
    top-margin = 0.25\in
    bottom-margin = 0.25\in
    left-margin = 0.75\in
    line-width = 7.25\in
}
%}
\header {
    title = "Chromatic Fantasy and Fugue, BWV 903"
    composer = "Joh. Seb. Bach"
    mutopiatitle = "Chromatic Fantasy and Fugue, BWV 903 (Fantasy)"
    mutopiacomposer = "BachJS"
    mutopiaopus = "BWV 903"
    mutopiainstrument = "Harpsichord"
    mutopiadate = "1730"
    style = "Baroque"
    source = "BachGesellschaftAusgabe 1890"
    copyright = "Public Domain"
    maintainer = "Greg Louis"
    maintainerEmail = "greg.at.bgl.discardthispart.nu"
 footer = "Mutopia-2008/12/10-1603"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%   This .ly file contains alternative expression of ornaments and
%    of chords intended to be arpeggiated.  By default these are shown as
%    written in the original BachGesellschaftAusgabe source, each
%    ornament or chord being enclosed in %{1%} ... %{1-%} to identify
%    it as having an alternate.  Each such structure is preceded by a more
%    fully written out version enclosed in a comment of the form
%    %{2 ... 2-%} to facilitate switching between concise and extended
%    versions by simple search-and-replace commands, e.g:
%      sed -i -e '/^% /! s/%{2../%{2%}/g' -e '/^% /! s/..2-%}/%{2-%}/g' \
%             -e '/^% /! s/%{1%}/%{1../g' -e '/^% /! s/%{1-%}/..1-%}/g' \
%             nameofthisfile
%    switches to the fully-articulated forms, and running the same
%    command with 2 and 1 interchanged restores the concise texts.
%    The next line shows which form is in effect presently:

     %{1%} active = "no_dots" %{1-%} %{2.. active = "no_dots" ..2-%}

%{  The need to create the fully-articulated forms (which are rather ugly
    on paper) arises from lilypond's inability to express ornamentation
    in the .midi files it produces.  When a .midi file is generated from
    the compact form, the ornamentation is lost, and the present fantasy
    is a good example of why that is undesirable: manually editing all
    of the arpeggiations into the .midi file is a pig of a job.         %}

#(set-global-staff-size 18)

% c'' is c~525
upper = \relative c'' {
    \override Score.RehearsalMark #'break-align-symbol = #'key-signature
    \override Score.RehearsalMark #'self-alignment-X = #left
    \clef treble
    \key d \minor
    \time 4/4
    \override Staff.TimeSignature #'style = #'default
    \once \override TextScript #'padding = #2
    \mark \markup { \hspace #0 \raise #1.5 \bold "Fantasia" }
    \set tupletSpannerDuration = #(ly:make-moment 1 8)
     
r32 d,_( e f g a b cis d c bes a g f e d) cis^( d e f g a bes e) r4  | %upper 1

r16 a,32^( b cis d e f g f e d cis b a64 g f e) d32^( e f a cis d f16) r4 | % 2

<< { \times 2/3 { r16 d f } \times 2/3 { r d g } \times 2/3 { r d a' }
   \times 2/3 { r d, bes' } \times 2/3 { r cis, e } \times 2/3 { g bes g }
   \times 2/3 { e cis a } r8 }
\\ { d,8 e f g a16 r r8 r \times 2/3 { g16 f e } } >>                     | % 3

<< { \times 2/3 { r16 f' d } \times 2/3 { r g d } \times 2/3 { r a' d, }
     \times 2/3 { r bes' d, } cis16 r r8 r8 \times 2/3 { bes16 cis e } }
   \\ { d,8 e f g \times 2/3 { r16 bes g } \times 2/3 { e cis a }
     \times 2/3 { cis e g } r8 } >>                                       | % 4

<< { \times 2/3 { r16 e' f } bes8 \times 2/3 { r16 d, e }
     a8 \times 2/3 { r16 cis, d } g8 \times 2/3 { r16 b, cis } f8 }
   \\ { d8 \times 2/3 { r16 d g, } c8 \times 2/3 { r16 c f, }
	bes8 \times 2/3 { r16 bes e, } a8 \times 2/3 { r16 a d, } } >> %upper 5

<< { \times 2/3 { r16 bes' ees } \times 2/3 { r a, d }
     \times 2/3 { r g, cis } \times 2/3 { r a d } \times 2/3 { r f, bes }
     \times 2/3 { r e, a } \times 2/3 { r f bes } \times 2/3 { r e, a } }
\\ { g8 f e f d cis d cis } >>                                            | % 6

<< { \times 2/3 { r16 f bes } \times 2/3 { gis f d } \times 2/3 { r d f }
     \times 2/3 { gis b d, } \times 2/3 { r ees a } \times 2/3 { fis ees c }
     \times 2/3 { r c ees } \times 2/3 { fis a c, } } \\ { d8 r s2. } >>  | % 7

\times 2/3 { r16 d g } \times 2/3 { f e d } \times 2/3 { r d b' }
    \times 2/3 { f e d } \times 2/3 { r cis e } \times 2/3 { f d gis, }
    \times 2/3 { r cis e } \times 2/3 { f d gis, }                        | % 8
    \times 2/3 { r c f } \times 2/3 { dis c a } \times 2/3 { r a c }
    \times 2/3 { dis fis a, } \times 2/3 { r bes e } \times 2/3 { cis bes g }
    \times 2/3 { r g bes } \times 2/3 { cis e g, }                        | % 9

s2 s8 \times 2/3 { cis16 e cis } s4                                 | %upper 10
s1                                                                       | % 11

s2 \times 2/3 { r16 cis e } \times 2/3 { r e g } \times 2/3 { r g bes }
   \times 2/3 { r bes cis }                                              | % 12

\times 2/3 { r16 bes cis } \times 2/3 { g' f e } \times 2/3 { r cis e }
    \times 2/3 { bes' a g } \times 2/3 { r bes, cis } \times 2/3 { g' f e }
    \times 2/3 { r cis e } \times 2/3 { bes' a g }                       | % 13

\times 2/3 { r a, cis } \times 2/3 { d e f } \times 2/3 { r cis d }
    \times 2/3 { f g a } \times 2/3 { f e d } \times 2/3 { cis bes a }
    \times 2/3 { g f e } r8                                              | % 14

\times 2/3 { r16 g cis } \times 2/3 { e d cis } \times 2/3 { r e, g }
    \times 2/3 { bes a g } \times 2/3 { r g cis } \times 2/3 { e d cis }
    \times 2/3 { r e, g } \times 2/3 { bes a g }                    | %upper 15

\times 2/3 { r cis, d } \times 2/3 { f g a } \times 2/3 { r f gis }
    \times 2/3 { a cis d } \times 2/3 { r a cis } \times 2/3 { d e f }
    \times 2/3 { r cis d } \times 2/3 { f gis a }                        | % 16

\times 2/3 { b gis a } \times 2/3 { b d, e } \times 2/3 { f b, c }
    \times 2/3 { d gis, a } \times 2/3 { b d, e } \times 2/3 { f b,c d }
    \times 2/3 { gis, a b } \times 2/3 { cis d }                         | % 17
    
\times 2/3 { cis e d } \times 2/3 { cis b a } \times 2/3 { g r r }
    r8 \times 2/3 { r16 f' e } \times 2/3 { d bes a }
    \times 2/3 { g r r } r8                                              | % 18

\times 2/3 { r16 g' f } \times 2/3 { e s s } \times 2/3 { bes' a g }
    \times 2/3 { s s d' } \times 2/3 { cis b s } \times 2/3 { s f' e }
    \times 2/3 { d cis b } \times 2/3 { gis' f e }                       | % 19
    
\times 2/3 { d cis e } \times 2/3 { a e cis } \times 2/3 { e cis a }
    \times 2/3 { cis a e } \times 2/3 { a e cis }
    \times 2/3 { e cis a } r8
%{2.. a''64 gis a gis a16 ..2-%} %{1%} a''8\mordent %{1-%}          | %upper 20

r32 e, f g a b cis d e f g a bes a g f e f g f e d cis d e d cis b a g bes a

g f e f g f e d cis d e d cis s32 s16 s2                                 | % 22
s1                                                                       | % 23

s4 g32 a b cis d e f g f g a e f cis d a s4                              | % 24

s4 b32 f' e d gis f e b' a gis d' c b f' e d gis16^( a64 gis fis gis
  %{2..gis a gis a \times 2/3 { gis64 a gis } ..2-%}
  %{1%} gis16.\trill %{1-%} fis64 gis)                              | %upper 25

\times 2/3 { a16 d a } \times 2/3 { f a f } \times 2/3 { d f d }
    \times 2/3 { a d a } \times 2/3 { f a f } \times 2/3 { d f d } s4    | % 26

s8 \times 2/3 { s16 f a } \times 2/3 { d a f } s8
%{2..
    s \times 2/3 { s16 e g } \times 2/3 { bes e bes } \times 2/3 { g e s }
..2-%}
%{1%}
    <e g bes e>2_"arpeggio..."
%{1-%}                                                                   | % 27

%{2..
    s8 \times 2/3 { s16 f a } \times 2/3 { d f d } \times 2/3 { a f s } s8
    \times 2/3 { s16 a c } \times 2/3 { ees fis ees } \times 2/3 { c a s }
..2-%}
%{1%}
    <f a d f> <a c ees fis>
%{1-%}                                                                   | % 28

%{2..
    s8 \times 2/3 { s16 g bes } \times 2/3 { d g d } \times 2/3 { bes g s } s8
    \times 2/3 { s16 b d } \times 2/3 { f gis f } \times 2/3 { d b s }
..2-%}
%{1%}
    <g bes d g> <b d f gis>
%{1-%}                                                                   | % 29

% next line includes bar 30 and 1st beat of bar 31
%{2..
     s64. << { s64. a'32. a32 bes a g a
         \times 6/7 { a32 bes a bes a bes a } g32 a }
         \\ { s64 e64.~ e8.\noBeam r4 } \\ { s64. s64 s4.. }
         \\ { s128 cis32~ cis8.\noBeam s4 } \\ { s64. s64 s4.. }
         \\ { a64~ a64.~ a8.\noBeam s4 } >>
     s64. << { s64. bes'64~ bes8.~\noBeam bes4~ | bes32[ a g f] s8 }
          \\ { s64 g64.~ g8.~\noBeam g4 | s8 e32[ f g d] } \\ { s64. s64 s4.. s4 }
          \\ { s128 e32~ e8.~\noBeam e4 | s4 } \\ { s64. s64 s4..  s4 }
          \\ { cis64~ cis64.~\noBeam cis8.~\noBeam cis4 | s4 } >>
..2-%}
%{1%}
    << { a'16. a32 bes a g a a8.\prallprall g32 a bes2~
         \override Stem #'direction = #down bes32[ a g f] s8 } \\
       { <a, cis e>4 r <cis e g>2 | s8 e32 f g d } >>
%{1-%}                                                                %upper 30

cis32[ d e cis] g[ a bes f] e[ f g e] cis[ d e cis] s4                   | % 31

s1                                                                       | % 32

%{2..
    s16 << { s32. ees'64~ ees4. } \\ { s32 c~ c4. } \\ { s64 a32.~ a4. }
        \\ { fis16~ fis4. } >>
    s32 << { s32. d'32.~ d8\noBeam c4 } \\ { s32 a8.~ a4 }
        \\ { s64 fis32~ fis32.~\noBeam fis8~\noBeam fis4 } \\ { d32~ d8.~ d4 } >>
..2-%}
%{1%}
    <fis a c ees>2_"arpeggio..." << { d'4 c } \\ { <d, fis a>2 } >>
%{1-%}                                                                   | % 33

%{2..
    s8 \times 2/3 { s16 dis fis } \times 2/3 { a b a } \times 2/3 { fis dis s }
    s8 \times 2/3 { s16 dis fis } \times 2/3 { a c a } \times 2/3 { fis dis s }
..2-%}
%{1%}
    <dis fis a b>2 <dis fis a c>
%{1-%}                                                                   | % 34

%{2.. s8 \times 2/3 { e16 g bes } \times 2/3 { cis bes g } \times 2/3 { e s s }
   s8 \times 2/3 { f16 gis b } \times 2/3 { d b gis } \times 2/3 { f s s }
..2-%}
%{1%}
    <e g bes cis> <f gis b d>
%{1-%}                                                              | %upper 35

%{2.. s8 \times 2/3 { s16 e gis } \times 2/3 { b d b } \times 2/3 { gis e s }
   s8 \times 2/3 { e16 e a } \times 2/3 { c a e } s8
..2-%}
%{1%}
    <e gis b d> <e a c>
%{1-%}                                                                   | % 36

%{2..
    s8 \times 2/3 { ees16 ees a } \times 2/3 { c a ees } s8
    s8 \times 2/3 { e16 e bes' } \times 2/3 { des bes e, } s8
..2-%}
%{1%}
    <ees a c> <e bes' des>
%{1-%}                                                                   | % 37

%{2..
    s8 \times 2/3 { f16 a c } \times 2/3 { ees c a } \times 2/3 { f16 s s } 
    s8 \times 2/3 { s16 e g } \times 2/3 { bes cis bes } \times 2/3 { g e s }
..2-%}
%{1%}
    <f a c ees> <e g bes cis>
%{1-%}                                                                   | % 38

%{2.. s8 \times 2/3 { f16 f a } \times 2/3 { d a f } s8
   s8 \times 2/3 { d16 fis a } \times 2/3 { c a fis } \times 2/3 { d s s }
..2-%}
%{1%}
    <f a d> <d fis a c>
%{1-%}                                                                   | % 39

%{2..
    s32 << { s64 g64~ g4.. } \\ { ees32~ ees4.. } \\ { s32 bes'4.. } >>
    s16 << { s64 g32.~ g4. s16 s32 g32~ g4. } 
        \\ { ees16~ ees8 d4 s16 cis16~ cis4. }
        \\ { s32 bes'~ bes4.~ bes2 } \\ { s2... }
        \\ { s4.. s16 s64 e,32.~ e4. } >>
        s8 \times 2/3 { s16 cis e } \times 2/3 { f a f } \times 2/3 { e cis s }
..2-%}
%{1%}
    <ees g bes>2 << { <g bes~>2 <g bes> } \\ { ees4 d <cis e>2 } >>
    <cis e f a>
%{1-%}                                                         | %upper 40 & 41

\barNumberCheck #42
%{2..
    s32. << { s64 f16~ f4. s16 } \\ { d64~ d16~ d4. s16 } \\ { s64 s4.. s16 }
         \\ { s32 a'32.~ a4.~ a16 } >> g16 f e f[ cis d a]
..2-%}
%{1%}
    <d f a~>2 a'16 g f e f cis d a
%{1-%}                                                                   | % 42

bes16[ gis a e] f s s8 s4 d'16 f a gis                                   | % 43

a16 fis dis c b a s8
%{2..
    s32. << { s64 fis'16~ fis4. } \\ { c64~ c16~\noBeam c4. }
         \\ { s32 a'32.~ a4. } >>
..2-%}
%{1%}
    << { <fis' a>2 } \\ { c4_"arpeggio..." b } >>
%{1-%}                                                                   | % 44

%{2..
    s8 \times 2/3 { s16 a, c } \times 2/3 { e a e } \times 2/3 { c a s }
	s8 \times 2/3 { b16 d e } \times 2/3 { gis e d } \times 2/3 { b s s }
..2-%}
%{1%}
    <a c e a>2 <b d e gis>
%{1-%}                                                              | %upper 45

%{2..
    s8 \times 2/3 { s16 e gis } \times 2/3 { b c b } \times 2/3 { gis e s }
	s32. << { s64 e16~ e4. } \\ { c64~ c16~ c4. } \\ { s32 a'32.~ a4. }
	     \\ { s64 s4.. } \\ { s32. c32~ c4. } >>
..2-%}
%{1%}
    <e gis b c>2 <c e a c>
%{1-%}                                                                   | % 46

%{2..
    s8 \times 2/3 { s16 c, e } \times 2/3 { a c a } \times 2/3 { e c s }
       \times 2/3 { b16 dis fis } \times 2/3 { b fis dis }
       \times 2/3 { c dis fis } \times 2/3 { a fis dis }
..2-%}
%{1%}
    <c e a c>2 <b dis fis b>4 <c dis fis a>
%{1-%}                                                                   | % 47

%{2..
    s8 \times 2/3 { s16 a c } \times 2/3 { e a e } \times 2/3 { c a s }
       \times 2/3 { b16 d e } \times 2/3 { a e d } \times 2/3 { b d e }
       \times 2/3 { gis e d }
..2-%}
%{1%}
    <a c e a>2 <b d e a>4 <b d e gis>
%{1-%}                                                                   | % 48

%{2..
    s32. d64~ e~ a~ <d, e a>32~ <d e~ a~>8 <cis e a~>4 a'16 bes
..2-%}
%{1%}
    << { a'2~ a16 } \\ { d,4 cis s16 } \\ { e2 s16 } >> bes'16
%{1-%}
a16 g fis32 g fis g \times 2/3 { g64 a g } fis64 g a fis d32             | % 49

des8_( c) << { beses'8^( aes) } \\ { <c, ees>4 } >>
r16 ees f g aes32 bes c des c des ees64 des c des                   | %upper 50

ees8 r << { bes8^( a) } \\ { <ees ges ees'>4 } >> r16 ees'^( ges f
   ees des c des32 bes)                                                  | % 51

bes8^( a) << { a4~ a16 bes a bes
%{2.. bes32 c bes c \times 2/3 { bes32 c bes } ..2-%} %{1%} bes8.\trill %{1-%}
   a32 bes } \\ { c,4~ c16 des c des %{2.. des32 ees des ees
   \times 2/3 { des32 ees des } ..2-%} %{1%} des8._\trill %{1-%} c32 des }
   \\ { ees4 s2 } >>                                                     | % 52

<< { c'8 r c4~ c16 des c des %{2.. des32 ees des ees
   \times 2/3 { des32 ees des } ..2-%} %{1%} des8.\trill %{1-%} c32 des }
\\ { ees,8 r ees4~ ees16 f ees f %{2.. f32 ges f ges
   \times 2/3 { f32 ges f } ..2-%} %{1%} f8._\trill %{1-%}  ees32 f }
\\ { s4 <ges a> s2 } >>                                                  | % 53

<< { ees'16^( c a bes) bes^( a) } \\ { ges4 r8 } >>
%{2.. s32 << { s128 ees64.~ ees16\noBeam } \\ { c32~ c16\noBeam }
          \\ { s64 f~ f16\noBeam } \\ { s16. } \\ { s32 a16\noBeam } >>
..2-%}
%{1%} <c, ees f a>8 %{1-%}
r16 f a c
   \set subdivideBeams = ##t
   \set Score.beatLength = #(ly:make-moment 6 32)
   ees^( ges f %{2.. \times 2/3 { ees64 f ees } ..2-%}
               %{1%} ees32\prall %{1-%} des32)] |
   \set subdivideBeams = ##f
   \set Score.beatLength = #(ly:make-moment 8 32)                        | % 54

%{2..
    des8 r
    s16 << { s64 ges,32.~ ges8\noBeam s16 } \\ { des16~ des8\noBeam s16 }
        \\ { s32 bes'~ bes8\noBeam s16 } \\ { s8. s16 }
        \\ { s32. des64~ des8~\noBeam des16 } >>
..2-%}
%{1%}
    des8 r <des, ges bes des~>4 des'16
%{1-%}
    des16 ^( fes ees des32[ ces bes ces
    %{2.. \times 2/3 { ces64 des ces } ..2-%} %{1%} ces32\prall %{1-%}
    bes32 ces des)]                                                 | %upper 55

%{2..
    aes8_( g) s32.
    << { s64 des16~ des8\noBeam } \\ { bes64~ bes16~\noBeam bes8 }
    \\ { s32 ees32.~ ees8\noBeam } \\ { s64 s8. } \\ { s32. g32~ g8\noBeam } >>
..2-%}
%{1%}
    aes8_( g) <bes, des ees g>4
%{1-%}
r16 %{2.. g_( ..2-%} %{1%} g'_( %{1-%} ees f) g_( aes32 g f16 aes32 g)   | % 56

%{2.. aes64 g aes g aes16 ..2-%} %{1%} aes8\mordent %{1-%} r8
%{2..
    s32. << { s64 e16~ e8\noBeam s32 } \\ { b64~ b16~\noBeam b8 s32 }
         \\ { s32 gis'32.~ gis8~\noBeam gis32 } >>
..2-%}
%{1%}
    <b, e gis~>4 gis'32
%{1-%}
	b,_( cis dis e fis gis a) b16^( d cis e32 d)                     | % 57

%{2.. d64 cis d cis d16 ..2-%} %{1%} d8\mordent %{1-%} r32
   << { s16 b32 d16 cis8. } \\ { eis,16.~ eis4 } \\ { s16. s4 }
   \\ { s32 gis16~ gis4 } >> r8 b b_( a)                                 | % 58

a8[_( gis)] gis32[ a b cis d b gis64 eis fis32]
    << { fis8^( eis) } \\ { d4 } >> r32 eis fis gis
   %{2.. \times 6/7 { fis64 gis fis gis fis gis fis } ..2-%}
   %{1%} fis16.\trill %{1-%}
   eis32 |                                                               | % 59

<< { s16 cis'32[ d] cis16[ b a gis32 b a16
   %{2.. \times 2/3 { gis64 a gis } ..2-%}
   %{1%} gis32\trill %{1-%} fis32] }
   \\ { b8[ a16 gis] fis8[ eis] } >>
   %{2.. s16 << { s64 a32.~ a8\noBeam } \\ { fis16~ fis8\noBeam }
             \\ { s32 dis'~ dis8\noBeam } >> r32 e^( ..2-%}
   %{1%} \once \override Score.SeparationItem #'padding = #3
   <fis a dis>4\arpeggio r32 e'^( %{1-%}
   dis cis bis cis dis fis)                                | %upper 60

a8[ a] s16 bis,64^([ dis fis a gis16 a32 fis])
   << { fis8^( e)~ \times 2/3 { e16 cis bis } \times 2/3 { cis gis fis } }
   \\ { <gis cis>4 s4 } >>                                               | % 61

\times 2/3 { gis16 e dis } \times 2/3 { e cis bis } \times 2/3 { cis e dis }
    \times 2/3 { e a gis } \times 2/3 { a cis b } \times 2/3 { cis e d }
    \times 2/3 { e fis g }
    %{2.. g64 a g a \times 2/3 { g64 a g } \times 2/3 { fis64 g a } ..2-%}
    %{1%} g16.\trill \times 2/3 { fis64 g a } %{1-%}                     | % 62

<< { ees16^([ d8.])~ d8~[ d32 d c bes] a[ bes c ees c bes a g]
fis[ g a c a g fis e] } \\ { r4 <d fis a> s2 } >>                        | % 63

d32[ e fis a g fis e d] c[ d ees fis ees d c bes]
   a[ bes c ees c bes a g] s4                                            | % 64

s8 a32 bes c a bes c s8 c32 d ees c d ees s8
   e32[ fis g a fis g a] s32                                        | %upper 65

s16. a32 bes[ c a bes c] s8 c32[ d ees] c[ d ees] s8
   e32[ fis g a fis g a] s16                                             | % 66

s16 a32[ bes c bes a g] fis[e d c bes a g fis] e d c bes a g fis e d16 c''
   << { %{2.. \times 4/5 { bes64 c bes c bes } ..2-%}
   %{1%} bes16\trill %{1-%} c32 a } \\ { <d, fis>8 } >>                  | % 67

%{2.. s16 << { s32 bes'~ bes8~ bes32 } \\ { d,16~ d8 s32 }
          \\ { s64 g32.~\noBeam g8 s32 } >> ..2-%}
%{1%} <d g bes~>4\arpeggio bes'32 %{1-%}
   bes_( c d) %{2.. \times 6/7 { d64_( ees d ees d ees d } ..2-%}
   %{1%} d16.(\trill %{1-%} c64 d)
   ees16-. a,32^( bes) %{2.. \times 6/7 { bes64^( c bes c bes c bes } ..2-%}
   %{1%} bes16.(\trill %{1-%} a64 bes)
   c16-. fis,32_( g) %{2.. \times 6/7 { g64_( a g a g a g } ..2-%}
   %{1%} g16.(\trill %{1-%} fis64 g)                                     | % 68

<< { a8~ a16 a32^([ c bes16 a g a32 fis]) } \\ { r8 <ees fis> r4 } >>
   %{2.. s16 << { s64 g32.~ g8 } \\ { e16~ e8 } >> ..2-%}
   %{1%} \once \override Score.SeparationItem #'padding = #2
   <e g>4\arpeggio %{1-%}
   r32 a^( b cis d64 e f g f32 g64 e)                                    | % 69

<< { f16^( s32 e f32. g64 f e f g)
    %{2.. \times 12/11 { g64^( a g a g a g a g a g } ..2-%}
    %{1%} g8.(_\trill %{1-%} f32 g)
   a4~ a16[ bes32^( a g f e d)] } \\ { r16 d~ d8 d4 <a cis e> r } >>| %upper 70

cis32^( b a b cis d e f g16e cis bes g e cis bes s4)                     | % 71

r4 %{2.. s32.
    << { s64 a'16~ a8\noBeam } \\ { fis64~ fis16~\noBeam fis8 }
    \\ { s32 c'32. c8\noBeam } \\ { s64 s8. }
    \\ { s32. ees32~ ees8\noBeam } >> ..2-%}
    %{1%} << { ees'8\arpeggio^( d) } \\ { <fis, a c>4\arpeggio } >> %{1-%}
    s4 %{2.. c,32 ..2-%} %{1%} c32 %{1-%} d ees d c s32 s16              | % 72

s4 fis16_([ a c ees]) fis^([ a c a] fis[ a32 fis d16 fis32 d])           | % 73

c8[ b] %{2..
   s32 << { s64 b32. b32 } \\ { s128 g64.~ g16 } \\ { s16. } \\ { d16. } >>
..2-%}
%{1%} << { b16. b32 } \\ { <d, g>8\arpeggio } >> %{1-%}
<< { cis'32 d e f <g, cis e g>8 <a d f a> } \\ { r8 cis, d } >>
%{2..
   << { a'8 } \\ { s8 } \\ { s64 d32.~ d16 } \\ { s8 } { s32 f32~ f16 } >> 
..2-%}
%{1%} <a' d f>8\arpeggio %{1-%} << \set tieWaitForNote = ##t
    { %{2.. e16 ..2-%} %{1%} e'16 %{1-%} d } \\ { cis8 }
    \\ { s8 } \\ { g8~ } >>                                              | % 74

<< { <a d>4 r16 d^( g bes) } \\ { g,8 fis <d g>4 } >>
%{2..
   s64. << { s64 d'64.~ d16 cis8 } \\ { s128 g8.. } \\ { s128 s8.. }
        \\ { d64.~ d64~ d8. } >>
..2-%}
%{1%} << { d'8\arpeggio^( cis) } \\ { <e, g>4\arpeggio } >> %{1-%}
<< { r16 c'32^([ b c fis a16]) } \\ { <ees, fis>4 } >>              | %upper 75

%{2..
<< { s32. c'64~\noBeam c16^( b8) r16 bes^([ cis32 e g16])
     s32 s128 bes,64.~ bes16^( a8) r32 a^([ d cis d e f16]) }
   \\ { s32 d~ d,16~\noBeam d8 cis4 s64. c128~ c8.. d4 }
   \\ { s32 s128 f64.~ f16~\noBeam f8 e4 s32 ees8.. s4 } >>
..2-%}
%{1%} \once \override Score.SeparationItem #'padding = #2
<d~ f~ c'>8\arpeggio^( <d f b>8)
<< { r16 bes'( cis32 e g16) } \\ { <cis, e>4 } >>
\once \override Score.SeparationItem #'padding = #2
<c,~ ees~ bes'>8\arpeggio^( <c ees a>8)
<< { r32 a'^([ d c d e f16]) } \\ { d,4 } >>                             | % 76
%{1-%}

%{2.. << { s32 s128 a64.~ a16^( gis8) } \\ { s4 }
      \\ { s64. b,64.~ b64~ b16~ b8 } \\ { s32 d16.~ d8 } >> ..2-%}
%{1%} \once \override Score.SeparationItem #'padding = #2
<b~ d~ a'>8\arpeggio^( <b d gis)>8) %{1-%}
<< { r16 %{2.. g32^([ ..2-%} %{1%} g'32^([ %{1-%} a bes cis d e]) }
   \\ { <bes, cis>4 } >>
%{2.. s32 << { s32 g'16 fis8 } \\ { a,32~ a8.\noBeam }
         \\ { s64 c~c8.\noBeam } >> ..2-%}
%{1%} \once \override Score.SeparationItem #'padding = #2
<a~ c~ g'>8\arpeggio^( <a c fis>8) %{1-%}
<< { r16 d'32^([ b gis a b16]) } \\ { <gis, b>4 } >>                     | % 77

%{2..
<< { s32 s128 f'64.^( d16) e64 d e16. } \\ { s32 bes8.. }
   \\ { s4 } \\ { s64. g64.~ g64~ g8. } >>
..2-%} %{1%} << { f'16\arpeggio^( d16) e8\mordent }
   \\ { <g, bes>4\arpeggio } >> %{1-%}
<< { r32 ees''^([ c a fis a ees16]) } \\ { a,4 } >>
%{2.. << { s32 s128 ees'64.~\noBeam ees16^( d8) } \\ { gis,4 } >> ..2-%}
%{1%} \once \override Score.SeparationItem #'padding = #2
<gis~ ees'>8\arpeggio^( <gis d'>8) %{1-%}
<< { r32 d'64^( e fis g a bes a g f32 e f64 g) } \\ { g,4 } >>           | % 78

%{2.. r32 d'16.^( cis8) \times 8/9 { cis64^([ d cis d cis d cis d cis] }
   d64[ cis d cis ..2-%}
%{1%} \once \override Score.SeparationItem #'padding = #2
d'8\arpeggio^( cis) cis8.\trill( %{1-%} b32 cis])
%{2.. << { s32 s128 d64.~ d8.~ d4^\fermata } \\ { s32 a8..~ a4 } >> ..2-%}
%{1%} \once \override Score.SeparationItem #'padding = #2
<a d>2\arpeggio\fermata %{1-%} \bar "|."
}

% c is c~131
lower = \relative c {
    \clef bass
    \key d \minor
    \set tupletSpannerDuration = #(ly:make-moment 1 8)

s1 s s s s s
s4 b'8 r c r a r                                                     | %lower 7

bes r gis r a r a r                                                       | % 8

a r fis r g r e r                                                         | % 9

<< { \times 2/3 { r16 a d } \times 2/3 { b gis r } \times 2/3 { r g c }
     \times 2/3 { a fis r } \times 2/3 { r g bes }
     s8 \times 2/3 { bes16 g r } r8 }
   \\ { fis8 \times 2/3 { r16 r f } e8 \times 2/3 { r16 r ees }
        d8 r \times 2/3 { r16 r f } \times 2/3 { ees d cis } } >>                   | %lower 10

<< { \times 2/3 { r16 f bes } \times 2/3 { gis f r } \times 2/3 { r e a }
     \times 2/3 { fis ees r } \times 2/3 { r d g } \times 2/3 { e cis r }
     \times 2/3 { r d f } \times 2/3 { d b r } }
   \\ { d8 \times 2/3 { r16 r d } cis8 \times 2/3 { r16 r c }
	b8 \times 2/3 { r16 r bes } a8 \times 2/3 { r16 r aes } } >>      | % 11

<< { \times 2/3 { r16 c ees } \times 2/3 { r16 ees g }
     \times 2/3 { r16 g c } \times 2/3 { r16 c ees } s2 }
   \\ { g,,8 c ees g bes cis e g } >>                                     | % 12

a,8 r g' r a, r g' r                                                      | % 13

f r a r r4 r8 \times 2/3 { d,16 cis bes }                                 | % 14

a8 r cis r a r cis r                                                 | %lower 15

a r d r f r a r                                                           | % 16

s1                                                                        | % 17

r4 \times 2/3 { r16 f, e } \times 2/3 { d cis e } \times 2/3 { a, r r } r8
   \times 2/3 { r16 f' e } \times 2/3 { d cis e }                                        | % 18

\times 2/3 { a,16 s s } \times 2/3 { s d' cis } r8
   \times 2/3 { f16 e s } \times 2/3 { s s a } \times 2/3 { g s s } s4                                  | % 19

s2 s4 \times 2/3 { e,16 cis a } r8                                   | %lower 20

s1                                                                        | % 21

s4 s8 s32 b'32 a g bes a g f e f g f e d cis d e d cis b                  | % 22

a b cis d e f g f e g f e d cis b a b cis d e f g a bes a g f a g f e d   | % 23

cis d e f g a bes a s4 s f32 g a f d f e d                                | % 24

gis fis e b' a gis d' c s4 s2                                        | %lower 25

s2 s4 \times 2/3 { a16 d a f a f }                                        | % 26

\times 2/3 { d16 f a } d16 s s8 \times 2/3 { d16 a f }

%{2..
    \times 2/3 { d e g } \times 2/3 { cis s s } s8 \times 2/3 { s16 s cis }
..2-%}
%{1%} <d e g cis>2 %{1-%}                                                 | % 27
%{2..
    \times 2/3 { d,16 f a } \times 2/3 { d s s } s8
    \times 2/3 { s16 s d } \times 2/3 { d, fis a } \times 2/3 { c s s }
        s8 \times 2/3 { s16 s c }
..2-%}
%{1%} <d f a d>2 <d fis a c> %{1-%}                                       | % 28

%{2..
    \times 2/3 { d,16 g bes } \times 2/3 { d s s } s8
    \times 2/3 { s16 s b } \times 2/3 { d, f gis } \times 2/3 { b s s }
        s8 \times 2/3 { s16 s b }
..2-%}
%{1%} <d g bes d>2 <d f gis b> %{1-%}                                     | % 29

%{2..    
    << { s128 e,64.~ e4...} \\ { cis32~ cis4... } \\ { s64 a'~ a4... } >>
    << { s128 cis,64.~ cis4... } \\ { g32~ g4... } \\ { s64 e'~ e4... } >>
..2-%}
%{1%} <cis e a>2 <g cis e> %{1-%}                                    | %lower 30

s2 s4 %{2.. g32 ..2-%} %{1%} g'32 %{1-%} a bes g e f g e                                                | % 31

cis d e cis a b cis d e f g e cis d e f g a bes g e f g e
   cis d e cis a b cis a                                                  | % 32

%{2..
    << { s2 } \\ { fis16~ fis4.. } \\ { s64 a32.~ a4.. } \\ { s2 }
    \\ { s32 c~ c4.. } \\ { s2 } \\ { s32.  ees64~\noBeam ees4.. } >>
    << { fis32~ } \\ { s64 a~ } >> <fis a>4...
..2-%}
%{1%} <fis a c ees>2 <fis' a>2 %{1-%}                                     | % 33

%{2..
    \times 2/3 { dis16 fis a } \times 2/3 { b s s } s8 \times 2/3 { s16 s b }
    \times 2/3 { dis,16 fis a } \times 2/3 { c s s } s8 \times 2/3 { s16 s c }
..2-%}
%{1%} <dis fis a b>2 <dis fis a c> %{1-%}                                 | % 34

%{2..
    \times 2/3 { g16 bes cis } s8 s8 \times 2/3 { s16 cis bes }
    \times 2/3 { gis16 b d } s8 s8 \times 2/3 { s16 d b }
..2-%}
%{1%} <g bes cis>2 <gis b d> %{1-%}                                  | %lower 35

%{2.. 
    \times 2/3 { c,16 e gis } \times 2/3 { b s s } s8
    \times 2/3 { s16 s b } \times 2/3 { c,16 e a } s8 s8 \times 2/3 { a16 e c }
..2-%}
%{1%} <c,e gis b>2 <c e a> %{1-%}                                         | % 36

%{2..   
    \times 2/3 { fis16 a c } s8 s8
    \times 2/3 { c16 a fis } \times 2/3 { g16 bes des } s8 s8
    \times 2/3 { s16 des bes }
..2-%}
%{1%} <fis a c>2 <g bes des> %{1-%}                                       | % 37

%{2..
    \times 2/3 { f16 a c } s8 s8
    \times 2/3 { s16 c a } \times 2/3 { f16 g bes }
    \times 2/3 { cis s s } s8 \times 2/3 { s16 s cis }
..2-%}
%{1%} <f a c>2 <f g bes cis> %{1-%}                                       | % 38

%{2..
    \times 2/3 { f,16 a d } s8 s8 \times 2/3 { d16 a f }
    \times 2/3 { fis a c } s8 s8 \times 2/3 { s16 c a }
..2-%}
%{1%} <f a d>2 <fis a c> %{1-%}                                           | % 39

\barNumberCheck #40
%{2..
    << { s64 bes~ bes4... } \\ { g32~ g4... } >>
    << { s64 bes,32.~ bes4.. } \\ { g16~ g4.. } \\ { s32 ees'~ ees4..}
    \\ { s2 } \\ { s32. g64~ g4.. } >>
..2-%}
%{1%} <g bes>2 <g, bes ees g> %{1-%}                                 | %lower 40

%{2.. << { s2 } \\ { a,32.~ a64~\noBeam a4..} \\ { s2 }
   \\ { s64 cis32.~ cis4.. } \\ { s2 }
   \\ { s32 e~ e4.. } \\ { s2 } \\ { s32. g64~ g4.. } >>
\times 2/3 { a,16 cis e } \times 2/3 { f s s } s8 \times 2/3 { s16 s f }
..2-%}
%{1%} <a cis e g>2 <a cis e f> %{1-%}                                     | % 41

\barNumberCheck #42
%{2.. << { s2 } { bes,16~ bes4.. } \\ { s2 } \\ { s64 d32.~ d4.. }
      \\ { s2 } \\ { s32 f64~ f4.. } >> r2 ..2-%}
%{1%} <bes d f>2 r %{1-%}                                                 | % 42

s4 s16 cis d a bes d f a s4                                               | % 43

s4 s8 fis16 e
%{2.. << { s2 } { dis16~ dis4.. } \\ { s2 } \\
      { s64 fis32.~ fis4.. }  \\ { s2 } \\ { s32 a~ a4.. } >> ..2-%}
%{1%} <dis fis a>2 %{1-%}                                                 | % 44

%{2..
    \times 2/3 { e,16 a c } \times 2/3 { e s s } s8
    \times 2/3 { s16 s e } \times 2/3 { e, b' e } s8 s8 \times 2/3 { s16 e b }
..2-%}
%{1%} <e, a c e>2 <e b' e> %{1-%}                                    | %lower 45

%{2..
    \times 2/3 { e16 gis b } \times 2/3 { c s s } s8 \times 2/3 { s16 s c }
<< { s2 } \\ { c,32.~ c64~ c8. a4 } \\ { s64  e'32.~ e4.. }
   \\ { s2 } \\ { s32 a~ a4.. } >>
..2-%}
%{1%} <e' g b c>2 << { <e a>2 } \\ { c4 a } >> %{1-%}                     | % 46

%{2..
    \times 2/3 { f,16 a c } \times 2/3 { f s s } s8
    \times 2/3 { s16 s f } \times 2/3 { fis, a b } \times 2/3 { dis b a }
    \times 2/3 { fis a c } \times 2/3 { dis c a }
..2-%}
%{1%} <f a c f>2 <fis a b dis>4 <fis a c dis> %{1-%}                      | % 47

%{2..   
    \times 2/3 { e16 a c } \times 2/3 { e s s } s8 \times 2/3 { s16 s e }
    \times 2/3 { e, b' e } \times 2/3 { e b e, } \times 2/3 { e b' e }
    \times 2/3 { e b e, }
..2-%}
%{1%} <e a c e>2 <e b' e>4 <e b' e> %{1-%}                                | % 48

%{2.. << { s2 } { a16~ a4.. } \\ { s2 } \\ { s64 e'32.~ e4.. }
      \\ { s4 } \\ { s32 a~ a4.. } >> ..2-%}
%{1%} <a e' a>2 %{1-%} r2                                                 | % 49

r4 < %{2..ges,..2-%} %{1%}ges%{1-%} aes c ees>4 r2                                               | %lower 50

r4 <c ees ges c>4 r2                                                      | % 51

r4 <ges' a> r2                                                            | % 52

r4 <a, c ees ges> r2                                                      | % 53

r4 r8
%{2.. << { s64 c~ c16.\noBeam } \\ { f,32~ f16.\noBeam }
      \\ { s128 a64.~ a16.\noBeam }
      \\ { s8 } \\ { s64. f'128~ f16.\noBeam }  >>
..2-%}
%{1%} <f a c f>8 %{1-%}
r2                                                                        | % 54

r4
%{2..
<< \\ { s64 ges,32.~ ges8.\noBeam } \\ { fes16~ fes8.\noBeam } \\ { s4 }
   \\ { s32 bes~ bes8.\noBeam } \\ { s4 }
   \\ { s32. des64~ des8.\noBeam } >> ..2-%}
%{1%} <fes ges bes des>4 %{1-%} r2                                   | %lower 55

r4
%{2..   
<< { s64 bes32.~ bes8.\noBeam } \\ { ees,16~ ees8.\noBeam }
      \\ { s4 } \\ { s32 ees'~ ees8.\noBeam } >> ..2-%}
%{1%} <ees bes' ees>4 %{1-%} r2                                           | % 56

r4
%{2.. << { s64 b32.~ b8.\noBeam } \\ { d,16~ d8.\noBeam }
      \\ { s4 } \\ { s32 e'~ e8.\noBeam } >> ..2-%}
%{1%} <d b' e>4 %{1-%} r2                                                 | % 57

r32 << { s16 %{2.. gis32~ ..2-%} %{1%} gis'32~ %{1-%} gis4. }
    \\ { cis,16.~ cis4. } \\ { s16. cis'4. }
    \\ { s32 eis,16~ eis4. } >> r8 d' d^( cis)                            | % 58

cis8^( b) b cis16 e <b, gis'>4 r                                          | % 59

<< { gis'8 a16 b cis8 b } \\ { eis,8 fis cis4 } >>
%{2.. << { s4 } \\ { bis32.~ bis64~ bis8.} \\ { s4 }
   \\ { s64 dis32~ dis64~ dis8. } \\ { s4 }
   \\ { s32 fis64~ fis64~ fis8. } \\ { s4 } \\ { s32. a64~ a8. } >> ..2-%}
%{1%}   <bis dis fis a>4\arpeggio  %{1-%} r4                         | %lower 60

r4 
%{2.. << { s64 bis,32.~ bis8\noBeam} \\ { gis32.~ gis64~ gis8.\noBeam }
      \\ { s4 } \\ { s32 dis'32~ dis8.\noBeam } \\ { s4 }
      \\ { s32. gis64~ gis8.\noBeam } >> <cis,..2-%}
%{1%} <gis bis dis gis>4\arpeggio <cis %{1-%} e gis cis>4 r               | % 61

r1                                                                        | % 62

r4 <c d fis a> r2                                                         | % 63

r2 r4 fis32[ g a c a g fis e]                                             | % 64

d e fis g s8 s16 fis32[ g a bes] s16 s8 a32 bes c d s8 s16 s32 d     | %lower 65
\clef treble

e[ fis g] s8 s16 fis32[ g a bes] s8 s16 a32[ bes c d] s8 s16 s32 d e      | % 66

fis g \clef bass s16 s8 s2 r8 <d,, fis a>                                 | % 67

%{2.. << { s32 d~ d8.\noBeam } \\ { g,16~ g8.\noBeam }
      \\ { s64 bes32.~\noBeam bes8. }
      \\ { s4 } \\ { s32. g'64~\noBeam g8. } >> ..2-%}
%{1%} <g, bes d g>4\arpeggio %{1-%} r4 r2                                 | % 68

r8 < %{2.. c, ..2-%} %{1%} c %{1-%} ees fis a> r4
%{2.. << { s64 e32.~ e8.\noBeam } \\ { cis16~ cis8.\noBeam }
      \\ { s32 g'~ g8.\noBeam }
      \\ { s4 }  \\ { s32. bes64~ bes8.\noBeam } >> ..2-%}
%{1%} <cis e g bes>4\arpeggio %{1-%} r4                                   | % 69

<< { <f a>4 g a } \\ { d,8 c bes4 a }
   \\ { s4 d16 e cis d <cis e>4 } >> r4                              | %lower 70

s2 s4 a'16 e cis e                                                        | % 71

fis,8 r %{2.. << { s64 a'32.~ a8.\noBeam } \\ { fis16~ fis8.\noBeam }
              \\ { s4 } \\ { s32 c'~ c8.\noBeam } >> ..2-%}
    %{1%} <fis' a c>4\arpeggio %{1-%}
    r16 %{2.. d,32_( ..2-%} %{1%} d32_( %{1-%}
    e fis g a bes s8 s32 bes a g)                                         | % 72

fis16^( a c ees) s4 s2                                                    | % 73

r4 %{2..
    << { s32 g,32~ g16 } \\ { s8 } \\ { s64. d64.~ d64~ d16 } \\ { s8 } \\
       { s64 b32.~ b16 } \\ { f16~ f16 } >> ..2-%}
   %{1%} <f,, b d g>8\arpeggio %{1-%}
r8 << { g'8 f16 g a4~ a32 } \\ { e8 d s a s32 } >>                          % 74

d32~ << { fis a  c ees d c } \\ { d,8. } >>  bes'4 
%{2.. << { s64 bes16..~ bes8 } \\ { s4 } \\ { s128 g16...~ g8 } \\ { d8~ d8 } >>
..2-%}
%{1%} <d, g bes>4\arpeggio %{1-%} 
<< { <a' c> } \\ { r4 } >>                                           | %lower 75

%{2.. << { s64. b128~ b8..\noBeam } \\ { s4 } \\ { s64 gis~ gis8..\noBeam }
      \\ { s128 f64.~ f8..\noBeam } { d4 } >> ..2-%}
%{1%} <d, f gis b>4\arpeggio %{1-%}
<< { <g bes>4 } \\ { r4 } >>
%{2.. << { s4 } \\ { s64 a16..~\noBeam a8 } \\ { s4 }
      \\ { s128 fis16...~ fis8 } \\ { s4 } \\ { d4 } >>
..2-%}
%{1%} <fis a>4\arpeggio %{1-%}
<< { <f a>4 } \\ { r4 } >>                                                | % 76

%{2.. << { s64 gis32.~ gis8.\noBeam } \\ { d4 }
      \\ { s128 f64._~ f8.\noBeam } >> ..2-%}
%{1%} <d f gis>4\arpeggio %{1-%}
<< { <e g>4 } \\ { r4 } >>
%{2.. << { s64 ees64~ ees8..\noBeam } \\ { d,4 } >> ..2-%}
%{1%} <d, ees>4\arpeggio %{1-%}
<< { <d' f>4 } \\ { r4 } >>                                               | % 77

%{2..
<< { s64 e16..~\noBeam e8 } \\ { d,4 } \\ { s128 cis'64._~ cis8..\noBeam } >>
..2-%}
%{1%} <d, cis' e>4\arpeggio %{1-%}
<< { %{2.. <c ..2-%} %{1%} <c' %{1-%} ees fis>4 } \\ { r4 } >>
%{2..
<< { s64. f128~ f8..\noBeam } \\ { e,4 } \\ { s64 d'~\noBeam d8.. } \\ { s4 }
  \\ { s128 c64._~ c8..\noBeam } >> ..2-%}
%{1%} <d, b' d f>4\arpeggio %{1-%}
<< { %{2.. <bes ..2-%} %{1%} <bes' %{1-%} d>4 } \\ { r4 } >>              | % 78

%{2..
<< { s64. g'64.~ g64~\noBeam g8.~ g4 } \\ { s2 } \\ { s64 e32.\noBeam e8.~ e4 }
  \\ { s2 } \\ { s128 bes32..~\noBeam bes8.~ bes4 } \\ { d,4~ d4 } >>
<< { s64. fis'64.~ fis64\noBeam fis8.~ fis4 } \\ { s2 }
  \\ { s64 d32.\noBeam d8.~ d4 } \\ { s2 }
  \\ { s128 a32..~\noBeam a8.~ a4 } \\ { d,4~ d4\fermata } >>
..2-%}
%{1%} <d, bes' e g>2\arpeggio <d a' d fis>2\arpeggio\fermata %{1-%}       | % 79
}
\score {
    \unfoldRepeats
    <<
      \tempo 4=60
      \new Staff = "Upper" { \set Staff.midiInstrument = "honky-tonk" \upper }
      \new Staff = "Lower" \lower
    >>
    \midi {  }
}

\score {
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Hpsi   "
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "Upper" \upper
      \new Staff = "Lower" \lower
    >>
    \layout {  }
}
