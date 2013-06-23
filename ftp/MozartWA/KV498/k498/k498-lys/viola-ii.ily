\version "2.16.0"

violaSecondMov =  \relative bes {
    \key bes \major
    \clef alto
    \time 3/4
    \noTupletBracket

    \repeat volta 2 {
	bes2.\f
	| g4 c es
	|  bes8[(  d) f( d es  f)]
	| es2(  d4)
	| bes bes' bes
	| bes2 r4
	| r bes(  g)
	| f2 r4
	| R2.*4
    }

    \repeat volta 2 {
% 13
	| c2.(\f ~
	| c ~
	|  c8[  es) g( es f  g)]
	| f2(  es4)
	| r r bes\p
	| es bes es,
	| R2.

% 20
	| r4 es'(  as)
	| g8 r f r es r
	| f2 r4
	| R2.*4
	|  g,8[(\f fis] g4  a)
	|  bes8[( a d c bes  a)]
	| g4( c  g')

% 30
	| f bes2 ~
	| bes4(\p a  as)
	| g2 des4
	| c2 d!4\f
	| es2 c4
	| d2 g,4 ~
	| g g' f
	| f r r
	| R2.*4
    }

    \repeat volta 2 {
% 42
	R2.
	| \times 2/3 {  d,8[ fis a] } \noTupletNum \times 2/3 {  d[ es
          d]  c[ d c] }
	| \times 2/3 {  bes[ c d]  c[ bes a]  bes[ a g] }
	| \times 2/3 {  d'[ a g]  fis[ g a] } d,4
	| R2.
	| \times 2/3 {  d8[ fis a] } \noTupletNum \times 2/3 {  d[ es
          d]  c[ d c] }
	| \times 2/3 {  bes[ c d]  c[ bes a]  bes[ a g] }
	| f!4 r r

% 50
	| \times 2/3 {  f8[ a c]  f[ g f]  es[ f es] }
	| \times 2/3 {  d[ es f]  es[ d c]  d[ c bes] }
	| a4 r r
	| \times 2/3 {  a8[ cis e]  a[ bes a]  g[ a g] }
	| \times 2/3 {  f[ g a]  g[ f e]  f[ e d] } \tupletNum
	| R2.*2
	| r4 \times 2/3 {  f,8[ as! d] } \noTupletNum \times 2/3 {  f[
          g f] }
	| \times 2/3 {  es![ d c]  es[ f es]  d[ c bes] }
	| \times 2/3 {  d[ es d]  c[ bes a!]  c[ d c] }
	| \times 2/3 {  bes[ a g]  cis[ b cis]  d[ f a] }
	| \times 2/3 {  bes![ g e]  a[ f d]  cis[ b cis] }
	| \times 2/3 {  d[ a g]  f[ g a] } \tupletNum d,4
    }

    \repeat volta 2 {
	r4 r es'4( ~
	| es d b'
	| c d  es)
	| r r des,4( ~
	| des c a'
	| bes c  d)
	| R2.*5

% 74
	| \times 2/3 {  d,,8[ fis a] } \noTupletNum \times 2/3 {  d[ es
          d]  c[ d c] }
	| \times 2/3 {  bes[ c d]  c[ bes a]  bes[ a g] }
	| \times 2/3 {  d'[ a g]  fis[ g a] } d,4 \tupletNum
	| R2.
	| c''4( d  b)
	| c2. ~
	| c ~

% 80
	| c
	| bes4( fis  g)
	| a(  c2)
	| bes4(  d2)
	| R2.*2
	| r4 \times 2/3 {  bes,8[ des g] } \noTupletNum \times 2/3 {
           bes[ c bes] }
	| \times 2/3 {  as[ g f]  as[ bes as]  g[ f es] }
	| \times 2/3 {  g[ as g]  f[ es d!]  f[ g f] }

% 90
	| \times 2/3 {  es[ b c]  es[ d c]  d[ g bes!] }
	| \times 2/3 {  es,[ es' c]  bes[ d bes]  a[ c a] }
	| \times 2/3 {  g[ fis(  g)]  bes[ fis(  g)]  bes[ fis(  g)] }
	| \times 2/3 {  bes[ d bes]  g[ d g]  fis[ e fis] }
	| \times 2/3 {  g[ d c]  bes[ c d] } g,4
    }

    R2.
    | \times 2/3 {  f'!8[ c bes]  a[ bes c] } f,4
    | R2.
    | \times 2/3 {  es''8[\f c bes]  a[ bes c] } f,4
    | \times 2/3 {  es'8[ c bes]  a[ bes c] } f,4

% 100
    | \times 2/3 {  es'8[ c bes]  a[ bes c] } \tupletNum f,4
    | R2.*2
    | bes,2.\f
    | g4 c es
    |  bes8[(  d) f( d es  f)]
    | es2(  d4)
    | bes bes' bes
    | bes2 r4
    | r bes(  g)

% 110
    | f2 r4
    | R2.*4
    | c2.(\f ~
    | c ~
    |  c8[  es) g( es f  g)]
    | f2(  es4)
    | r r bes\p

% 120
    | es bes es,
    | R2.
    | r4 es'(  as)
    | g8 r f r es r
    | f2 r4
    | R2.*4
    |  g,8[(\f fis] g4  a)

% 130
    |  bes8[( a d c bes  a)]
    | g4( c  g')
    | f bes2 ~
    | bes4(\p a  as)
    | g2 des4
    | c2 d!4\f
    | es2 c4
    | d2 g,4 ~
    | g g' f
    | f r r

% 140
    | R2.*3
    | r4 r f\f ~
    | f2 d4(
    |  g,2) \times 2/3 {  c8[( es  g)] }
    |  d8[( f d f es  f)]
    | d4 r r
    | R2.*2

% 150
    | \times 2/3 {  f,8[\p bes d] } \noTupletNum \times 2/3 {  f[ g f]
       es[ f es] } \tupletNum
    | d4 r r
    | R2.*2
    | \times 2/3 {  f,8[\p bes d] } \noTupletNum \times 2/3 {  f[ g f]
       es[ f es] }
    | \times 2/3 {  d[ bes d]  f[ g f]  es[ f es] }
    | \times 2/3 {  d[ bes d]  f[ g f]  es[ f es] }
    | \times 2/3 {  d[ bes d]  f,[\f g f]  es[ f es] }
    | d4 r r \bar "|."
}
