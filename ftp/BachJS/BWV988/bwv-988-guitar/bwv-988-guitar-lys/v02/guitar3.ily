\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
        %1-4
        g8[ fis8 g8 e8]   
        fis8[ e8 fis8 d8]
        e8[ d8 e8 c8]
        d8 d,8 d'16 c16 b16 a16

	% 5-8
        b8[ a8 b8 g8]
        c8[ b8 c8 a8]
        d8[ c8 d8 d,8]
        g8[ g'8 b8 d8]

	% 9-12
        g,8[ fis8 g8 e8] 
        fis8[ e8 fis8 d8]    
        e8[ d8 e8 b8]
        cis8[ e16 d16] cis16 b16 a16 g16 

	% 13 -16
        fis8[ e8 fis8 d8] 
        g8[ fis8 g8 e8]
        a8[ g8 a8 a8]   
 }
        %16-20
        \alternative {
	     { d8[ d'16 c!16] d16 c16 b16 a16  }
	     { d,8 a8 d,4 }
	}

 \repeat volta 2 {
        d'8[ cis8 d8 a8]
        b8[ a8 b8 g8]
        c16 c16 b16 d16 c16 b16 a16 c16
        b16 b16 a16 c16 b16 a16 g16 fis16

        %21-25
        g8[ fis8 g8 e8] 
        a8[ g8 a8 fis8]
        b8[ ais8 b8 b8]
        e,16 e'16 dis16 fis16 e16 d16 c16 b16

        c8[ b8 c8 a8]    
        b8[ a8 b8 g8]
        a8[ g8 a8 g8]
        fis16 d'16 c16 e16 d16 c16 b16 a16

        g16 g'16 f16 a16 g16 f16 e16 d16
        c16 c'16 b16 d16 c16 b16 a16 g16   
       fis16 g16 fis16 a16 b,8 d8
    }
        \alternative { { g,8[ g16 fis16] g16 a16 b16 c16 } { g'8 d8 g,4 \bar "|." } }
}
