# The loop below builds the 12 component OTFs, creates subroutinized
# CFFs, and spliced them into the OTFs (and removes the 'DSIG' table):

for style in Sans Serif
do
  makeotf -f cidfont.ps.$style.JP -fi cidfontinfo.$style.JP -ff features.$style.JP -r -nS -omitMacNames -cs 1 -ch UniSourceLOCLTest${style}JP-UTF32-H
  tx -cff +S -no_futile cidfont.ps.$style.JP CFF.$style.JP
  sfntedit -a CFF=CFF.$style.JP -d DSIG SourceLOCLTest${style}JP-Regular.otf
  makeotf -f cidfont.ps.$style.KR -fi cidfontinfo.$style.KR -ff features.$style.KR -r -nS -omitMacNames -cs 3 -ch UniSourceLOCLTest${style}KR-UTF32-H
  tx -cff +S -no_futile cidfont.ps.$style.KR CFF.$style.KR
  sfntedit -a CFF=CFF.$style.KR -d DSIG SourceLOCLTest${style}KR-Regular.otf
  makeotf -f cidfont.ps.$style.CN -fi cidfontinfo.$style.CN -ff features.$style.CN -r -nS -omitMacNames -cs 25 -ch UniSourceLOCLTest${style}CN-UTF32-H
  tx -cff +S -no_futile cidfont.ps.$style.CN CFF.$style.CN
  sfntedit -a CFF=CFF.$style.CN -d DSIG SourceLOCLTest${style}CN-Regular.otf
  makeotf -f cidfont.ps.$style.TW -fi cidfontinfo.$style.TW -ff features.$style.TW -r -nS -omitMacNames -cs 2 -ch UniSourceLOCLTest${style}TW-UTF32-H
  tx -cff +S -no_futile cidfont.ps.$style.TW CFF.$style.TW
  sfntedit -a CFF=CFF.$style.TW -d DSIG SourceLOCLTest${style}TW-Regular.otf
  makeotf -f cidfont.ps.$style.HK -fi cidfontinfo.$style.HK -ff features.$style.HK -r -nS -omitMacNames -cs 2 -ch UniSourceLOCLTest${style}HK-UTF32-H
  tx -cff +S -no_futile cidfont.ps.$style.HK CFF.$style.HK
  sfntedit -a CFF=CFF.$style.HK -d DSIG SourceLOCLTest${style}HK-Regular.otf
  makeotf -f cidfont.ps.$style.MO -fi cidfontinfo.$style.MO -ff features.$style.MO -r -nS -omitMacNames -cs 2 -ch UniSourceLOCLTest${style}MO-UTF32-H
  tx -cff +S -no_futile cidfont.ps.$style.MO CFF.$style.MO
  sfntedit -a CFF=CFF.$style.MO -d DSIG SourceLOCLTest${style}MO-Regular.otf
done

# The command line below creates the 12-font OTC, and forces the CFF of
# the first font to be shared with the other 11 fonts:

otf2otc -t 'CFF '=0 -o SourceLOCLTest-Regular.ttc SourceLOCLTestSansJP-Regular.otf SourceLOCLTestSansKR-Regular.otf SourceLOCLTestSansCN-Regular.otf SourceLOCLTestSansTW-Regular.otf SourceLOCLTestSansHK-Regular.otf SourceLOCLTestSansMO-Regular.otf SourceLOCLTestSerifJP-Regular.otf SourceLOCLTestSerifKR-Regular.otf SourceLOCLTestSerifCN-Regular.otf SourceLOCLTestSerifTW-Regular.otf SourceLOCLTestSerifHK-Regular.otf SourceLOCLTestSerifMO-Regular.otf

# EOF
