d8 d'4 cis'8 d d'4 c'8 |
bes, bes4 a8 bes, bes4 a8 |
g, g4 f8 e e'4 d'8 |
g a bes g, a,4 r |
%5
r2 g8 f r4 |
r2 e8 d r4 |
cis'8 cis'16( d'  e'8) d' cis' e' a d' |
g g16( a  bes8) g cis e a, cis |
d d' c' bes a g f g |
%10
a4 a, d r |
d' cis' d8 d'4 c'8 |
bes, bes4 a8 bes, bes4 a8 |
g, g4 f8 e e'4 d'8 |
g e f d a4 r8 cis' |
%15
d' f e d a4 r |
r2 a,4 \fermata r |
f8 d'4 c'8 d d'4 c'8 |
bes, bes4 a8 g, g4 f8 |
e4. f8 c c'4 a8 |
%20
e c'4 f8 c4 r |
r2 g8 f r4 |
r2 bes8 a r4 |
g bes, c8 c' d' bes |
c' bes c' c f4 r |
%25
r r8 g a bes c' e |
f4. a,8 bes, c d e |
f g a bes c' d'16 e' f'8 bes |
c'4 c f r |
f8 f'4 e'8 d' c' bes a |
%30
g f c' c f,4 r |
f ees d8 d'4 a8 |
fis d4 fis8 g d g, d |
g c4 e8 f f,4 d8 |
g a bes g a4 r |
%35
r2 g8 f r4 |
r2 e8 d r4 |
<< 
    \tag #'no-basson {
        a,4 r g, r |
        a, r bes, r |
        g, r8 bes, a, a d' g |
        %%40
        a4 a, bes, g |
    }
    \tag #'basson <<
        { 
            r8_"Bassons." cis'16( d' )e'8 d' r cis'16( d' )e'8 d' |
            r cis'16( d' )e'8 d' r cis'16( d' )e'8 d' |
            r cis'16( d' )e'8 d' cis' a d' g |
            %%40
            a4 \once \override TextScript #'extra-offset = #'(0 . -3)
            s2.^"col parte." | \break
        }
        \new Staff {
            \override Score.BreakAlignment #'break-align-orders = 
            ##(; end-of-line:
               (instrument-name left-edge ambitus breathing-sign
                clef key-cancellation key-signature
                time-signature custos staff-bar)
               ; unbroken
               (instrument-name left-edge ambitus breathing-sign
                staff-bar clef key-cancellation key-signature
                staff time-signature custos)
               ; begin of line
               (instrument-name left-edge ambitus breathing-sign
                clef key-cancellation key-signature staff-bar
                time-signature custos))
            \override Staff.TimeSignature #'break-visibility = #all-invisible
            \break
            \clef bass 
            \key d \minor
            a,4 r g, r |
            a, r bes, r |
            g, r8 bes, a, a d' g |
            %%40
            a4 a, bes, g |
        }
    >>
>>    
e4 f d e |
cis d bes4. bes8 |
a4 r d' g |
a8 g f g a4 a, |
%45
d8 d'4 cis'8 d d'4 c'8 |
bes, bes4 a8 g, g4 f8 |
e e'4 d'8 cis' e' a d' |
g g16( a  bes8) g cis e a, cis |
d d' c' bes a g f g |
%50
a4 a, d, \fermata r |
f4. g8 a bes c' e |
f g a bes c'4 c8 e |
f4. a8 bes,4 g |
c a d'4. f'8 |
%55
bes d' g bes c4 a8 f |
c'4 c f,8 f4 e8 |
d d'4 c'8 b d16 e f8 d |
gis,2 gis8 e'4 e8 |
a, a4 g8 f, f4 e8 |
%60
d d'4 c'8 b a gis fis |
e b c' a e d e e, |
a, a4 g8 f, f4 e8 |
d c b, d e,4 a, |
e e, a,2
