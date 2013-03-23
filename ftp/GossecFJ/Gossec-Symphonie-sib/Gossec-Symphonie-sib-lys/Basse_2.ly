\version "2.16.0"      %Gossec - Symphonie si bémol
                        %Basse - 2e mvt  
\relative c{
\clef bass
\key ees \major
\time 6/8




ees4_\markup{\italic "pizz."} r8 ees4 r8
ees4 r8 r4 r8
ees4 r8 ees4 r8
ees4 r8 r4 r8
<<\voiceOne {r4 r8 bes'4.(_\markup{\italic "arco"}^\markup{\italic "Violoncello"} | aes g)} \\
\voiceTwo {R2. | R2.}>>
d4.(^\markup{\italic "Tutti"} ees)
bes4 bes8 bes4 bes8
bes4 r8 bes4 r8
bes4 r8 r <<\voiceOne {c'-.^\markup{\italic "Violoncello"} c-. |
c4-> r8 r d-. d-. | d4-> r8 r c-. c-.
c4-> r8 r d-. d-. | d4.->( ees4) r8 } \\
\voiceTwo {r4 | R2. |
R2. | R2. | R2.}>>
\set Score.skipBars = ##t R2. * 2
%
bes,4^\markup{\italic "Tutti"}_\markup{\italic "pizz."} r8 bes4 r8
a4 r8 a4 r8
bes4 r8 bes4 r8
a4 r8 a4 r8
bes4 r8 ees4 r8
d4 r8 ees4 r8
f4 r8 f,4 r8
bes4 r8 bes4 r8
bes4 r8 bes4 r8
bes bes bes bes4 r8 \bar ":|:"
bes4.:64\ff^\markup{\italic "arco"} bes:
bes: bes:
bes: bes:
a: a:
bes4 r8 bes'16-| f'-| d-| bes-| f-| d-|
bes8 r16. bes32 bes16. bes32 bes4 r8
ees4_\markup{\italic "pizz."} r8 ees4 r8
ees4 r8 r4 r8
ees4 r8 ees4 r8
ees4 r8 r4 r8
ees4 r8 aes,4 r8
ees'4 r8 bes4 r8
ees4 r8 aes,4 r8
ees'4 r8 bes4 r8
ees4 r8 aes,4 a8
bes bes bes bes4 r8
\clef tenor <<\voiceOne {r f''-._\markup{\italic "arco"}^\markup{\italic "Violoncello"} f-. f4-> r8 | 
r g-. g-. g4-> r8 | r f-. f-. f4-> r8 | r g-. g-. \clef bass g,4.( | 
aes16) aes-. aes-. aes-. aes-. aes-. g16. aes32 bes8 bes | ees,4. r4 r8 |
r4 r8 aes4.( | g) } \\
\voiceTwo {R2. | R2. | R2. | R2. | 
R2. | R2. | R2. |
r4. } >>
 d^\markup{\italic "Tutti"}
ees4 r8 aes bes bes,
ees4 r8 ees4 r8
ees4 r8 ees4 r8
ees ees ees ees4 r8 \bar ":|" 
}
