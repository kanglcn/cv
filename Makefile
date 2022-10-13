all: cv_en.pdf cv_cn.pdf clean

cv_en.pdf: en/*.tex
	cd en && latexmk cv.tex

cv_cn.pdf: cn/*.tex
	cd cn && latexmk cv_cn.tex

clean:
	cd en && latexmk -c && rm creationdate.lua creationdate.timestamp cv.bbl pdfa.xmpi
	cd cn && latexmk -c && rm creationdate.lua creationdate.timestamp cv.bbl pdfa.xmpi

