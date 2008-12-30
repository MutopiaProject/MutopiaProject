#(ly:set-option 'point-and-click #f)

\version "2.8.3"

\header {

title = "Sing Ivy"
composer = "trad. (coll. G. B. Gardiner), arr. Gustav von Holst"
%instrument = "Voice, Piano"




mutopiatitle = "Sing Ivy"
mutopiacomposer = "Traditional"
mutopiaarranger = "trad. arr. Gustav von Holst"
mutopiainstrument = "Voice and Piano"
date = "1909"
source = "Folk Songs from Hampshire"
style = "Folk"
copyright = "Public Domain"
maintainer = "Nigel Holmes"
maintainerEmail = "nigel.holmes@thesaurus.badw.de"
lastupdated = "June 27, 2006"

 footer = "Mutopia-2006/06/29-789"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}



#(set-global-staff-size 19)

\paper {

#(set-default-paper-size "letter")

raggedbottom = ##t

}



melody = \relative c'' \context Voice = "singer"

{

\set Staff.midiInstrument = "flute"

\key g\major

\time 6/8

\clef treble



r2.^\markup {\italic Allegretto.}

r4 r8

b4.\fermata
%repeat start

a4 a8 e8 e b' a g a e4

b8 e4. fis8 r8 b e4. b8

r8 e d (c) d b b b a b a e4 e8 e b' b b a g fis4. e4

r8 r2. r4 r8

b'4. a8 a a e4 b'8 a (g) a e4

b8 e4. fis8 r8 b e4. b8 r8

e8 d c d b4 b8 a (b) a e4

e8 e b' b b a g
%}
%\alternative{

{fis4. e4 r8 r4 r8 b'4.}

{ fis4. e \break}

%}



r4 r8 b'4.^\markup {\italic cresc.}^\markup{\italic Poco \italic 
animato.} a4 a8 e4 b'8 a (g) a e4

b8 e4. fis8 r b e4. b8 r

e d^\markup{\italic cresc.} (c) d b4 b8 a (b) a e4 e8

a8 a a e fis e16 e a8 (b) a e4 e8 e b' b b a g fis4. e4 r8 r2.\fermata

\bar "||"

}



text = \lyricmode {

My fa -- ther gave me an a -- cre of land,

Sing o -- vy, sing i -- vy,

My fa -- ther gave me an a -- cre of land,

A bunch of green hol -- ly and i -- vy.

I har -- rowed it with a bram -- ble bush,

Sing o -- vy, sing i -- vy,

I har -- rowed it with a bram -- ble bush,

A bunch of green hol -- ly and i -- vy.

I



i -- vy.



My team o’ rats came ratt -- ling back,

Sing o -- vy, sing i -- vy,

My team o’ rats came ratt -- ling back

With fif -- ty bright guin -- eas and an emp -- ty sack,

A bunch of green hol -- ly and i -- vy.

}





upper = \relative c''{

\key g\major

\override DynamicText #'extra-offset = #'(0.0 . -2.5)


e8_\mf (b') b b (a) g fis4. (b,8) r r \fermata


<e a>4._\p (<b e>8) r r

<e a>4. (<b e>8) r r

<e a>4. (<d fis>8) r r

<c e>4. (b8) r r

<b fis'>4. (<e g>8) r r

<d a'>4. <e c'>

<e d'>2. <e c'>2.

e8 (b') b b (a) g

fis4. (b,8) r r
\once \override TextScript #'extra-offset = #'(0.0 . -2.5)

<e a>4_\markup{\dynamic pp \italic legatissimo} \( a,8 <e' b'>4 b8 <e 
c'>4 c8 <e b'>4

b8 <e a>4 a,8 <fis' b>4 b,8 <fis' c'>4 c8 <fis b>4

b,8 <fis' a>4 a,8 <fis' b>4 b,8 <fis' c'>4 c8 <fis a>4

a,8\) <<{\stemDown <b e>2. <g c>} \\ {\stemUp b'4. g fis e}>> <fis, c' 
fis> <g d' g>



r8 <e' a> a, r <e' a> a, r <e' a> a,

r8 <e' b'> b r <e a> a, r <e' b'> b r <e c'> c r <e b'>

b r <e a> c r <fis b> b, r <e c'> c r <e b'>

b r <e a> a, r <e' b'> b r <e c'> c r <e b'>


b \once \override TextScript #'extra-offset = #'(0.0 . -2.5)
r_\markup{\italic cresc.} <e a> a, r <e' gis b> b r <e a cis> cis r
<e gis b>


b \once \override TextScript #'extra-offset = #'(0.0 . -1)
<g e' g>2.\accent_\markup {\italic dim.}
<<{\stemDown <fis fis'>4._\> <g g'> r4_\pp r8
\once \override Script #'padding = #1 <gis e' gis>4.\fermata}\\
{\stemUp <c e>2. }>>



}



lower = \relative c'{

\key g\major

\clef treble

<g e'>2. <a c>4. (<b d>8) r r\fermata
\repeat volta 5 {

<a e'>4. (<e' g>8) r r

<a, e'>4. (<e' g>8) r r

<a, e'>4. (<b d>8) r r

<c e>4. (<e g>8) r r

<b fis'>4. (<e g>8) r r

<d fis>4. <c g'>

<b g'>2. <a fis'> <g e'>

<a c>4. (<b d>8) r r

\clef bass

<a,, e'>4 \( a'8 <b, e>4 b'8 <c, e>4 c'8 <b, e>4

b'8 <a, e'>4 a'8 <b, fis'>4 b'8 <c, fis>4 a'8 <b, fis'>4

b'8 <a, fis'>4 a'8 <b, fis'>4 b'8 <c, fis>4 c'8 <a, fis'>4

a'8 \)
<b, e b'>2.
}

\alternative { {

<c c'>4. <e' g c>

\clef treble <c' e> <b d>}


{
\once \override Score.BreakAlignment #'break-align-orders = #(make-vector 3
'(span-bar
breathing-sign
staff-bar
key
clef
time-signature))

\clef bass

<c,, e>8 [ r c'] <c, e> [r c']
}
}
<c, e> [r c']

<b, e> [r b'] <c, e> [r c'] <b, e> [r b'] <a, e'> [r a'] <b, e> [r

b'] <c, e> [r c'] <b, fis'> [r b'] <a, e'> [r a'] <b, e> [r

b'] <c, e> [r c'] <b, e> [r b'] <a, e'> [r a'] <b, e> [r

b'] <cis, e> [r cis'] <b, e> [r b'] <a, e'> [r a'] <b, e> [r

b'] <c, c'>2.\accent <a e' a> <e e'>4.
\once \override Script #'padding = #1
<e'' b' e>\fermata

}





\book{

\score{<<

\new Staff<< \melody >>

\lyricsto "singer"\new Lyrics \text

\context PianoStaff<<

\new Staff\upper

\new Staff\lower

 >>

 >>

\layout{}

\midi {

\tempo 8 =150}

}
\markup { \column{
\line {\bold 1. My father gave me an acre of land,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {My father gave me an acre of land,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 2. I harrowed it with a bramble bush,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I harrowed it with a bramble bush,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 3. I sowed it with two peppercorns,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I sowed it with two peppercorns,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 4. I rolled it with a rolling-pin,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I rolled it with a rolling-pin,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 5. I reaped it with my little penknife,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I reaped it with my little penknife,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 6. I stowed it in a mouse's hole,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I mowed it in a mouse's hole,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 7. I threshed it out with two beanstalks,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I threshed it out with two beanstalks,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 8. I sent my rats to market with that,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {I sent my rats to market with that,}
\line {\hspace #3.0 A bunch of green holly and ivy.}
\line {" "}
\line {\bold 9. My team o’rats came rattling back,}
\line {\hspace #3.0 Sing ovy, sing ivy,}
\line {My team o’rats came rattling back,}
\line {With fifty bright guineas and an empty sack}
\line {\hspace #3.0 A bunch of green holly and ivy.}%}
}
}

}










