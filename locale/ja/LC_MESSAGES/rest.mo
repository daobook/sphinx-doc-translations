Þ          T                Ð     R   ^	    ±	  À   ¿
  B     =   Ã  c     b   e  B   È  .     @   :  ;   {  V   ·  '     ±   6  <   è  2   %  C   X  G     !   ä  G     #   N  B   r  D   µ  ;   ú  ;   6  9   r  %   ¬  )   Ò  R   ü  ®   O  7   þ     6    P  G  b  Å   ª  -   p  g     	          K     
   e  @   p  R   ±  +        0     Ï     ß  	   î  ¿   ø     ¸     À  
   Ð     Û  N   l  7   »  ^   ó  z  R      Í     î     õ     ý       y          4  ¨  N   Ý  Ó   ,         í      o   
!  Ú   z!  5   U"  :   "  ×   Æ"  
   #  x   ©#  ¯   "$     Ò$  3   Û$  Y   %  4  i%  e   &     '     '      '     4'  L   D'  Y   '  Ç  ë'     ³)  ¾   K*  +   
+     6+     D+     K+  Ò   Í+  a    ,  +   -  .  .-  4   ].  5   .  N   È.  D   /    \/     j0  Ï   1     Ñ1  B  k2  p   ®3  h   4  F   4     Ï4     å4  !   5     &5     =5     Q5  R  k5  *   ¾6  C   é6  .   -7  (   \7     7     7  0   +8  *   \8  	   8  <   8  /  Î8  à   þ9  G   ß:     ';  ?   ?;    ;  F  =     c>  Ä  é>    ®@  @   ÅA  >   B     EB  m   ÊB  E   8C  ?   ~C  J   ¾C  B   	D  ^   LD  6   «D  É   âD  C   ¬E  2   ðE  h   #F  ]   F  +   êF  Q   G  2   hG  X   G  M   ôG  4   BH  4   wH  2   ¬H  &   ßH  (   I  J   /I    zI  a   J     ïJ  3  K    :L  =  ÂN  E    P     FP     ÒP     ÙP  \   æP     CQ  x   YQ  y   ÒQ  ?   LR  ®   R     ;S     ZS     jS    qS     T  
   T     ¨T  Y  ¾T     V  ~   V  Ã   W  P  ÞW     /Z     ±Z     ¸Z     ÆZ  !   æZ  Æ   [     Ï[    ß[     æ]  o  n^  *   Þ_  X  	`     ba    éa  u   mc  `   ãc  ¯  Dd     ôe     f  q  f     h  m   h  x   h  ü  ÿh  ß   üj     Ük  !   ïk     l     1l     Hl     Ùl    bm    öo  <  q  A   Pr     r     r  ä   ¦r  æ   s  Ì   rt  ;   ?u  É  {u  O   Ew  :   w  e   Ðw  V   6x    x  â   z  Ë  ðz    ¼|    Ò}  ¬   e                  &   7  &   ^          ¢  "   ¹    Ü  R   è     ;  3   Ð  5     '   :  d  b  F   Ç  6     )   E  E   o  ç  µ  ;       Ù     e  J   |   "Explicit markup" (:duref:`ref <explicit-markup-blocks>`) is used in reST for most constructs that need special handling, such as footnotes, specially-highlighted paragraphs, comments, and generic directives. **No nested inline markup:** Something like ``*see :func:`foo`*`` is not possible. **Separation of inline markup:** As said above, inline markup spans must be separated from the surrounding text by non-word characters, you have to use a backslash-escaped space to get around that.  See :duref:`the reference <substitution-definitions>` for the details. *Simple tables* (:duref:`ref <simple-tables>`) are easier to write, but limited: they must contain more than one row, and the first column cannot contain multiple lines.  They look like this:: :dudir:`class` (assign a class attribute to the next element) [1]_ :dudir:`compound <compound-paragraph>` (a compound paragraph) :dudir:`container` (a container with a custom class, useful to generate an outer ``<div>`` in HTML) :dudir:`contents <table-of-contents>` (a local, i.e. for the current file only, table of contents) :dudir:`csv-table` (a table generated from comma-separated values) :dudir:`default-role` (set a new default role) :dudir:`epigraph` (a block quote with optional attribution line) :dudir:`figure` (an image with caption and optional legend) :dudir:`highlights`, :dudir:`pull-quote` (block quotes with their own class attribute) :dudir:`image` (see also Images_ below) :dudir:`include` (include reStructuredText from another file) -- in Sphinx, when given an absolute include file path, this directive takes it as relative to the source directory :dudir:`list-table` (a table generated from a list of lists) :dudir:`meta` (generation of HTML ``<meta>`` tags) :dudir:`parsed-literal` (literal block that supports inline markup) :dudir:`raw <raw-data-pass-through>` (include raw target-format markup) :dudir:`role` (create a new role) :dudir:`rubric` (a heading without relation to the document sectioning) :dudir:`table` (a table with title) :dudir:`title <metadata-document-title>` (override document title) :dudir:`topic`, :dudir:`sidebar` (special highlighted body elements) :durole:`emphasis` -- alternate spelling for ``*emphasis*`` :durole:`literal` -- alternate spelling for ````literal```` :durole:`strong` -- alternate spelling for ``**strong**`` :durole:`subscript` -- subscript text :durole:`superscript` -- superscript text :durole:`title-reference` -- for titles of books, periodicals, and other materials A directive (:duref:`ref <directives>`) is a generic block of explicit markup. Besides roles, it is one of the extension mechanisms of reST, and Sphinx makes heavy use of it. Added the support for file names ending in an asterisk. Additional body elements: Admonitions: :dudir:`attention`, :dudir:`caution`, :dudir:`danger`, :dudir:`error`, :dudir:`hint`, :dudir:`important`, :dudir:`note`, :dudir:`tip`, :dudir:`warning` and the generic :dudir:`admonition <admonitions>`.  (Most themes style only "note" and "warning" specially.) An explicit markup block begins with a line starting with ``..`` followed by whitespace and is terminated by the next paragraph at the same level of indentation.  (There needs to be a blank line between explicit markup and normal paragraphs.  This may all sound a bit complicated, but it is intuitive enough when you write it.) Basically, a directive consists of a name, arguments, options and content. (Keep this terminology in mind, it is used in the next chapter describing custom directives.)  Looking at this example, :: Be aware of some restrictions of this markup: Citation usage is similar to footnote usage, but with a label that is not numeric or begins with ``#``. Citations Comments Definition lists (:duref:`ref <definition-lists>`) are created as follows:: Directives Directives added by Sphinx are described in :ref:`sphinxmarkup`. Do *not* use the directives :dudir:`sectnum`, :dudir:`header` and :dudir:`footer`. Docutils supports the following directives: Every explicit markup block which isn't a valid markup construct (like the footnotes above) is regarded as a comment (:duref:`ref <comments>`).  For example:: Explicit Markup External links Footnotes For footnotes (:duref:`ref <footnotes>`), use ``[#name]_`` to mark the footnote location, and add the footnote body at the bottom of the document after a "Footnotes" rubric heading, like so:: Gotchas HTML specifics: Hyperlinks If asterisks or backquotes appear in running text and could be confused with inline markup delimiters, they have to be escaped with a backslash. If it is preceded by non-whitespace, the marker is replaced by a single colon. If it is preceded by whitespace, the marker is removed. If it occurs as a paragraph of its own, that paragraph is completely left out of the document. If you want to use some substitutions for all documents, put them into :confval:`rst_prolog` or put them into a separate file and include it into all documents you want to use them in, using the :rst:dir:`include` directive.  (Be sure to give the include file a file name extension differing from that of other source files, to avoid Sphinx finding it as a standalone document.) Image paths can now be absolute. Images Images: Influencing markup: Inline markup Internal linking is done via a special reST role provided by Sphinx, see the section on specific markup, :ref:`ref-role`. Internal links Interpretation of image size options (``width`` and ``height``) is as follows: if the size has no unit or the unit is pixels, the given size will only be respected for output channels that support pixels (i.e. not in LaTeX output). Other units (like ``pt`` for points) will be used for HTML and LaTeX output. Line blocks (:duref:`ref <line-blocks>`) are a way of preserving line breaks:: List markup (:duref:`ref <bullet-lists>`) is natural: just place an asterisk at the start of a paragraph and indent properly.  The same goes for numbered lists; they can also be autonumbered using a ``#`` sign:: Lists and Quote-like blocks Literal code blocks (:duref:`ref <literal-blocks>`) are introduced by ending a paragraph with the special marker ``::``.  The literal block must be indented (and, like all paragraphs, separated from the surrounding ones by blank lines):: Nested lists are possible, but be aware that they must be separated from the parent list items by blank lines:: Normally, there are no heading levels assigned to certain characters as the structure is determined from the succession of headings.  However, for the Python documentation, this convention is used which you may follow: Note that image file names should not contain spaces. Note that the term cannot have more than one line of text. Of course, you are free to use your own marker characters (see the reST documentation), and use a deeper nesting level, but keep in mind that most target formats (HTML, LaTeX) have a limited supported nesting depth. Paragraphs Quoted paragraphs (:duref:`ref <block-quotes>`) are created by just indenting them more than the surrounding paragraphs. Section headers (:duref:`ref <sections>`) are created by underlining (and optionally overlining) the section title with a punctuation character, at least as long as the text:: Sections See :ref:`inline-markup` for roles added by Sphinx. See the :duref:`reST reference for substitutions <substitution-definitions>` for details. Since the easiest way to include special characters like em dashes or copyright signs in reST is to directly write them as Unicode characters, one has to specify an encoding.  Sphinx assumes source files to be encoded in UTF-8 by default; you can change this with the :confval:`source_encoding` config value. Since these are only per-file, better use Sphinx' facilities for setting the :confval:`default_role`. Source Code Source encoding Special directives: Special tables: Sphinx defines some default substitutions, see :ref:`default-substitutions`. Sphinx extends the standard docutils behavior by allowing an asterisk for the extension:: Sphinx then searches for all images matching the provided pattern and determines their type.  Each builder then chooses the best image out of these candidates. For instance, if the file name ``gnu.*`` was given and two files :file:`gnu.pdf` and :file:`gnu.png` existed in the source tree, the LaTeX builder would choose the former, while the HTML builder would prefer the latter. Supported image types and choosing priority are defined at :ref:`builders`. Sphinx will automatically copy image files over to a subdirectory of the output directory on building (e.g. the ``_static`` directory for HTML output.) Standard reST citations (:duref:`ref <citations>`) are supported, with the additional feature that they are "global", i.e. all citations can be referenced from all files.  Use them like so:: Standard reST provides the following roles: Substitutions Tables That way, the second sentence in the above example's first paragraph would be rendered as "The next paragraph is a code sample:". The authoritative `reStructuredText User Documentation <http://docutils.sourceforge.net/rst.html>`_.  The "ref" links in this document link to the description of the individual constructs in the reST reference. The directive content follows after a blank line and is indented relative to the directive start. The handling of the ``::`` marker is smart: The paragraph (:duref:`ref <paragraphs>`) is the most basic block in a reST document.  Paragraphs are simply chunks of text separated by one or more blank lines.  As in Python, indentation is significant in reST, so all lines of the same paragraph must be left-aligned to the same level of indentation. The standard reST inline markup is quite simple: use There are also several more special blocks available: There are some problems one commonly runs into while authoring reST documents: These restrictions may be lifted in future versions of the docutils. This section is a brief introduction to reStructuredText (reST) concepts and syntax, intended to provide authors with enough information to author documents productively.  Since reST was designed to be a simple, unobtrusive markup language, this will not take too long. Two forms of tables are supported.  For *grid tables* (:duref:`ref <grid-tables>`), you have to "paint" the cell grid yourself.  They look like this:: Use ```Link text <http://example.com/>`_`` for inline web links.  If the link text should be the web address, you don't need special markup at all, the parser finds links and mail addresses in ordinary text. When the default domain contains a :rst:dir:`class` directive, this directive will be shadowed.  Therefore, Sphinx re-exports it as :rst:dir:`rst-class`. When used within Sphinx, the file name given (here ``gnu.png``) must either be relative to the source file, or absolute which means that they are relative to the top source directory.  For example, the file ``sketch/spam.rst`` could refer to the image ``images/spam.png`` as ``../images/spam.png`` or ``/images/spam.png``. You can also explicitly number the footnotes (``[1]_``) or use auto-numbered footnotes without names (``[#]_``). You can also separate the link and the target definition (:duref:`ref <hyperlink-targets>`), like this:: You can indent text after a comment start to form multiline comments:: ``"``, for paragraphs ``#`` with overline, for parts ``*`` with overline, for chapters ``-``, for subsections ``=``, for sections ``^``, for subsubsections ``function`` is the directive name.  It is given two arguments here, the remainder of the first line and the second line, as well as one option ``module`` (as you can see, options are given in the lines immediately following the arguments and indicated by the colons).  Options must be indented to the same level as the directive content. backquotes: ````text```` for code samples. content may not start or end with whitespace: ``* text*`` is wrong, doctest blocks (:duref:`ref <doctest-blocks>`) field lists (:duref:`ref <field-lists>`) it may not be nested, it must be separated from surrounding text by non-word characters.  Use a backslash escaped space to work around that: ``thisis\ *one*\ word``. one asterisk: ``*text*`` for emphasis (italics), option lists (:duref:`ref <option-lists>`) or this:: quoted literal blocks (:duref:`ref <quoted-literal-blocks>`) reST also allows for custom "interpreted text roles", which signify that the enclosed text should be interpreted in a specific way.  Sphinx uses this to provide semantic markup and cross-referencing of identifiers, as described in the appropriate section.  The general syntax is ``:rolename:`content```. reST supports "substitutions" (:duref:`ref <substitution-definitions>`), which are pieces of text and/or markup referred to in the text by ``|name|``.  They are defined like footnotes with explicit markup blocks, like this:: reST supports an image directive (:dudir:`ref <image>`), used like so:: reStructuredText Primer two asterisks: ``**text**`` for strong emphasis (boldface), and Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2015-09-13 06:04+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Japanese (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/ja/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 "æç¤ºçãªãã¼ã¯ã¢ãã"(:duref:`ref <explicit-markup-blocks>`)ã¨ããã®ã¯ãreSTã®ä¸­ã§ã¯ç¹å¥ãªæä½ã®å¿è¦ãªå¤ãã®æ§æè¦ç´ ã®ããã«ä½¿ç¨ããã¾ããä¾ãã°èæ³¨ããè¨èªå¥ã®ãã¤ã©ã¤ããããç¹å¥ãªæ®µè½ãã³ã¡ã³ããå¦çç³»(Sphinx)ã«å¯¾ããæç¤ºãªã©ã§ãã **ã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ããã®ãã¹ãã¯ã§ããªã:** ``*:func:`foo`* åç§`` ã¨ãã£ãæ¸ãæ¹ã¯ã§ãã¾ããã **ã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ããã®åé¢:** ä¸è¨ã®èª¬æã§ãè§¦ãã¦ãã¾ãããã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ãããä»ããé åã®åå¾ã¯ãã­ã¹ãä»¥å¤ã®æå­(ã¹ãã¼ã¹ãã«ãã³ãªã©)ããããã¯ã¹ã©ãã·ã¥(æ¥æ¬èªãã©ã³ãã ã¨åè¨å·)ã§ã¨ã¹ã±ã¼ãããã¹ãã¼ã¹ã§ãããå¿è¦ãããã¾ããè©³ããã¯ã  :duref:`the reference <substitution-definitions>` ãåç§ãã¦ãã ããã **ã·ã³ãã«ãã¼ãã«** (:duref:`ref <simple-tables>`)ã¯ããæ¸ãã®ãç°¡åãªæ¹æ³ã§ãããå¶éãããã¾ãã1ã¤ä»¥ä¸ã®åãå«ã¿ãæåã®ã«ã©ã ã«ã¯è¤æ°è¡ã®ãã­ã¹ããæ¸ããã¨ãã§ãã¾ãããæ¬¡ã®ããã«è¡¨ç¾ããã¾ã:: :dudir:`class` (æ¬¡ã®è¦ç´ ã¸ã®ã¯ã©ã¹å±æ§ã®è¨­å®) [1]_ :dudir:`compound <compound-paragraph>` (è¤åãã©ã°ã©ã) :dudir:`container` (ã«ã¹ã¿ã ã®ã¯ã©ã¹ãä»å ã§ããã³ã³ãããHTMLã§å¤é¨ã® ``<div>`` ãçæããã®ã«ä¾¿å©) :dudir:`contents <table-of-contents>` (ã­ã¼ã«ã«ãªãã¤ã¾ãç¾å¨ã®ãã¡ã¤ã«åã ãã®ãç®æ¬¡) :dudir:`csv-table` (ã«ã³ãåºåãã®å¤ãããã¼ãã«çæ) :dudir:`default-role` (ããã©ã«ãã®ã­ã¼ã«ãã»ãã) :dudir:`epigraph` (è¿½å ã®å±æ§è¡ãä»å ã§ãããã­ãã¯å¼ç¨) :dudir:`figure` (ã­ã£ãã·ã§ã³ãåä¾ãå«ãã¤ã¡ã¼ã¸) :dudir:`highlights`, :dudir:`pull-quote` (ç¹æã®ã¯ã©ã¹å±æ§ãæã¤ãã­ãã¯å¼ç¨) :dudir:`image` (`ç»å`_ ãåç§ãã¦ãã ãã) :dudir:`include` (ä»ã®ãã¡ã¤ã«ããreStructuredTextãåãè¾¼ã¿) -- Sphinxã§ã¯ãçµ¶å¯¾ãã¹ãæå®ãããã¨ãã½ã¼ã¹ãã£ã¬ã¯ããªããã®ç¸å¯¾ãã¹ãå©ç¨ããã¾ãã :dudir:`list-table` (ãªã¹ãã®ãªã¹ããããã¼ãã«çæ) :dudir:`meta` (HTMLã® ``<meta>`` ã¿ã°ã®çæ) :dudir:`parsed-literal` (ã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ããããµãã¼ããããªãã©ã«ãã­ãã¯) :dudir:`raw <raw-data-pass-through>` (ã¿ã¼ã²ããã®æ¸å¼ã®ãã¼ã¯ã¢ãããæ¿å¥) :dudir:`role` (æ°ããã­ã¼ã«ã®ä½æ) :dudir:`rubric` (ãã­ã¥ã¡ã³ãã®ã»ã¯ã·ã§ã³ã¨é¢ä¿ã®ãªãè¦åºã) :dudir:`table` (ã¿ã¤ãã«ä»ãã®ãã¼ãã«) :dudir:`title <metadata-document-title>` (ãã­ã¥ã¡ã³ãã®ã¿ã¤ãã«ã®ä¸æ¸ã) :dudir:`topic`, :dudir:`sidebar` (ç¹å¥ã«å¼·èª¿ããããªããã£è¦ç´ ) :durole:`emphasis` -- ``*emphasis*`` ã®ä»£æ¿è¡¨ç¾ :durole:`literal` -- ````literal```` ã®ä»£æ¿è¡¨ç¾ :durole:`strong` -- ``**strong**`` ã®ä»£æ¿è¡¨ç¾ :durole:`subscript` -- ä¸ä»ãæå­ :durole:`superscript` -- ä¸ä»ãæå­ :durole:`title-reference` -- æ¸ç±ãå®æåè¡ç©ãªã©ã®ã¿ã¤ãã« ãã£ã¬ã¯ãã£ã(:duref:`ref <directives>`)ã¯æ±ç¨ã®æç¤ºçãã¼ã¯ã¢ããã§ããreSTã®æ¡å¼µã®ããã®ã¡ã«ããºã ã®ä¸ã¤ã§ãã­ã¼ã«ãæå®ããããã¨ãããã¾ããSphinxã¯ãã®ãã£ã¬ã¯ãã£ããããªãå¤ç¨ãã¦ãã¾ãã ãã¡ã¤ã«åã®æ«å°¾ãã¢ã¹ã¿ãªã¹ã¯ï¼*ï¼ã«ã§ããæ©è½ãè¿½å ããã¾ããã è¿½å ã®æ¬ä½è¦ç´ : è­¦å: :dudir:`attention`, :dudir:`caution`, :dudir:`danger`, :dudir:`error`, :dudir:`hint`, :dudir:`important`, :dudir:`note`, :dudir:`tip`, :dudir:`warning` ,ããã³ãä¸è¬çãªç¨éã® :dudir:`admonition` (ã»ã¨ãã©ã®ãã¼ãã¯ã"note"ã¨"warning"ã«ã ãã¹ã¿ã¤ã«ãé©ç¨ãã¾ã)ã æç¤ºçãªãã¼ã¯ã¢ããã®ãã­ãã¯ã¯ ``..`` ã§å§ã¾ãè¡ããå§ã¾ãã¾ããåé ­ã®è¨å·ã®å¾ãã«ã¯ãã¯ã¤ãã¹ãã¼ã¹ãä¸ã¤å¥ãã¾ããããã¦ãã¤ã³ãã³ããåãã¬ãã«ã«ãªãæ¬¡ã®æ®µè½ã¾ã§ãï¼ã¤ã®ãã­ãã¯ã¨ãã¦æ±ããã¾ããéå¸¸ã®ãã©ã°ã©ãã¨ãæç¤ºçãªãã¼ã¯ã¢ããã®ãã­ãã¯ã®éã«ã¯ä¸è¡ä»¥ä¸ã®ã¹ãã¼ã¹ãç©ºããå¿è¦ãããã¾ãããã®ãããªèª¬æãèãã¨ãããã«ããã¨æããäººãå¤ãã¨æãã¾ãããå®éã«èªåã§æ¸ãã¦ã¿ãã¨ååã«ç´æçã§ããã¨ãããã¨ããããã§ãããã åºæ¬çã«ããã£ã¬ã¯ãã£ãã¯ååãå¼æ°ããªãã·ã§ã³ãã³ã³ãã³ããªã©ã§æ§æããã¦ãã¾ãããããã®ç¨èªãè¦ãã¦ããã¦ãã ããããããã¯æ¬¡ã®ç« ã§ã«ã¹ã¿ã ãã£ã¬ã¯ãã£ãã®ç´¹ä»ãè¡ãéã«å©ç¨ãã¾ããä»¥ä¸ã«ãµã³ãã«ãç¤ºãã¾ã:: ãã®ãã¼ã¯ã¢ããã«ã¯ããã¤ãã®å¶éãããã¾ãã å¼ç¨ã¯ãèæ³¨ã¨åãããã«ä½¿ç¨ã§ãã¾ãããã©ãã«ã¯æ°å­ã§ã¯ããã¾ãããã ``#`` ã§ãå§ã¾ãã¾ããã å¼ç¨ ã³ã¡ã³ã å®ç¾©ãªã¹ã(:duref:`ref <definition-lists>`)ã¯ä»¥ä¸ã®ããã«ãã¦ä½æãã¾ã:: ãã£ã¬ã¯ãã£ã Sphinxã«ãã£ã¦è¿½å ããããã£ã¬ã¯ãã£ãã«é¢ãã¦ã¯ :ref:`sphinxmarkup` ãåç§ãã¦ãã ããã :dudir:`sectnum`, :dudir:`header`, :dudir:`footer` ã®3ã¤ã®ãã£ã¬ã¯ãã£ãã¯ä½¿ç¨ **ããªã** ã§ä¸ããã Docutilsã¯æ¬¡ã®ãããªãã£ã¬ã¯ãã£ããå«ã¿ã¾ã: ä¸è¨ã®èæ³¨ã®ãããªé©åãªæ§é ããã¦ããªãæç¤ºçãã¼ã¯ã¢ããã®ãã­ãã¯ã¯ãã¹ã¦ã³ã¡ã³ã(:duref:`ref <comments>`)ã¨ã¿ãªããã¾ã:: æç¤ºçãªãã¼ã¯ã¢ãã å¤é¨ãªã³ã¯ èæ³¨ èæ³¨(:duref:`ref <footnotes>`)ãä½æããããã«ã¯ãèæ³¨ãæ¸ãããå ´æã§ ``[#name]_`` ã¨ãããã¼ã¯ã¢ãããæ¸ãã¾ããããã¦ãèæ³¨ã®æ¬ä½ããã­ã¥ã¡ã³ãã®ä¸ã®æ¹ã® "èæ³¨" ã®ããã®rubricè¦åºãã®ä¸­ã«æ¸ãã¾ã:: åãã£ã¦ãããã¨ HTMLå®ç¾© ãã¤ãã¼ãªã³ã¯ ããããã¢ã¹ã¿ãªã¹ã¯ãããã¯ã¯ãªã¼ãããã­ã¹ãä¸­ã«ä½¿ç¨ããå ´åã¯ãã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ããã®åºåãæå­ã¨ééã£ã¦ãã¾ããã¨ãããã¾ãããã®ãããªå ´åã«ã¯ãããã¯ã¹ã©ãã·ã¥(è¨³æ³¨:æ¥æ¬èªãã©ã³ãã ã¨åè¨å·)ãä½¿ã£ã¦ã¨ã¹ã±ã¼ããã¦ãã ããã ããããã¼ã«ã¼ã®åããã¯ã¤ãã¹ãã¼ã¹ä»¥å¤ã ã£ãå ´åã«ã¯ãã³ã­ã³(:)1ã¤ã ããè¡¨ç¤ºããã¾ãã ããããã¼ã«ã¼ã®åããã¯ã¤ãã¹ãã¼ã¹ã ã£ãå ´åã«ã¯ããã¼ã«ã¼èªèº«ã¯éè¡¨ç¤ºã«ãªãã¾ãã ãããã¼ã«ã¼ããªãã©ã«ã³ã¼ããã­ãã¯ã®ãã©ã°ã©ãã®ä¸­ã«åºã¦ããå ´åã«ã¯ããã®ãã©ã°ã©ãã¯å®å¨ã«ãã®ã¾ã¾ãã­ã¥ã¡ã³ãä¸­ã«æ®ããã¾ãã ããã¤ãã®ç½®æããã¹ã¦ã®ãã­ã¥ã¡ã³ãã§ä½¿ç¨ãããå ´åã«ã¯ãç½®æã®å®£è¨ãå¥ã®ãã¡ã¤ã«ã«åãåºãã¦ã :confval:`rst_prolog` ã«æ¸ããããã®ç½®æãè¡ããããã¹ã¦ã®ãã­ã¥ã¡ã³ãã®åé ­ã§ :rst:dir:`include` ãã£ã¬ã¯ãã£ããä½¿ç¨ãã¦ã¤ã³ã¯ã«ã¼ãããæ¹æ³ãããã¾ãããã®å ´åã¯ãä»ã®ã½ã¼ã¹ãã¡ã¤ã«ã¨ã¯å¥ã®æ¡å¼µå­ãä»ããããã«ãã¾ããããåãæ¡å¼µå­ã«ããã¨ãSphinxã¯ãªã³ã¯ããã¦ããªããã­ã¥ã¡ã³ãã¨ãã¦è­¦åãåºåãã¦ãã¾ãã¾ãã ã¤ã¡ã¼ã¸ãã¹ã¨ãã¦ãã½ã¼ã¹ãã©ã«ãã®ã«ã¼ãããã®çµ¶å¯¾ãã¹ãæå®ã§ããããã«ãªãã¾ããã ç»å ã¤ã¡ã¼ã¸: çä¼¼å½ä»¤ãã¼ã¯ã¢ãã: ã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ãã åé¨ãªã³ã¯ã¯Sphinxã®æä¾ãããç¹å¥ãªreSTã®ã­ã¼ã«ãéãã¦è¡ããã¾ããè©³ããã¯ãç¹å¥ãªãã¼ã¯ã¢ãã :ref:`ref-role` ã®ã»ã¯ã·ã§ã³ãè¦ã¦ãã ããã åé¨ãªã³ã¯ ç»åãµã¤ãºã®ãªãã·ã§ã³(``width`` ã¨ ``height``)ã¯ä»¥ä¸ã®ããã«è§£éããã¾ããããpxãªã©ã®åä½ãç¡ãããããã¯åä½ããã¯ã»ã«(px)ã®å ´åããã«ãã¼ããã®åä½ããµãã¼ããã¦ãããã©ãããã§ãã¯ãã¾ããä¾ãã°ãLaTeXãã«ãã¼ã¯åä½ç¡æå®ã¨pxããµãã¼ããã¦ããªããããµã¤ãºæå®ã¯ç¡è¦ããã¾ããæ¯çæå® ``%`` ãä»ã®åä½(ãã¤ã³ããè¡¨ã ``pt`` ãªã©)ã¯HTMLã§ãLaTeXã§ãä½¿ç¨ã§ãã¾ãã ã©ã¤ã³ãã­ãã¯(:duref:`ref <line-blocks>`)ãå©ç¨ããã¨ãæ¹è¡ç¶æããã®ã¾ã¾ç¶­æããã¾ã¾åºåã§ãã¾ã:: ãªã¹ããè¡¨ç¾ãããã¼ã¯ã¢ãã (:duref:`ref <bullet-lists>`) ã¯ã»ã¼çµæã®è¦ãç®éãã§ãããã©ã°ã©ãã®æåãã¢ã¹ã¿ãªã¹ã¯ã§éå§ãã¦ãé©åã«ã¤ã³ãã³ãããã¦ããã ãã§ãããã³ãã¼ä»ãã®ãªã¹ããåæ§ã§ãã ``#`` ãä½¿ããã¨ã§ããã³ããªã³ã°ãèªåã§è¡ããã¨ãã§ãã¾ã:: ãªã¹ãã¨å¼ç¨ã®ãããªãã­ãã¯ ãªãã©ã«ã³ã¼ããã­ãã¯(:duref:`ref <literal-blocks>`)ã¯ãåã®æ®µè½ã®è¡æ«ãç¹å¥ãªè¨å· ``::`` ã«ãããã¨ã§éå§ãããã¨ãã§ãã¾ãããªãã©ã«ã³ã¼ããã­ãã¯ã¯ã¤ã³ãã³ãããå¿è¦ãããã¾ããã¾ããä»ã®ãã©ã°ã©ãåæ§ãç©ºç½è¡ã§åå¾ããããå¿è¦ãããã¾ã:: ãã¹ãããããªã¹ããä½¿ç¨ãããã¨ãã§ãã¾ãããè¦ªã®ãªã¹ãã¨ã¯ç©ºç½è¡ã§åºåãå¿è¦ãããã¾ã:: éå¸¸ã¯ãæå­ã®ç¨®é¡ã¨è¦åºãã®ã¬ãã«ã¯é¢ä¿ãªããããã©ã®æå­ã§ãä½¿ç¨ãããã¨ãã§ãã¾ããä½¿ç¨ãã¦ããªãç¨®é¡ã®ã¢ã³ãã¼ã©ã¤ã³ãåºã¦ããã¨ãè¦åºãã®ã¬ãã«ãä¸æ®µå¤ãããã¨ããã«ã¼ã«ã«ãªã£ã¦ãã¾ããåèã¾ã§ã«ãPythonãã­ã¥ã¡ã³ãã§ä½¿ã£ã¦ããæ£ä¾ã«ã¤ãã¦ç´¹ä»ãã¦ããã¾ã ç»åãã¡ã¤ã«ã®ãã¡ã¤ã«åã«ã¯ã¹ãã¼ã¹ãå«ãã§ã¯ãããªããã¨ã«æ³¨æãã¦ãã ããã ç¨èªã®ãã­ã¹ãã¯è¤æ°è¡æ¸ããã¨ãã§ããªããã¨ã«æ³¨æãã¦ãã ããã ãã¡ãããã©ã®ãããªãã¼ã¯ã¢ããæå­ãé¸æãã¦ãèªç±ã§ãããçµã¿åããããã¨ã§ãããæ·±ãããã¹ãã¬ãã«ãä½¿ç¨ãããã¨ãã§ãã¾ããreSTã®æç« ãåç§ãã¦ãã ããããã ããã»ã¨ãã©ã®å¯¾è±¡ã¨ãªãåºåãã©ã¼ããã(HTML, LaTeX)ã¯ããã¹ãã§ããæ·±ãã«ã¯éçãè¨­å®ããã¦ãããã¨ãããã¨ã¯å¿ããªãã§ãã ããã æ®µè½(ãã©ã°ã©ã) å¼ç¨ãã©ã°ã©ã(:duref:`ref <block-quotes>`)ã¯å¨å²ã®ãã©ã°ã©ããããã¤ã³ãã³ããããã¨ã§ä½æã§ãã¾ãã ã»ã¯ã·ã§ã³ã®ããã(:duref:`ref <sections>`)ã¯ãã»ã¯ã·ã§ã³ã®ã¿ã¤ãã«ãå¥èª­ç¹ãªã©ã®è¨å·ã®æå­ã§ã¢ã³ãã¼ã©ã¤ã³ãå¼ããã¨ã§è¨­å®ãã¾ããå¿è¦ã«å¿ãã¦ã§ãªã¼ãã¼ã©ã¤ã³ãä½µç¨ãããã¨ãã§ãã¾ããã¢ã³ãã¼ã©ã¤ã³ã¯ãã­ã¹ãã¨åãããããä»¥ä¸ã®é·ãã«ããå¿è¦ãããã¾ã:: ã»ã¯ã·ã§ã³ Sphinxã«ãã£ã¦è¿½å ãããã­ã¼ã«ã«é¢ãã¦ã¯ :ref:`inline-markup` ãåç§ãã¦ãã ããã è©³ããã¯ :duref:`reSTãªãã¡ã¬ã³ã¹ã®ç½®æã®èª¬æ <substitution-definitions>` ãåç§ãã¦ãã ããã ã¨ã ããã·ã¥(ã¢ã«ãã¡ãããã®Mã¨åãå¹ãæã¤ããã·ã¥)ããã³ãã¼ã©ã¤ãã®è¨å·ãªã©ã®ç¹æ®è¨å·ãreSTã«å¥ããå ´åã«ã¯ã¦ãã³ã¼ãã®æå­ã¨ãã¦ç´æ¥å¥ããã®ãä¸çªç°¡åãªæ¹æ³ã§ããSphinxã¯ããã©ã«ãã§ã¯ãUTF-8ã§ããã¨ã¿ãªããã¦ã½ã¼ã¹ã³ã¼ããèª­ã¿è¾¼ã¿ã¾ãã :confval:`source_encoding` ã®è¨­å®å¤ãå¤æ´ãããã¨ã§ããã®ããã©ã«ãã®ã¨ã³ã³ã¼ãã£ã³ã°ãå¤æ´ãããã¨ãã§ãã¾ãã ãããã®ãã¼ã¯ã¢ããã®å½±é¿ç¯å²ã¯ããã®ãã¼ã¯ã¢ãããæ¸ããããã¡ã¤ã«ã ãã«éå®ããããããSphinxãæä¾ãã :confval:`default_role` ãè¨­å®ããæ¹ãè¯ãã§ãããã ã½ã¼ã¹ã³ã¼ã ã½ã¼ã¹ã¨ã³ã³ã¼ãã£ã³ã° ç¹å¥ãªãã£ã¬ã¯ãã£ã: ç¹å¥ãªãã¼ãã«: Sphinxã¯ããã©ã«ãã®ç½®æãããã¤ãå®ç¾©ãã¦ãã¾ããè©³ããã¯ :ref:`default-substitutions` ãåç§ãã¦ãã ããã Sphinxã¯æ¨æºã®docutilsãæ¡å¼µãã¦ãã¦ãæ¡å¼µå­ã¨ãã¦ã¢ã¹ã¿ãªã¹ã¯(*)ãåãåããããã«ãªã£ã¦ãã¾ã:: ã¢ã¹ã¿ãªã¹ã¯ãæå®ãããã¨ãSphinxã¯æå®ããããã¿ã¼ã³ã«ããããããã¹ã¦ã®ç»åãã©ã¼ããããæ¤ç´¢ãã¦ãä½¿ç¨ããã¿ã¤ããæ±ºå®ãã¾ããããããã®ãã«ãã¼ã¯ãåè£ã¨ãªããã¹ãã®ã¤ã¡ã¼ã¸ãé¸æãã¾ãã ``gnu.*`` ã«ããããããã¡ã¤ã«åã¨ãã¦ã :file:`gnu.pdf` ã¨ã :file:`gnu.png` ãã½ã¼ã¹ããªã¼ã®ä¸­ã«å­å¨ãã¦ããã¨ãã¾ããLaTeXãã«ãã¼ã¯åèã®PDFããHTMLãã«ãã¼ã¯å¾èã®PNGãåªåçã«å©ç¨ãã¾ãããµãã¼ãããã¦ããç»åã¿ã¤ãã¨ä½¿ç¨åªååº¦ã¯ã :ref:`builders` ã§å®ç¾©ããã¦ãã¾ãã ãã®ãã£ã¬ã¯ãã£ããä½¿ç¨ããã¨ãSphinxã¯ãã«ãæã«ãæå®ãããç»åãã¡ã¤ã«ãåºåãã£ã¬ã¯ããªã®ãµããã£ã¬ã¯ããªã«ã³ãã¼ãã¾ããHTMLåºåã®å ´åã«ã¯ã ``_static`` ã¨ãã£ããã£ã¬ã¯ããªã«ã³ãã¼ããã¾ãã æ¨æºã®reSTã§ãå¼ç¨(:duref:`ref <citations>`)ã¯ãµãã¼ããã¦ãã¾ãããSphinxç¬èªã®è¿½å ã®æ©è½ã¨ãã¦ã¯ãå¼ç¨ã"ã°ã­ã¼ãã«"ã¨ãããã¨ã§ãããã®ãããå¨ã¦ã®å¼ç¨ã¯ãã¹ã¦ã®ãã¡ã¤ã«ããåç§ãããã¨ãã§ãã¾ããä»¥ä¸ã®ããã«ä½¿ç¨ãã¾ã:: æ¨æºã®reSTã¯æ¬¡ã®ãããªã­ã¼ã«ãæä¾ãã¦ãã¾ã: ç½®æ ãã¼ãã« 3ã¤ç®ã®ã«ã¼ã«ãé©ç¨ããããããä¸è¨ã®ãµã³ãã«ã®æåã®æ®µè½ä¸­ã®ï¼ã¤ãã®æãã¬ã³ããªã³ã°ããã¨ã "æ¬¡ã®ãã©ã°ã©ãã¯ã³ã¼ããµã³ãã«ã§ã:" ã¨ããè¡¨è¨ã«ãªãã¾ãã æ¬å®¶ `reStructuredTextã¦ã¼ã¶ãã­ã¥ã¡ã³ã <http://docutils.sourceforge.net/rst.html>`_ ãã®ãã­ã¥ã¡ã³ãä¸­ã®åç§ãªã³ã¯ã¯ãreSTã®ãªãã¡ã¬ã³ã¹ã®åãã®è¦ç´ ã®èª¬æã«ãªã³ã¯ãã¦ãã¾ãã ãã£ã¬ã¯ãã£ãã®ã³ã³ãã³ãã¨ããã®ã¯ãç©ºç½è¡ã®å¾ã«ç¶ããã­ãã¯ã§ããã£ã¬ã¯ãã£ããéå§ãããå°ç¹ãããæ·±ãã¤ã³ãã³ãã§ããããã¦ãã¾ãã ``::`` ãã¼ã«ã¼ã®æ±ãã¯ã¨ã¦ãã¹ãã¼ãã§ã: æ®µè½(:duref:`ref <paragraphs>`)ã¯reSTãã­ã¥ã¡ã³ãã«ãããããã£ã¨ãåºæ¬çãªè¦ç´ ã§ããæ®µè½ã¯1è¡ä»¥ä¸ã®ç©ºè¡ã§åºåããããã·ã³ãã«ãªãã­ã¹ãã®åºã¾ãã§ãã Pythonã«ããã¦ã¤ã³ãã³ããéè¦ãªæå³ãæã¤ã®ã¨åæ§ãreSTã§ãã¤ã³ãã³ãã¯éè¦ã§ããåãæ®µè½ã®ãã¹ã¦ã®è¡ã¯ãã¤ã³ãã³ããåãé«ãã«ãããã¦ãå·¦æãã«ããªããã°ãªãã¾ããã æ¨æºã®reSTã¤ã³ã©ã¤ã³ãã¼ã¯ã¢ããã¯æ¥µãã¦ã·ã³ãã«ã§ãã æ¬¡ã®ãããªç¹å¥ãªãã­ãã¯ãå©ç¨ã§ãã¾ã: reSTã®ãã­ã¥ã¡ã³ããæ¸ãã¦ããã¨ãè¯ãé­éããåé¡ãããã¤ãããã¾ã: ãããã®å¶éã¯ãdocutilsã®å°æ¥ã®ãã¼ã¸ã§ã³ã§ãæ®ãã§ãããã ãã®ã»ã¯ã·ã§ã³ã¯ãreStructuredText(reST)ã®èãæ¹ãææ³ã«ã¤ãã¦ã®ç­ãã¤ã³ãã­ãã¯ã·ã§ã³ã§ããSphinxã¦ã¼ã¶ããã­ã¥ã¡ã³ããä½æããããã«ååãªæå ±ãæä¾ãã¾ããreSTã¯ã·ã³ãã«ã«è¨­è¨ããããæ§ãããªãã¼ã¯ã¢ããè¨èªã§ãã®ã§ãçè§£ããã®ã«ããã»ã©æéã¯ããããªãã§ãããã ãã¼ãã«ã®è¡¨ç¾æ¹æ³ã«ã¯2éãããã¾ãã **ã°ãªãããã¼ãã«** (:duref:`ref <grid-tables>`)ã¯ãã»ã«ã®ã°ãªãããèªåã§ç·æããå¿è¦ãããã¾ããããã¯æ¬¡ã®ããã«ãªãã¾ã:: ```ãªã³ã¯ãã­ã¹ã <http://ã¿ã¼ã²ããURL>`_`` ã¨ããæ¸ããã¨ã§ãå¤é¨ã®ã¦ã§ããµã¤ãã¸ã®ãªã³ã¯ãåãè¾¼ããã¨ãã§ãã¾ãããããªã³ã¯ãã­ã¹ããã¦ã§ãã®ã¢ãã¬ã¹ã§ããå ´åã«ã¯ãç¹å¥ãªãã¼ã¯ã¢ããã¯å¿è¦ããã¾ããããã¼ãµã¼ãéå¸¸ã®ãã­ã¹ãä¸­ã§ãªã³ã¯ããã¡ã¼ã«ã¢ãã¬ã¹ãè¦ã¤ããã¨ããã®ã¾ã¾ããã«ãªã³ã¯ãåãè¾¼ãã§ããã¾ãã ããã©ã«ããã¡ã¤ã³ã« :rst:dir:`class` ãã£ã¬ã¯ãã£ããå­å¨ããããããã®ãã£ã¬ã¯ãã£ãã¯ãã®ã¾ã¾ã§ã¯ä½¿ç¨ãããã¨ãã§ãã¾ããããã®ãããSphinxã§ã¯ã :rst:dir:`rst-class` ã¨ããååã§åå®ç¾©ãã¦ãã¾ãã Sphinxåã§ä½¿ç¨ããå ´åã«ã¯ãã½ã¼ã¹ãã¡ã¤ã«ããã®ç¸å¯¾ãã¹ãããããã®ã½ã¼ã¹ãã£ã¬ã¯ããªããã®çµ¶å¯¾ãã¹ã§ãã¡ã¤ã«å(ããã§ã¯ ``gnu.png``)ãæå®ãã¾ããä¾ãã°ã ``sketch/spam.rst`` ã¨ããã½ã¼ã¹ãã¡ã¤ã«ããã¯ã ``images/spam.png``, ``../images/spam.png``, ``/images/spam.png`` ã¨ããããã«æ¸ããã¨ãã§ãã¾ãã èæ³¨ã®æ°å¤ãæç¤ºçã«æå®(``[1]_``)ãããã¨ãã§ãã¾ãããååãæå®ããªãã§èæ³¨ã®èªåæ¡çª(``[#]``)ãããããã¨ãå¯è½ã§ãã æ¬¡ã®ããã«ãã¦ãã¿ã¼ã²ããå®ç¾©(:duref:`ref <hyperlink-target>`)ã¨ããªã³ã¯ãåå²ãããã¨ãã§ãã¾ã:: ã³ã¡ã³ããã¹ã¿ã¼ãããè¡ããã¤ã³ãã³ããããã¨ã«ãã£ã¦ãè¤æ°è¡ã³ã¡ã³ãã«ãããã¨ãã§ãã¾ã:: ``"``, ãã©ã°ã©ã ``#`` é¨: ãªã¼ãã¼ã©ã¤ã³ä»ã ``*`` ç« : ãªã¼ãã¼ã©ã¤ã³ä»ã ``-``, ãµãã»ã¯ã·ã§ã³ ``=``, ã»ã¯ã·ã§ã³ ``^``, ãµããµãã»ã¯ã·ã§ã³ ``function`` ããã£ã¬ã¯ãã£ãã®ååã§ããããã§ã¯äºã¤ã®å¼æ°ãä¸ãããã¦ãã¾ãã1è¡ç®ã®æ®ãã®é¨åã¨ã2è¡ç®ãå¼æ°ã§ããããã¦1ã¤ã®ãªãã·ã§ã³ ``module`` ãåæ§ã«è¨­å®ããã¦ãã¾ããè¦ã¦ã®éãããªãã·ã§ã³ã¯å¼æ°ã®ããè¡ã®ããæ¬¡ã®è¡ã«æ¸ããã¦ãã¦ãã¾ããããã¦ãç®å°ã¨ãã¦ã³ã­ã³ãä»ãã¦ãã¾ãããªãã·ã§ã³ã¯ããã£ã¬ã¯ãã£ãã®ã³ã³ãã³ãã¨åãã¤ã³ãã³ãã®é«ãã«ãã¾ãã ããã¯ã¯ãªã¼ã: ````ãã­ã¹ã```` ã³ã¼ããµã³ãã«( ``åºå®é·`` ) ä¸­ã®ãã­ã¹ãã®æåããããã¯æå¾ã«ã¹ãã¼ã¹ãå¥ãããã¨ãã§ãã¾ããã ``* text*`` ã¨æ¸ããã¨ã¯ã§ãã¾ãã doctestãã­ãã¯ (:duref:`ref <doctest-blocks>`) ãã£ã¼ã«ããªã¹ã (:duref:`ref <field-lists>`) ãã¹ããããã¨ã¯ã§ãã¾ãã å¨å²ã®ãã­ã¹ãã¨ã¯ããã­ã¹ãä»¥å¤ã®æå­(ã¹ãã¼ã¹ãã«ãã³ãªã©)ã§åºåãå¿è¦ãããã¾ãããããç©ºç½ãç©ºããã«ãç¶ãã¦è¡¨è¨ãããå ´åã«ã¯ã ``thisis\ *one*\ word`` ã¨ãããã¯ã¹ã©ãã·ã¥ã§ã¨ã¹ã±ã¼ããããã­ã¹ã(ã¹ãã¼ã¹ã¯è¡¨ç¤ºããã¾ãã)ãä½¿ç¨ãã¦ãã ããã ã¢ã¹ã¿ãªã¹ã¯1ã¤: ``*ãã­ã¹ã*`` å¼·èª¿( *ã¤ã¿ãªãã¯* ) ãªãã·ã§ã³ãªã¹ã (:duref:`ref <option-lists>`) ãããã¯ãã®ããã«æ¸ãã¾ã:: å¼ç¨ãªãã©ã«ãã­ãã¯ (:duref:`ref <quoted-literal-blocks>`) reSTã«ã¯ã"è§£éæ¸ã¿ãã­ã¹ãã­ã¼ã«"ã¨ãããã®ãè¨±ããã¦ãã¾ããããã¯ã ``:ã­ã¼ã«å:`è§£éæ¸ã¿ãã­ã¹ã``` ã¨ããææ³ã«ãªãã¾ããããã¯ãå²ã¾ãã¦ãããã­ã¹ãã¯ç¹å¥ãªæ¹æ³ã§è§£éããããã¨ãã§ãããã¨ãããã®ã§ããSphinxã¯ãããã¤ãã£ã¦ãæå³ã®ãã¼ã¯ã¢ããã¨ãè­å¥å­ã®ãã¼ã¯ã¢ãããè¡ã£ã¦ãã¾ããããã«é¢ãã¦ã¯å¥ã®ã»ã¯ã·ã§ã³ã§èª¬æãã¾ãã reSTã¯"ç½®æ"(:duref:`ref <substitution-definitions>`)ããµãã¼ããã¦ãã¾ããããã¯ããã­ã¹ãä¸­ã® ``|åå|`` ã§æå®ãããç®æã«ããã­ã¹ããããã¼ã¯ã¢ãããæ¿å¥ãã¾ããèæ³¨ã¨åãããã«æç¤ºçãªãã¼ã¯ã¢ãããã­ãã¯ãä½¿ã£ã¦å®ç¾©ãã¾ã:: reSTã¯ç»åã«é¢ãããã£ã¬ã¯ãã£ã(:dudir:`ref <image>`)ããµãã¼ããã¦ãã¾ããä»¥ä¸ã®ããã«ä½¿ç¨ãã¾ãã:: reStructuredTextå¥é ã¢ã¹ã¿ãªã¹ã¯2ã¤: ``**ãã­ã¹ã**`` å¼·ãå¼·èª¿( **å¤ªæå­** ) 