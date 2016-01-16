Þ    $      <              \  /   ]  *     -   ¸  7   æ  0     $   O  É   t     >     À     Ï  Â   ë     ®     Á  ¯   Ö  -     ò   ´     §  ý   :     8	  0   L	  w   }	    õ	  |   }  ¹   ú     ´    µ  =   8    v  Ê   ü  ÷  Ç    ¿     G     _  x  ý  ·   v    .  8   Ë  E     ?   J  Z     2   å  5     /  N  à   ~     _  '   f  '       ¶     Õ  Ù   ë  E   Å       ¸   !  D  ×!     #  B   ,#     o#  É  $     Î%    S&    h'  :  ð(  C   ++    o+    -  Ê  .  ¿  j1  '   *3  é   R3  Ó  <4  Ö   6   **body**: The main body of the document as HTML **css**: Links to css files used by Sphinx **js**: Javascript containing comment options **relbar**: A div containing links to related documents **sidebar**: The sidebar of the document as HTML **title**: The title of the document *username* should be a unique string which identifies a user, and *moderator* should be a boolean representing whether the user has moderation privilieges. The default value for *moderator* is *False*. An example `Flask <http://flask.pocoo.org/>`_ function that checks whether a user is logged in and then retrieves a document is:: Authentication Building Documentation Data By default, all comments added through :meth:`~.WebSupport.add_comment` are automatically displayed.  If you wish to have some form of moderation, you can pass the `displayed` keyword argument:: Comment Moderation Comments & Proposals If you wish to serve static files from a path other than "/static", you can do so by providing the *staticdir* keyword argument when creating the :class:`~.WebSupport` object. Integrating Sphinx Documents Into Your Webapp Note that we used the same template to render our search results as we did to render our documents.  That's because :meth:`~.WebSupport.get_search_results` returns a context dict in the same format that :meth:`~.WebSupport.get_document` does. Now that the data is built, it's time to do something useful with it.  Start off by creating a :class:`~.WebSupport` object for your application:: Now that this is done it's time to define the functions that handle the AJAX calls from the script.  You will need three functions.  The first function is used to add a new comment, and will call the web support method :meth:`~.WebSupport.add_comment`:: Performing Searches Rejecting comments happens via comment deletion. The final function that is needed will call :meth:`~.WebSupport.process_vote`, and will handle user votes on comments:: The first thing to notice is that the *docname* is just the request path.  This makes accessing the correct document easy from a single view.  If the user is authenticated, then the username and moderation status are passed along with the docname to :meth:`~.WebSupport.get_document`.  The web support package will then add this data to the ``COMMENT_OPTIONS`` that are used in the template. The moderation callback must take one argument, which will be the same comment dict that is returned by :meth:`add_comment`. This dict can then be used as context for templates.  The goal is to be easy to integrate with your existing templating system.  An example using `Jinja2 <http://jinja.pocoo.org/>`_ is: This only works works if your documentation is served from your document root. If it is served from another directory, you will need to prefix the url route with that directory, and give the `docroot` keyword argument when creating the web support object:: This will read reStructuredText sources from `srcdir` and place the necessary data in `builddir`.  The `builddir` will contain two sub-directories: one named "data" that contains all the data needed to display documents, search through documents, and add comments to documents.  The other directory will be called "static" and contains static files that should be served from "/static". This will return a dictionary containing the following items: To make use of the web support package in your application you'll need to build the data it uses.  This data includes pickle files representing documents, search indices, and node data that is used to track where comments and other things are in a document.  To do this you will need to create an instance of the :class:`~.WebSupport` class and call its :meth:`~.WebSupport.build` method:: To perform a custom action (such as emailing a moderator) when a new comment is added but not displayed, you can pass callable to the :class:`~.WebSupport` class when instantiating your support object:: To use certain features such as voting, it must be possible to authenticate users.  The details of the authentication are left to your application.  Once a user has been authenticated you can pass the user's details to certain :class:`~.WebSupport` methods using the *username* and *moderator* keyword arguments.  The web support package will store the username with comments and votes.  The only caveat is that if you allow users to change their username you must update the websupport package's data:: To use the search form built-in to the Sphinx sidebar, create a function to handle requests to the url 'search' relative to the documentation root.  The user's search query will be in the GET parameters, with the key `q`.  Then use the :meth:`~sphinx.websupport.WebSupport.get_search_results` method to retrieve search results. In `Flask <http://flask.pocoo.org/>`_ that would be like this:: Web Support Quick Start You can then create a new view to handle the moderation of comments.  It will be called when a moderator decides a comment should be accepted and displayed:: You'll notice that both a `parent_id` and `node_id` are sent with the request. If the comment is being attached directly to a node, `parent_id` will be empty. If the comment is a child of another comment, then `node_id` will be empty. Then next function handles the retrieval of comments for a specific node, and is aptly named :meth:`~sphinx.websupport.WebSupport.get_data`:: You'll only need one of these for each set of documentation you will be working with.  You can then call it's :meth:`~.WebSupport.get_document` method to access individual documents:: Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2015-09-13 06:05+0000
Last-Translator: Takayuki Shimizukawa <shimizukawa@gmail.com>
Language-Team: Japanese (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/ja/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 **body**: HTMLå½¢å¼ã®ãã­ã¥ã¡ã³ãæ¬ä½ã§ãã **css**: Sphinxãä½¿ç¨ããCSSãã¡ã¤ã«ã¸ã®ãªã³ã¯ã§ãã **js**: ã³ã¡ã³ããªãã·ã§ã³ãå«ãJavascriptã§ãã **relbar**: ãã®divã¯ãé¢é£ãã­ã¥ã¡ã³ãã¸ã®ãªã³ã¯ãå«ãã§ãã¾ãã **sidebar**: HTMLå½¢å¼ã®ãµã¤ããã¼ã§ãã **title**: ãã­ã¥ã¡ã³ãã®ã¿ã¤ãã«ã§ãã *username* ã¯ã¦ã¼ã¶ãç¹å®ããããã®ã¦ãã¼ã¯ãªæå­åã§ãªããã°ãªãã¾ãããã¾ãã *moderator* ã¯ã¦ã¼ã¶ãã¢ãã¬ã¼ãæ¨©éãæã£ã¦ãããã©ãããè¡¨ããã¼ã«åã§ãªããã°ãªãã¾ããã *moderator* ã®ããã©ã«ãå¤ã¯ ``False`` ã§ãã ä¾ãã°ã `Flask <http://flask.pocoo.org/>`_ ãä½¿ç¨ãã¦ãã¦ã¼ã¶ãã­ã°ã¤ã³ãã¦ãããã©ãããç¢ºèªãããã­ã¥ã¡ã³ããèª­ããããã«ããã«ã¯ãæ¬¡ã®ãããªã³ã¼ãã§è¡ãã¾ã:: èªè¨¼ ãã­ã¥ã¡ã³ããã¼ã¿ã®ãã«ã ããã©ã«ãã§ã¯ã :meth:`~.WebSupport.add_comment` ãä½¿ã£ã¦è¿½å ãããã¹ã¦ã®ã³ã¡ã³ãã¯è¡¨ç¤ºããã¾ãããããã¢ãã¬ã¼ã·ã§ã³ãè¡ã£ã¦ãæ¿èªãããã³ã¡ã³ãã ããè¡¨ç¤ºãããã®ã§ããã°ã `displayed` ã­ã¼ã¯ã¼ãå¼æ°ãæ¸¡ãã¾ã:: ã³ã¡ã³ãã®ã¢ãã¬ã¼ã ã³ã¡ã³ãï¼ææ¡ ãã "/static" ä»¥å¤ã®ãã¹ããéçãã¡ã¤ã«ã®éä¿¡ããããå ´åã«ã¯ã :class:`~.WebSupport` ãªãã¸ã§ã¯ããä½ãæã«ã **staticdir** ã­ã¼ã¯ã¼ãå¼æ°ãæå®ãã¦ãã ããã Sphinxãã­ã¥ã¡ã³ããã¦ã§ãã¢ããªã±ã¼ã·ã§ã³ã«çµ±å ãã­ã¥ã¡ã³ãã¨æ¤ç´¢çµæã®è¡¨ç¤ºã«ã¯ãåããã³ãã¬ã¼ããä½¿ç¨ãã¦ãã¾ããããã¯ã :meth:`~.WebSupport.get_search_results` ã¡ã½ãããã :meth:`~.WebSupport.get_document` ã¨åãå½¢å¼ã®ã³ã³ãã­ã¹ãè¾æ¸ãè¿ãããã§ãã ãã¼ã¿ãã§ãã¾ããã®ã§ãæ¬¡ã¯ãããä½¿ãçªã§ããã¢ããªã±ã¼ã·ã§ã³ã®ããã® :class:`~.WebSupport` ãªãã¸ã§ã¯ããä½ãã¨ããããå§ãã¾ã:: ããã§ã¯ãã³ã¡ã³ããªã©ãAJAXã§å¦çããããã®é¢æ°ãå®ç¾©ãã¾ãã3ã¤ã®é¢æ°ãå®ç¾©ããå¿è¦ãããã¾ãã1ã¤ç®ã¯ãæ°ããã³ã¡ã³ããæç¨¿ãããã¨ãã«ãã¦ã§ããµãã¼ããªãã¸ã§ã¯ãã® :meth:`~.WebSupport.add_comment` ã¡ã½ãããå¼ã³åºããã®ã§ã:: æ¤ç´¢ã®å®è¡ ãªã¸ã§ã¯ããããã¨ãã³ã¡ã³ãã¯åé¤ããã¾ãã æå¾ã®é¢æ°ã¯ã :meth:`~.WebSupport.process_vote` ãå¼ã³åºãã¦ãã³ã¡ã³ãã«å¯¾ããã¦ã¼ã¶ã®æç¥¨ãåãæ±ãé¢æ°ã§ã:: ã¾ãã *docname* ãè¦æ±ããããã¹ãè¡¨ããã¨ã«æ°ã¥ãã¾ããããã«ãããæ­£ãããã­ã¥ã¡ã³ãã¸ã®ã¢ã¯ã»ã¹ãè¡ãã¾ããããã¦ã¼ã¶ã®èªè¨¼ãè¡ããã¦ããããã¦ã¼ã¶åã¨ã¢ãã¬ã¼ãæ¨©éæå ±ã :meth:`~.WebSupport.get_document` ã«æ¸¡ããã¾ããã¦ã§ããµãã¼ãããã±ã¼ã¸ã¯ããã³ãã¬ã¼ãã®ä¸­ã§ä½¿ç¨ããã ``COMMENT_OPTIONS`` ããã®ãã¼ã¿ã«ä»å ãã¾ãã ãã®ã³ã¼ã«ããã¯é¢æ°ã¯ã :meth:`add_comment` ãè¿ãã®ã¨åãå½¢å¼ã®è¾æ¸ãå¼æ°ã¨ãã¦åãåãã¾ãã ãã®è¾æ¸ã¯ãã³ãã¬ã¼ãã®ã³ã³ãã­ã¹ãã¨ãã¦å©ç¨ã§ãã¾ãããããå©ç¨ãããã¨ã§ããªãã®æ¢å­ã®ãã³ãã¬ã¼ãã·ã¹ãã ã«ç°¡åã«çµ±ååºæ¥ã¾ãã  `Jinja2 <http://jinja.pocoo.org/>`_ ãä½¿ã£ãä¾ã¯ä»¥ä¸ã®éãã§ã: ãã®ãã­ã°ã©ã ã¯ãã­ã¥ã¡ã³ããã«ã¼ãã§æä¾ãããå ´åã«ã®ã¿åä½ãã¾ãããããä»ã®ãã£ã¬ã¯ããªãããã­ã¥ã¡ã³ããæä¾ãããå ´åã«ã¯ãURLã®ããªãã£ãã¯ã¹ãæå®ããå¿è¦ãããã¾ããããã¯ãã¦ã§ããµãã¼ããªãã¸ã§ã¯ããä½æããæã«ã `docroot` ã­ã¼ã¯ã¼ãå¼æ°ã¨ãã¦ä¸ãã¾ã:: ãã®ã³ã¼ãã¯ãreStructuredTextã®ã½ã¼ã¹ã³ã¼ãã `srcdir` ããèª­ã¿è¾¼ã¿ãå¿è¦ãªãã¼ã¿ã `builddir` ã«æ¸ãåºãã¾ãã `builddir` ã¯äºã¤ã®ãµããã£ã¬ã¯ããªãå«ã¿ã¾ãã :file:`data` ã«ã¯ããã­ã¥ã¡ã³ããè¡¨ç¤ºãããããã­ã¥ã¡ã³ããæ¤ç´¢ãããããã­ã¥ã¡ã³ãã«ã³ã¡ã³ããä»ããã®ã«å¿è¦ãªãã¼ã¿ããã¹ã¦å«ã¾ãã¾ããããä¸ã¤ã® :file:`static` ãã£ã¬ã¯ããªã¯ã :file:`'/static'` ãããã¡ã¤ã«ãéä¿¡ããããã®ãéçãã¡ã¤ã«ãå«ã¿ã¾ãã ãã®ã¡ã½ããã¯ãæ¬¡ã®ã­ã¼ãæã¤è¾æ¸ãè¿ãã¾ã: ã¢ããªã±ã¼ã·ã§ã³ã®ä¸­ã§ã¦ã§ããµãã¼ãããã±ã¼ã¸ãä½¿ç¨ããå ´åã¯ãã¾ãã¯ãã¼ã¿ãä½ãå¿è¦ãããã¾ãããã¼ã¿ã«ã¯ãpickleåããããã­ã¥ã¡ã³ããæ¤ç´¢ã¤ã³ããã¯ã¹ãã³ã¡ã³ããªã©ãã©ã®ãã­ã¥ã¡ã³ãã«ä»å ãããã®ããè¿½è·¡ããããã®ãã¼ããã¼ã¿ãå«ã¾ãã¾ãããããè¡ãããã«ã¯ã :class:`~.WebSupport` ã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ãä½ãã :meth:`~.WebSupport.build` ã¡ã½ãããå¼ã¶å¿è¦ãããã¾ã:: éè¡¨ç¤ºã®æ°ããã³ã¡ã³ããè¿½å ãããã¨ãã«ãEã¡ã¼ã«ã«ããã¢ãã¬ã¼ããªã©ãã«ã¹ã¿ã ã®ã¢ã¯ã·ã§ã³ãè¡ãããå ´åã«ã¯ã :class:`~.WebSupport` ã®ã¤ã³ã¹ã¿ã³ã¹ãä½ãæã«ãå¼ã³åºãå¯è½ãªãªãã¸ã§ã¯ããæ¸¡ãã¾ã:: æç¥¨ã®ãããªæ©è½ãå®è£ããå ´åãã¦ã¼ã¶èªè¨¼ãã§ããå¿è¦ãããã¾ããèªè¨¼ãã©ã®ããã«å®è£ãããã¯ã¢ããªã±ã¼ã·ã§ã³ã«ä»»ããã¦ãã¾ããã¦ã¼ã¶ãèªè¨¼ãããããã¦ã¼ã¶ã®æå ±ã :class:`~.WebSupport` ã®ã¡ã½ããã® *username* ã¨ *moderator* ã­ã¼ã¯ã¼ãå¼æ°ã«æ¸¡ããã¨ãã§ãã¾ããã¦ã§ããµãã¼ãããã±ã¼ã¸ã¯ã¦ã¼ã¶åããã³ã¡ã³ããæç¥¨ã¨ä¸ç·ã«ä¿å­ãã¾ããæ³¨æç¹ã1ã¤ãããã¨ããã°ãããã¦ã¼ã¶ã«å¯¾ãã¦ååã®å¤æ´ãè¡ããããã«ããã®ã§ããã°ãã¦ã§ããµãã¼ãããã±ã¼ã¸ã®åé¨ã®ã¦ã¼ã¶åã®ãã¼ã¿ãæ´æ°ããå¿è¦ãããã¾ã:: Sphinxãµã¤ããã¼ã®æ¤ç´¢æ©è½ãä½¿ãã¨ããã­ã¥ã¡ã³ãã«ã¼ãä»¥ä¸ã® 'search' ã¨ãããã¹ã«å¯¾ãããªã¯ã¨ã¹ããçºçãã¾ããã¦ã¼ã¶ã®æ¤ç´¢ã¯ã¨ãªã¼ã¯ãGETãã©ã¡ã¼ã¿ã® `q` ã­ã¼ã«æ ¼ç´ããã¦ãã¾ãã :meth:`~sphinx.websupport.WebSupport.get_search_results` ã¡ã½ããã«æ¸¡ãã¨ãæ¤ç´¢çµæãå¾ããã¾ãã `Flask <http://flask.pocoo.org/>`_ ã§ã¯æ¬¡ã®ããã«ãªãã¾ã:: Webãµãã¼ãã¯ã¤ãã¯ã¹ã¿ã¼ã ã³ã¡ã³ãã®ã¢ãã¬ã¼ããåãæ±ããã¥ã¼ãè¿½å ããå¿è¦ãããã¾ããã¢ãã¬ã¼ã¿ãã³ã¡ã³ããåãå¥ãã¦ãè¡¨ç¤ºãããã©ãããæ±ºå®ããã¨ãã«ããã®é¢æ°ãå¼ã³åºããã¾ã:: ãªã¯ã¨ã¹ãã«ã¯ã `parent_id` ã¨ `node_id` ãéã£ã¦ãã¾ããã³ã¡ã³ããä»ã®ãã¼ãã«ç´æ¥è¿½å ãããå ´åã«ã¯ã `parent_id` ã¯ç©ºã«ãªãã¾ããã¾ããã³ã¡ã³ããä»ã®ã³ã¡ã³ãã®å­ä¾ã¨ãã¦ä»å ãããå ´åã«ã¯ã `node_id` ãç©ºã«ãªãã¾ããæ¬¡ã®é¢æ°ã¯ã :meth:`~sphinx.websupport.WebSupport.get_data` ã¡ã½ãããå©ç¨ãã¦ãç¹å®ã®ãã¼ãã«å¯¾ããã³ã¡ã³ããåãæ±ãã¾ã:: æ¬¡ã«ãåãã®ãã­ã¥ã¡ã³ãã«å¯¾ããå¦çãä½ã£ã¦ããã¾ãã :meth:`~.WebSupport.get_document` ã¡ã½ãããå¼ã¶ã¨ãåãã®ãã­ã¥ã¡ã³ãã«ã¢ã¯ã»ã¹ãããã¨ãã§ãã¾ã:: 