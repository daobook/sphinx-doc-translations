Þ          ô               Ì     Í  $   Ù  $   þ  F   #  6  j  U  ¡  X   ÷  )   P  ð   z     k    þ  É     ¨   Í    v	  t   
  ^   ü
  C   [  þ         W         ø      p         	        ¨    °     M  1   ^  .     ]   ¿      i  *  n     Q     S  U  õ   ©        !  '  <  õ  d     Z!  ®   â!  v   "  Õ  #  ¬  Þ$  ª   &  ê   6'  7  !(  Å   Y*    +  	   (-     2-   **Example** **New format for this config value** **Old format for this config value** :mod:`sphinx.ext.intersphinx` -- Link to other projects' documentation A dictionary mapping URIs to either ``None`` or an URI.  The keys are the base URI of the foreign Sphinx documentation sets and can be local paths or HTTP URIs.  The values indicate where the inventory file can be found: they can be ``None`` (at the same location as the base URI) or another local or HTTP URI. A dictionary mapping unique identifiers to a tuple ``(target, inventory)``. Each ``target`` is the base URI of a foreign Sphinx documentation set and can be a local path or an HTTP URI.  The ``inventory`` indicates where the inventory file can be found: it can be ``None`` (at the same location as the base URI) or another local or HTTP URI. A second example, showing the meaning of a non-``None`` value of the second tuple item:: Behind the scenes, this works as follows: By default, the mapping file is assumed to be at the same location as the rest of the documentation; however, the location of the mapping file can also be specified individually, e.g. if the docs should be buildable without Internet access. Each Sphinx HTML build creates a file named :file:`objects.inv` that contains a mapping from object names to URIs relative to the HTML set's root. Projects using the Intersphinx extension can specify the location of such mapping files in the :confval:`intersphinx_mapping` config value.  The mapping will then be used to resolve otherwise missing references to objects into links to the other documentation. Relative local paths for target locations are taken as relative to the base of the built documentation, while relative local paths for inventory locations are taken as relative to the source directory. The maximum number of days to cache remote inventories.  The default is ``5``, meaning five days.  Set this to a negative value to cache inventories for unlimited time. The unique identifier can be used to prefix cross-reference targets, so that it is clear which intersphinx set the target belongs to.  A link like ``:ref:`comparison manual <python:comparisons>``` will link to the label "comparisons" in the doc set "python", if it exists. This config value contains the locations and names of other projects that should be linked to in this documentation. This extension can generate automatic links to the documentation of objects in other projects. This is the format used before Sphinx 1.0.  It is still recognized. This will download the corresponding :file:`objects.inv` file from the Internet and generate links to the pages under the given URI.  The downloaded inventory is cached in the Sphinx environment, so it must be redownloaded whenever you do a full rebuild. This will read the inventory from :file:`python-inv.txt` in the source directory, but still generate links to the pages under ``http://docs.python.org/3.2``.  It is up to you to update the inventory file as new objects are added to the Python documentation. To add links to modules and objects in the Python standard library documentation, use:: To use intersphinx linking, add ``'sphinx.ext.intersphinx'`` to your :confval:`extensions` config value, and use these new config values to activate linking: Usage is simple: whenever Sphinx encounters a cross-reference that has no matching target in the current documentation set, it looks for targets in the documentation sets configured in :confval:`intersphinx_mapping`.  A reference like ``:py:class:`zipfile.ZipFile``` can then link to the Python documentation for the ZipFile class, without you having to specify where it is located exactly. When fetching remote inventory files, proxy settings will be read from the ``$HTTP_PROXY`` environment variable. When using the "new" format (see below), you can even force lookup in a foreign set by prefixing the link target appropriately.  A link like ``:ref:`comparison manual <python:comparisons>``` will then link to the label "comparisons" in the doc set "python", if it exists. automatic linking Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2015-03-11 05:43+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Japanese (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/ja/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 **ãµã³ãã«** **ãã®è¨­å®å¤ã®æ°ãããã©ã¼ããã** **ãã®è¨­å®å¤ã®å¤ããã©ã¼ããã** :mod:`sphinx.ext.intersphinx` -- ä»ã®ãã­ã¸ã§ã¯ãã®ãã­ã¥ã¡ã³ãã¸ã®ãªã³ã¯ ãã®è¨­å®å¤ã¯URIåå£«(å¤ã¯å ´åã«ãã£ã¦ã¯\ ``None``)ããããã³ã°ããè¾æ¸ã«ãªãã¾ããã­ã¼ã¯å¤é¨ã®Sphinxã®ãã­ã¥ã¡ã³ãã®ãã¼ã¹ã®URIãè¨­å®ãã¾ããã­ã¼ã«ã«ã®ãã¹ããããã¯HTTPã®URIãä½¿ç¨ã§ãã¾ããå¤ã¯ã¤ã³ãã³ããªãã¡ã¤ã«(.inv)ãããå ´æãè¨­å®ãã¾ããããã«è¨­å®ã§ããã®ã¯ã\ ``None``\ (base UIã¨åãå ´æã«ããã¨ã¿ãªããã¾ã)ããããã¯ã­ã¼ã«ã«ã®ãã¹ãHTTPã®URIã®ã©ããã«ãªãã¾ãã ã¦ãã¼ã¯ãªè­å¥å­ãã­ã¼ã«ãã¦ã ``(ã¿ã¼ã²ãã, ã¤ã³ãã³ããª)`` ã¨ããã¿ãã«ãå¤ã«æã¤è¾æ¸ã®ãããã³ã°ã§ããããããã® ``ã¿ã¼ã²ãã`` ã¯å¤é¨ã®Sphinxã®ãã­ã¥ã¡ã³ããè¡¨ããã¼ã¹ã®URIã§ãã­ã¼ã«ã«ãã¡ã¤ã«ãã¹ãããã¯HTTPã®URIãæå®ã§ãã¾ãã ``ã¤ã³ãã³ããª`` ã¯ã¤ã³ãã³ããªãã¡ã¤ã«(.inv)ãããå ´æãè¨­å®ãã¾ããããã«è¨­å®ã§ããã®ã¯ã\ ``None``\ (ãã¼ã¹URIã¨åãå ´æã«ããã¨ã¿ãªããã¾ã)ããããã¯ã­ã¼ã«ã«ã®ãã¹ãHTTPã®URIã®ã©ããã«ãªãã¾ãã 2çªç®ã®ãµã³ãã«ã¯ã2ã¤ç®ã®ã¿ãã«ã®è¦ç´ ã« ``None`` ã§ã¯ãªãå¤ãä¸ããå ´åã§ã:: ãã®ä»çµã¿ã®èå¾ã§ã¯ãæ¬¡ã®ãããªãã¨ãè¡ããã¦ãã¾ãã ããã©ã«ãã®è¨­å®ã§ã¯ããããã³ã°ãã¡ã¤ã«ã¯ãã­ã¥ã¡ã³ãã¨åãä½ç½®ã«ããã¨ã¿ãªããã¾ãããããã³ã°ãã¡ã¤ã«ã®å ´æã¯åå¥ã«æå®ãããã¨ãã§ãã¾ããä¾ãã°ãã¤ã³ã¿ã¼ãããã®ã¢ã¯ã»ã¹ãã§ããªãç°å¢ã§ãã«ãã§ããããã«ããå ´åãªã©ã§ãã Sphinxãä½¿ã£ã¦çæãããHTMLã®ä¸­ã«ã¯ :file:`objects.inv` ã¨ãããã¡ã¤ã«ãããã¾ãããã®ãã¡ã¤ã«ã®ä¸­ã«ã¯ãªãã¸ã§ã¯ãåã¨ãHTMLã®ã«ã¼ãããã®ç¸å¯¾URLã®ãããã³ã°æå ±ãå«ã¾ãã¾ãã intersphinxæ¡å¼µãä½¿ç¨ãããã­ã¸ã§ã¯ãã¯ã :confval:`intersphinx_mapping` ã¨ããè¨­å®å¤ãä½¿ã£ã¦ããã®ãããã³ã°ãã¡ã¤ã«ã®å ´æãæå®ãããã¨ãã§ãã¾ãããã®ãããã³ã°æå ±ã¯ããªã³ã¯ãè§£æ±ºããã¦ããªããªãã¸ã§ã¯ãã®åç§ãããå¤é¨ã®ãã­ã¥ã¡ã³ãã®ãªã³ã¯ãå¼µãããã«ä½¿ç¨ããã¾ãã ç¸å¯¾çãªã­ã¼ã«ã«ãã¹ãã­ã¼ã«è¨­å®ãããå ´åã«ã¯ããã«ããã­ã¥ã¡ã³ãã«å¯¾ãã¦ç¸å¯¾çãªå ´æã§ããã¨ã¿ãªããã¾ããå¤å´ã«ç¸å¯¾ãã¹ãè¨­å®ãããå ´åã«ã¯ãã½ã¼ã¹ãã£ã¬ã¯ããªããã®ç¸å¯¾ãã¹ã«ãªãã¾ãã ãªã¢ã¼ãã®ã¤ã³ãã³ããªã¼ãã­ã£ãã·ã¥ããæé·ã®æ¥æ°ãè¨­å®ãã¾ããããã©ã«ãã¯\ ``5``\ ã§ã5æ¥éã¨ããæå³ã«ãªãã¾ãããã¤ãã¹ã®å¤ãè¨­å®ããã¨ãã¤ã³ãã³ããªã¼ã®ã­ã£ãã·ã¥ã®æ¥æ°ã«ããå¶éããªããªãã¾ãã ã¦ãã¼ã¯ãªè­å¥å­ã¯ãã¯ã­ã¹ãªãã¡ã¬ã³ã¹ã®ã¿ã¼ã²ããã®ããªãã£ãã¯ã¹ã¨ãã¦ä½¿ç¨ããã¾ãããã®ãããã¿ã¼ã²ããã®è¦ç´ ãintersphinxã«ãã£ã¦è¨­å®ããããã¨ãæç¢ºã«ãªãã¾ãããã¨ãã°ã ``:ref:`æ¯è¼ã®ããã¥ã¢ã« <python:comparisons>``` ã¨ããé ç®ãããã°ããã®"comparisons"ã¨ããã©ãã«ã¯"python"ã®ãã­ã¥ã¡ã³ãã»ããã®ä¸­ã«ãããã­ã¥ã¡ã³ãã«å¯¾ãã¦ãªã³ã¯ãä½æããã¾ãã ãã®è¨­å®å¤ã«ã¯ããã®ãã­ã¥ã¡ã³ããããªã³ã¯ãããä»ã®ãã­ã¸ã§ã¯ãã®å ´æã¨ååãè¨­å®ãã¾ãã ãã®æ¡å¼µæ©è½ã¯ä»ã®ãã­ã¸ã§ã¯ãã®ãªãã¸ã§ã¯ãã®ãã­ã¥ã¡ã³ãã«å¯¾ãã¦ãèªåãªã³ã¯ãçæãããã¨ãã§ããããã«ãªãã¾ãã ãã®ãã©ã¼ãããã¯Sphinx 1.0ä»¥åã§ä½¿ç¨ããã¦ãã¾ãããããã¯ç¾å¨ã§ãä½¿ç¨ã§ãã¾ãã ãããè¨­å®ããã¨ãã½ã¼ã¹ãã£ã¬ã¯ããªã®ä¸­ã® :file:`python.inv` ããã¤ã³ãã³ããªã¼æå ±ãèª­ã¿è¾¼ã¿ã ``http://docs.python.org/3.2`` ä»¥ä¸ã®ãã¼ã¸ã«å¯¾ãããªã³ã¯ãä½æãã¾ãããã¦ã³ã­ã¼ããããã¤ã³ãã³ããªæå ±ã¯ã­ã£ãã·ã¥ãããã®ã§ããããPythonã®ãã­ã¥ã¡ã³ãã«æ°ãããªãã¸ã§ã¯ããè¿½å ãããå ´åã«ã¯ãèªåã§ã¢ãããã¼ãããå¿è¦ãããã¾ãã ãããè¨­å®ããã¨ãã½ã¼ã¹ãã£ã¬ã¯ããªã®ä¸­ã® :file:`python-inv.txt` ããã¤ã³ãã³ããªã¼æå ±ãèª­ã¿è¾¼ã¿ã¾ãããåã»ã©ã®ä¾ã¨åãããã« ``http://docs.python.org/3.2`` ä»¥ä¸ã®ãã¼ã¸ã«å¯¾ãããªã³ã¯ãä½æãã¾ãããããPythonã®ãã­ã¥ã¡ã³ãã«æ°ãããªãã¸ã§ã¯ããè¿½å ãããå ´åã«ã¯ãèªåã§ã¢ãããã¼ãããå¿è¦ãããã¾ãã Pythonã®æ¨æºã®ã©ã¤ãã©ãªãã­ã¥ã¡ã³ãã®ä¸­ã®ã¢ã¸ã¥ã¼ã«ããªãã¸ã§ã¯ãã«å¯¾ãã¦ãªã³ã¯ãå¼µãããå ´åã«ã¯æ¬¡ã®ããã«ãã¾ã:: Sphinxéãªã³ã¯ãä½¿ç¨ããå ´åã«ã¯ã :confval:`extensions` è¨­å®å¤ã«\  ``'sphinx.ext.intersphinx'`` \ ãè¿½å ãã¾ããè¿½å ããã¨ããªã³ã¯ãæå¹ã«ããããã®æ°ããè¨­å®å¤ãè¿½å ããã¾ãã ä½¿ç¨æ¹æ³ã¯ã·ã³ãã«ã§ãSphinxãã¯ã­ã¹ãªãã¡ã¬ã³ã¹ã®åç§ãè§£æ±ºãããã¨ãã¦ãç¾å¨ã®ãã­ã¥ã¡ã³ãã®ä¸­ããè¦ã¤ããããªãã£ãå ´åã«ã¯ã :confval:`intersphinx_mapping` ã§è¨­å®ããããã­ã¥ã¡ã³ãéã®ä¸­ãæ¢ç´¢ãã«ããããã«ãªãã¾ãã ``:py:class:`zipfile.ZipFile``` ã¨ããåç§ããã£ãå ´åã«ã¯ããã®ãã­ã¥ã¡ã³ãã®è©³ç´°ãªå ´æãç¥ããªãã¦ããPythonã®æ¨æºã©ã¤ãã©ãªã®ãã­ã¥ã¡ã³ãã®ãZipFileã¯ã©ã¹ã«å¯¾ãã¦ãªã³ã¯ãå¼µããã¾ãã ãªã¢ã¼ãã§ã¤ã³ãã³ããªã¼ãã¡ã¤ã«ãåå¾ããå ´åã«ã¯ãç°å¢å¤æ°ã® ``$HTTP_PROXY`` ãè¨­å®ãã¦ããã¨ããã­ã­ã·ã¼ãçµç±ãã¦ã¢ã¯ã»ã¹ãè¡ãã¾ãã ããããæ°ããããã©ã¼ããã(å¾è¿°)ãä½¿ç¨ããå ´åããªã³ã¯ã¿ã¼ã²ããåã«ç¹å®ã®ããªãã£ãã¯ã¹ãä»ãããã¨ã§ãå¼·å¶çã«å¤é¨ãã­ã¥ã¡ã³ããæ¢ç´¢ãã«ããããã«è¨­å®ãããã¨ãã§ãã¾ãã  ``:ref:`æ¯è¼ããã¥ã¢ã« <python:comparisons>``` ã¨ãããªã³ã¯ãããã°ããã"python"ã¨ããååã®ãã­ã¥ã¡ã³ãã»ãããè¨­å®ããã¦ããã¨ããã¨ããã®ä¸­ã®"comparisons"ã¨ããã©ãã«ãæ¢ç´¢ãã«è¡ãã¾ãã èªåå ãªã³ã¯ä½æ 