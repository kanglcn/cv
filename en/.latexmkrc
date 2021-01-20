# vim: set filetype=perl
$pdf_mode = 1; # using pdflatex

$pdflatex = "pdflatex -file-line-error -synctex=1 -shell-escape %O %S";

# -file-line-error : report error with file name and line number
# -halt-on-error & -interaction-nonstopmode : stop compliling when an error is meeted
# -synctex=1 : open synctex
# -shell-escape : enable latex call system command or software like python, it is demanded by the minted package

$xelatex = "xelatex -file-line-error -halt-on-error -interaction=nonstopmode -no-pdf -synctex=1 -shell-escape %O %S";
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";

# -no-pdf : don't generate pdf file when using xelatex, only xdv file is generated
# xdvipdfmx : using xdvipdfmx to generate pdf file, it will save some time

# $bibtex_use =1.5; # clean bll file

$clean_ext = "synctex.gz xdv xmpi timestamp lua run.xml pdfa.xmpi"; # external clean file
