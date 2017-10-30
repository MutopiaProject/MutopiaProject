\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
        %1-5
        b4 \TUp e4~^\mordent
        e8 d16 c16 d16 c16 b16 a16
        g4 r8 a'8
        fis8 d8 r4
        r16 d16[ c16 e16] d8 b8_~

        %6-10
        b16 a16 g16 b16 a8 g8_~
        g16 fis16 e16 g16 fis4
        g8 r8 r4
        g16 ( a16 b16 d16 ) \TUp e4~
        e16 d16 cis16 e16 d16 cis16 b16 a16
        
        %11-15
        g4 r8 g'8
        e8 cis8 r4
        r16 a16[ g16 b16] a8 \TDno fis8_~
        fis16 e16 d16 fis16 e8 d8_~
        d16 cis16 b16 d16 cis4
}
        %16-20
        \alternative { { d8 r8 r4 } { d4 r4 } }     

  \repeat volta 2 {
        r16 fis'16[ e16 g16] fis16 e16 d16 cis16
        d4 r8 b8
        g8 e8 a4 ~
        a16 g16 fis16 a16 g16 fis16 e16 dis16

        %21-25    
        e16 b'16 a16 c16 b8 g8 ~
        g16 fis16 e16 g16 fis8 e8 ~
        e16 dis16 cis16 e16 dis4
        e4 \TIna b'4 ~
        b16 a16 g16 b16 a16 g16 fis16 e16

        %26-30   
        d4 g4 ~
        g16 fis16 e16 g16 fis16 e16 d16 c16
        d4 r4
        d'4 f4 ~
        f16 e16 d16 f16 e16 g16 fis16 g16

        %31-32
        a8 \TUpa d,8 ~ d16 c16 b16 a16
    }
        \alternative { { b4 r4 } { b4 r4 } }
 }
