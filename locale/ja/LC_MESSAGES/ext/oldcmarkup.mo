Þ                         ì   H   í      6     Í     O     ^  	   ÿ  	   	       
   !     ,  	   8     B    K  W   è  ä   @  ­   %  C   Ó      	   5
  	   ?
     I
  
   W
     b
  	   n
     x
   :mod:`sphinx.ext.oldcmarkup` -- Compatibility extension for old C markup However, it is advised to migrate to the new markup -- this extension is a compatibility convenience and will disappear in a future version of Sphinx. If you activate this extension, it will register the old names, and you can use them like before Sphinx 1.0.  The directives are: The roles are: This extension is a transition helper for projects that used the old (pre-domain) C markup, i.e. the directives like ``cfunction`` and roles like ``cfunc``.  Since the introduction of domains, they must be called by their fully-qualified name (``c:function`` and ``c:func``, respectively) or, with the default domain set to ``c``, by their new name (``function`` and ``func``). (See :ref:`c-domain` for the details.) ``cdata`` ``cfunc`` ``cfunction`` ``cmacro`` ``cmember`` ``ctype`` ``cvar`` Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2014-10-30 22:06+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Japanese (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/ja/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 :mod:`sphinx.ext.oldcmarkup` å¤ãCè¨èªåããã¼ã¯ã¢ããã¨ã®äºææ§ç¶­æ ããããæ°ãããã¼ã¯ã¢ããã¸ã®ç§»è¡ããããããã¾ãããã®æ¡å¼µæ©è½ã¯äºææ§ã®ç¶­æã®ããã«ä¸æçã«è¿½å ãããã¢ãã§ãå°æ¥ã®ãã¼ã¸ã§ã³ã®Sphinxã§ã¯åé¤ããã¾ãã ãã®æ¡å¼µæ©è½ãæå¹ã«ããã¨ãSphinx 1.0ä»¥åã§ä½¿ç¨ããã¦ããå¤ãååãç»é²ãã¾ããè¿½å ããããã£ã¬ã¯ãã£ãã¯æ¬¡ã®éãã§ã: è¿½å ãããã­ã¼ã«ã«ã¯æ¬¡ã®ãããªãã®ãããã¾ã: ãã®æ¡å¼µæ©è½ã¯ã ``cfunction`` ãã£ã¬ã¯ãã£ããã ``cfunc`` ã­ã¼ã«ãªã©ã®å¤ãCè¨èªã®ãã¼ã¯ã¢ãããå©ç¨ãã¦ãããã­ã¸ã§ã¯ãã®ç§»è¡ãæå©ããã¾ãããã¡ã¤ã³ãå°å¥ããã¦ããããã¯å®å¨ä¿®é£¾åã® ``c:function`` ã ``c:func`` ãªã©ã®ååã«ããããããã©ã«ãã®ãã¡ã¤ã³ã ``c`` ã«è¨­å®ããæ°ããåå(``function``, ``func``)ãä½¿ç¨ããããã«å¤æ´ããªããã°ãªãã¾ãããè©³ããã¯ :ref:`c-domain` ãåç§ãã¦ãã ããã ``cdata`` ``cfunc`` ``cfunction`` ``cmacro`` ``cmember`` ``ctype`` ``cvar`` 