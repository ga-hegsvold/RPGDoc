@ECHO OFF

REM d:\programs\Saxonica\SaxonHE9.4N\bin\Transform.exe -t -s:%1.xsd -xsl:xsd2db.xsl -xsltversion:2.0 -o:%1.xml
REM java net.sf.saxon.Transform -t -s:%1.xsd -xsl:xsd2db.xsl -xsltversion:2.0 -o:%1.xml

IF [%1]==[] GOTO:USAGE
IF [%2]==[] GOTO:USAGE

SET do_DB=xsltproc -o %2_out.xml xsl\%2.xslt %2.xml
SET do_HTML=xsltproc -o %2.html xsl\%2.xslt %2.xml
SET do_FO=xsltproc -o %2.fo xsl\%2.xslt %2.xml
SET do_PDF=fop -fo %2.fo -pdf %2.pdf
SET do_RTF=fop -fo %2.fo -rtf %2.rtf

IF /I %1==DB   GOTO Make_DB
IF /I %1==HTML GOTO Make_HTML
IF /I %1==FO   GOTO Make_FO
IF /I %1==PDF  GOTO Make_PDF
IF /I %1==RTF  GOTO Make_RTF

GOTO:USAGE

:USAGE
echo make ^<option^> ^<filename without extension^>
echo  options:
echo    DB    DocBook XML (needed for all other output formats)
echo    HTML  Hyper Text Markup Language
echo    FO    Formatting Objects (needed for PDF and RTF output)
echo    PDF   Portable Document Format
echo    RTF   Rich Text Format
echo    ALL   All of the above
GOTO:DONE

:Make_DB
echo  generating %2.xml
%do_DB%
GOTO:DONE

:Make_HTML
echo  generating %2.xml
%do_DB%
echo  generating %2.html
%do_HTML%
GOTO:DONE

:Make_FO
echo  generating %2.xml
%do_DB%
echo  generating %2.fo
%do_FO%
GOTO:DONE

:Make_PDF
echo  generating %2.xml
%do_DB%
echo  generating %2.fo
%do_FO%
echo  generating %2.pdf
%do_PDF%
GOTO:DONE

:Make_RTF
echo  generating %2.xml
%do_DB%
echo  generating %2.fo
%do_FO%
echo  generating %2.rtf
%do_RTF%
GOTO:DONE

:DONE
echo All done

GOTO:EOF

:EOF
