\version "2.18.2"


sarabande = {
    \key c \major
    \time 3/4
    \set Staff.midiInstrument = "cello"
    \override TextScript #'padding = #2.0
    
    \repeat volta 2 { 
        <c, g, e c'>4^\markup { \huge "Sarabande." } << { c'8.[ a16] b4 } \\ { d4 } >>
        <c, g, e bes>4 << { bes8.[ g16] a4 } \\ { f4 } >>
        << { d8[ e16( f)] f8. d16 e8 f } \\ { b,!8 s8 <c, g,>8 s8 s4 } >> 
        c16( b, c a,) b,8[ d] g, f,
        <e, c g>4 << { g8. e16 fis16([ d fis a]) } \\ { a,4 s4 } >> <d, a, fis c'>4 << { c'8. a16 c'16([ b a g]) } \\ { <g, d>4 s4 } >>
        << { <g a>8 bes16( c'!) bes8 a16( c') ees'8[ fis] g4 g2 } \\ { cis8 s8 d8 s8 s4 s4 g,2 } >> 
    }
    \repeat volta 2 { 
        << { b!4 b4 d16( c b, a,) b!4 b4 d16( c d b,) } \\ { g,4 g,4 s4 gis,4 gis,4 s4 } \\
        { d8[ f16( e)] f8. e16 s4 d8[ f16( e)] f8. e16 s4 } >> c16( e gis b) a8.( b32 c') d8[ b]
        a8( fis) a16( gis fis e) d8^\trill( cis16 d) cis8[ a] e'8[ g'16( f')] g'8[ e'] cis'8 bes4 a16 g f( e g cis)
        d8[ f' g e'] a16( b d' cis') d'4 <d, a, f d'>2 << { fis8. g32( a) g16([ fis e fis]) g( e fis a) } \\ { <c, a,>4 s2 } >>
        << { c'8. d'32( e') d'16([ c' b c']) d'( b c' e') } \\ { <a, fis>4 s2 } >> d'8[ b, c a] << { b8[ c'] } \\ { d4 } >>
        << { c'8[ b a b] g[ a,] bes,8 e16( f) g16([ f e g]) f8[ b,] c8 fis16( g) a([ g fis a]) g( d' g f) } \\
        { <g, d>4 s2 s4 a,4 s4 s4 b,4 s4 } >> e8[ c f, d] g,8[ c16( b,)] c4 <c, g, e c'>2 
    }
}
