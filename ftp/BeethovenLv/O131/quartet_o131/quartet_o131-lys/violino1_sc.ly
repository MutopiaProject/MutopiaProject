\include "english.ly"
\include "defs.ly"

\include "1global.ly"
\include "1violino1.ly"

\include "2global.ly"
\include "2violino1.ly"

\include "3global.ly"
\include "3violino1.ly"

\include "4global.ly"
\include "4violino1.ly"

\include "5global.ly"
\include "5violino1.ly"

\include "6global.ly"
\include "6violino1.ly"

\include "7global.ly"
\include "7violino1.ly"

\paper {
	raggedbottom = ##f
	raggedlastbottom = ##f
}

\header {
	instrument = "Violino I"
}

mImyspacing = {
}

mIImyspacing = {
}

mIIImyspacing = {
}

mIVmyspacing = {
	
}

mVmyspacing = {
}

mVImyspacing = {
}

mVIImyspacing = {
}

\book {
	\header { \include "header.ly" }
	
	\score {
		\set Score.skipBars = ##t
		
		\new Staff <<
			\parameters
			\mIbarlines
			\mImyspacing
			\new Voice { \mIViolinOne }
		>>
	}

	\score {
		\new Staff <<
			\parameters
			\mIIbarlines
			\mIImyspacing
			\new Voice { \mIIViolinOne }
		>>
	}

	\score {
		\new Staff <<
			\parameters
			\mIIIbarlines
			\mIIImyspacing
			\new Voice { \mIIIViolinOne }
		>>
	}

	\score {
		\new Staff <<
			\parameters
			\mIVbarlines
			\mIVmyspacing
			\new Voice { \mIVViolinOne }
		>>
	}

	\score {
		\new Staff <<
			\parameters
			\mVbarlines
			\mVmyspacing
			\new Voice { \mVViolinOne }
		>>
	}
	
	\score {
		\new Staff <<
			\parameters
			\mVIbarlines
			\mVImyspacing
			\new Voice { \mVIViolinOne }
		>>
	}
	
	\score {
		\new Staff <<
			\parameters
			\mVIIbarlines
			\mVIIkeychange
			\new Voice { \mVIIViolinOne }
		>>
	}
}
