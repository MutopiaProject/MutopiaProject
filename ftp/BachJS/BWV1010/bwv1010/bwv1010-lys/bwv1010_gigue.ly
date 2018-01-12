\version "2.18.2"

gigue = \relative c' {
	\time 12/8
	\key ees \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 {
	    % 1
	    \partial 8 ees8 | ees(d ees) bes(c d) ees(d ees) g(f g) |
	    ees(d ees) bes(c d) ees,4.~ees4 g'8 | f(ees f) bes(g aes) g(f g) ees(f g) |
	    % 4
	    f(ees f) bes(g aes) g(f g) ees(g f) | ees(d ees) c'(a bes) a(g a) f(a f) |
	    ees(d ees) c'(a bes) a(g a) f(a ees) | d(c d) d'(a bes) ees,(d ees) d'(a bes) |
	    % 8
	    f(ees f) d'(a bes) g(f g) d'(a bes) | ees,(d ees) c(ees bes)
		    a(ees' g,) a(ees' f,) | bes(d f bes) d,( f) bes,4.~bes4
	}
	\repeat volta 2 {
	    %11
	    bes'8 | bes(a bes) f(g a) bes(a bes) d(c d) | bes(a bes)
		    f(g a) bes,4.~bes4 d'8 |
	    d(c d) aes!(g aes) f(ees f) b,(f' d') |
	    % 14
	    d(c d) aes(g aes) f(ees f) b,(d f) | ees(d ees) c(ees bes!)
		    aes(c f) aes(c ees,) | d(c d) bes(d aes) g(bes ees) g(bes d,) |
	    c(bes c) aes(c g) f(aes d) f(aes c,) |
	    % 18
	    b(d g) b(d f,) ees(g c) g(c b) |c(b c) g(a b) c(b c) ees(d ees) |
	    c(b c) ees,(f g) c,(ees fis) a(c a) |
	    % 21
	    fis(a c) ees(d c) bes(a g) d(g fis) | g(fis g) bes(fis g)
		    c,(bes c) bes'(fis g) | d(c d) bes'(fis g) ees(d ees) bes'(fis g) |
	    a(c g) fis(c' e,) d(c' e,) fis(c' g) |
	    % 25
	    a(c g) fis(c' e,) d(c' e,) fis(c' d,) | bes'(a g) d(g fis) g(d bes) g4 ees'8 |
	    ees(d ees) bes(c d) ees(d ees) g(f! g) | ees(d ees) bes(c d) ees,4.~ees4 g'8 |
	    % 29
	    f(ees f) bes(g aes) g(f g) ees(f g) | f(ees f) bes(g aes) g(f g) ees(g aes) |
	    bes(aes bes) ees(c des) c(bes c) aes(bes c) | bes(aes bes) ees(c des)
		    c(bes c) aes(bes c) |
	    % 33
	    ges(f ges) ees(d ees) c(bes c) a(c ees) |
	    ges(f ges) ees(d ees) c(bes c) a(c ees) |
	    % 35
	    d(c d) bes(d aes!) g(bes ees) g!(bes des,) |
	    c(bes c) aes(c g) f(aes d) f(aes c,) | bes(aes bes) g(bes f)
		    e(g c) e(g bes,) |
	    % 38
	    aes(g aes) f(aes ees!) d(f bes) d(f aes,) | g(f g) g'(d ees)
		    aes,(g aes) g'(d ees) |
	    % 40
	    bes(aes bes) g'(d ees) c(bes c) g'(d ees) | aes(g aes) f(aes ees)
		    d(aes' c,) d(aes' bes,) | ees(g bes ees) g,,( bes) ees,4.~ees4
	}
}
