Þ    '      T                +     °   ¹  Î   j  A   9  Ñ   {  4   M  (        «     @  U   Ì  o   "           ¡     Â  #   Ô  '   ø  4        U	    ñ	  q   õ
     g  Ú     :   \  }     c     R   y  1   Ì     þ  Ý     @   f  T   §  "   ü  9     <   Y       B     V   Z  K   ±     ý  5       Ô  è   ä  N   Í  Ú     `   ÷  ^   X    ·  Ê   Ê  u     ¸        Ä  -   à       '   *  ?   R  ½    ë   P    <     Ö  ,   s   J      o   ë!     ["  {   ë"  ]   g#  @   Å#  Ø   $  b  ß$  W   B&  q   &  9   '  c   F'     ª'  ¸   .(  j   ç(  W   R)  O   ª)   Add these paths, separating entries by ";": After installation, type :command:`sphinx-build` on the command prompt.  If everything worked fine, you will get a Sphinx version number and a list of options for this command. After installation, you better add the Python executable directories to the environment variable ``PATH`` in order to run Python and package commands such as ``sphinx-build`` easily from the Command Prompt. Click the "Environment Variables" button under the "Advanced" tab Currently, Python offers two major versions, 2.x and 3.x. Sphinx 1.2 can run under Python 2.5 to 2.7 and 3.1 to 3.3, with the recommended version being 2.7.  This chapter assumes you have installed Python 2.7. Debian/Ubuntu: Install Sphinx using packaging system Follow the Windows installer for Python. Go to http://python.org, the main download site for Python. Look at the left sidebar and under "Quick Links", click "Windows Installer" to download. If "Path" (or "PATH") is already an entry in the "System variables" list, edit it.  If it is not present, add a new variable called "PATH". If you finished the installation of setuptools, type this line in the command prompt: If you use Mac OS X `MacPorts <http://www.macports.org/>`_, use this command to install all necessary software. Install Python Install the easy_install command Installing Sphinx Installing Sphinx with easy_install Mac OS X: Install Sphinx using MacPorts Most Linux distributions have Sphinx in their package repositories.  Usually the package is called "python-sphinx", "python-Sphinx" or "sphinx".  Be aware that there are two other packages with "sphinx" in their name: a speech recognition toolkit (CMU Sphinx) and a full-text search database (Sphinx search). Most Windows users do not have Python, so we begin with the installation of Python itself.  If you have already installed Python, please skip this section. Now run the **Command Prompt**.  After command prompt window appear, type ``python`` and Enter.  If the Python installation was successful, the installed Python version is printed, and you are greeted by the prompt ``>>>``.  Type ``Ctrl+Z`` and Enter to quit. Now setuptools and its :command:`easy_install` command is installed.  From there we can go to the Sphinx install. Other Linux distributions Python has a very useful :command:`easy_install` command which can download and install 3rd-party libraries with a single command.  This is provided by the "setuptools" project: https://pypi.python.org/pypi/setuptools. Right-click the "My Computer" icon and choose "Properties" Since Sphinx is written in the Python language, you need to install Python (the required version is at least 2.5) and Sphinx. Sphinx packages are available on the `Python Package Index <https://pypi.python.org/pypi/Sphinx>`_. That it.  Installation is over.  Head to :doc:`tutorial` to make a Sphinx project. There are introductions for several environments: This is for Python 2.7.  If you use another version of Python or installed to a non-default location, change the digits "27" accordingly. To install setuptools, download https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py and save it somewhere.  After download, invoke the command prompt, go to the directory with ez_setup.py and run this command: To set up the executable paths, use the ``port select`` command: Type :command:`which sphinx-quickstart` to check if the installation was successful. Windows: Install Python and Sphinx You can also download a snapshot from the Git repository: You may install using this command if you use Debian/Ubuntu. ``C:\Python27\Scripts`` -- this folder will contain executables added by Python packages installed with easy_install (see below) ``C:\Python27`` -- this folder contains the main Python executable as a `.tar.bz2 <https://github.com/sphinx-doc/sphinx/archive/master.tar.bz2>`_ file or as a `.zip <https://github.com/sphinx-doc/sphinx/archive/master.zip>`_ file Project-Id-Version:  sphinx-doc-1.2.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-03-11 04:27+0000
PO-Revision-Date: 2015-09-11 03:34+0000
Last-Translator: sphinx-users.jp <shimizukawa+sphinxjp@gmail.com>
Language-Team: Japanese (http://www.transifex.com/sphinx-doc/sphinx-doc-1_2_0/language/ja/)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 åãã¹ã¯ã»ãã³ã­ã³ ";" ã§åºåãã¾ãã ã¤ã³ã¹ãã¼ã«ãå®äºãããã :command:`sphinx-build` ãã³ãã³ããã­ã³ããã«å¥åãã¾ããã¤ã³ã¹ãã¼ã«ãåé¡ãªãå®äºãã¦ããã°ãSphinxã®ãã¼ã¸ã§ã³çªå·ã¨ãã®ã³ãã³ãã®ãªãã·ã§ã³ä¸è¦§ãè¡¨ç¤ºããã¾ãã ã¤ã³ã¹ãã¼ã«ãå®äºããããã³ãã³ãã©ã¤ã³ããPythonã ``sphinx-build`` ãç°¡åã«èµ·åã§ããããã«ãç°å¢å¤æ°ã® ``PATH`` ã«Pythonã®å®è¡ãã£ã¬ã¯ããªãããã¤ãè¿½å ãã¾ãããã è©³ç´°ã¿ãã®ä¸ã®æ¹ã«ããç°å¢å¤æ°ãã¿ã³ãã¯ãªãã¯ãã¾ã ç¾å¨ãPythonã«ã¯2ç³»ã¨3ç³»ãããã¾ããSphinx-1.2ã¯Python-2.5ã2.6ã2.7ã3.1ã3.2ã3.3ã§åä½ãã¾ããæ¨å¥¨ãã¼ã¸ã§ã³ã¯2.7ã§ãããã®ç« ã§ã¯Python 2.7ãã¤ã³ã¹ãã¼ã«ãã¾ãã Debian/Ubuntu: ããã±ã¼ã¸ã·ã¹ãã ãå©ç¨ãã¦Pythonãã¤ã³ã¹ãã¼ã«ãã¾ãã Windowsã®ã¤ã³ã¹ãã¼ã©ã«å¾ãã£ã¦ã¤ã³ã¹ãã¼ã«ãå®äºããã¦ãã ããã http://python.org ãéãã¾ããPythonã®ç·æ¬å±±ã§ããè±èªãå¤ãã§ãããæããªãã§è¡ãã¾ãããï¼å·¦å´ã®ãµã¤ããã¼ãããQuick Linksã®ä¸­ã®Windows Installerãã¯ãªãã¯ãã¦ãã¦ã³ã­ã¼ããã¦ãã¤ã³ã¹ãã¼ã«ãã¾ãã "Path" (ã¾ãã¯ "PATH") ããã§ã«ãã·ã¹ãã ç°å¢å¤æ°ãã«å­å¨ããå ´åãããç·¨éãã¾ããå­å¨ããªãå ´åã¯ "PATH" ã¨ããååã§æ°ããå¤æ°ãè¿½å ãã¾ãã setuptoolsã®ã¤ã³ã¹ãã¼ã«ãå®äºããããä»¥ä¸ã®åå®¹ãã³ãã³ã ãã­ã³ããã§å¥åãã¾ã: Mac OS Xã® `MacPorts <http://www.macports.org/>`_  ãå©ç¨ãã¦ããã®ã§ããã°ãä¸è¨ã®ã³ãã³ãä¸çºã§ãå¿è¦ãªãã®ããã¹ã¦ã¤ã³ã¹ãã¼ã«ããã¾ãã Pythonã®ã¤ã³ã¹ãã¼ã« easy_installã³ãã³ãã®ã¤ã³ã¹ãã¼ã« Sphinxã®ã¤ã³ã¹ãã¼ã« easy_installã§Sphinxã¤ã³ã¹ãã¼ã« Mac OS X: MacPortsãå©ç¨ãã¦ã¤ã³ã¹ãã¼ã«ãã¾ãã ã»ã¨ãã©ã®Linuxãã£ã¹ããªãã¥ã¼ã·ã§ã³ã¯ãOSã®ããã±ã¼ã¸ç®¡çãªãã¸ããªã«Sphinxãç¨æããã¦ãã¾ããä¸è¬çãªããã±ã¼ã¸åã¯ "python-sphinx", "python-Sphinx", "sphinx" ã§ãã"sphinx"ã¨ããååããã¤å¥ã®ç¨éã®ããã±ã¼ã¸ãä»ã«2ã¤ãããã¨ã«æ³¨æãã¦ãã ãã: é³å£°èªè­ãã¼ã«ã­ãã(CMU Sphinx), ãã«ãã­ã¹ãæ¤ç´¢ãã¼ã¿ãã¼ã¹(Sphinx search)ã Windowsã®å ´åã¯ãPythonãå¥ã£ã¦ããªãå ´åãã»ã¨ãã©ã ã¨æãã¾ãã®ã§ãPythonã®ã¤ã³ã¹ãã¼ã«ããèª¬æãã¾ãããã§ã«Pythonãå©ç¨ãã¦ããäººã¯ããã®é ç®ãé£ã°ãã¦ãã ããã **ã³ãã³ã ãã­ã³ãã** ãå®è¡ãã¾ããããã³ãã³ããã­ã³ããã¦ã£ã³ãã¦ãè¡¨ç¤ºããããã ``python`` ã¨å¥åãã¦Enterã­ã¼ãæ¼ä¸ãã¾ããPythonã®ã¤ã³ã¹ãã¼ã«ãæåãã¦ããã°ãã¤ã³ã¹ãã¼ã«ããPythonã®ãã¼ã¸ã§ã³ã¨ããã­ã³ãã ``>>>`` ãè¡¨ç¤ºããã¾ãã ``Ctrl+Z`` ã¨Enterã­ã¼ãå¥åãã¦çµäºãã¦ãã ããã ããã§ :command:`easy_insall` ã³ãã³ããã¤ã³ã¹ãã¼ã«ããã¾ããããã¾ã§è¡ãã°æ¬¡ã¯ã¨ãã¨ãSphinxã®ã¤ã³ã¹ãã¼ã«ã§ãã ä»ã®Linuxãã£ã¹ããªãã¥ã¼ã·ã§ã³ Pythonã«ã¯éå¸¸ã«æç¨ãª :command:`easy_install` ã³ãã³ããããã1ã³ãã³ãã§ãµã¼ããã¼ãã£ã¼è£½ã®ã©ã¤ãã©ãªããã¦ã³ã­ã¼ãã»ã¤ã³ã¹ãã¼ã«ã§ãã¾ãããã®ã³ãã³ãã¯ã "setupools" ãã­ã¸ã§ã¯ãã«ãã£ã¦æä¾ããã¦ãã¾ã: https://pypi.python.org/pypi/setuptools  ãã¤ã³ã³ãã¥ã¼ã¿ã®ã¢ã¤ã³ã³ãå³ã¯ãªãã¯ãã¦ããã­ããã£ãã¤ã¢ã­ã°ãéãã¾ã Sphinxã¯Pythonã¨ããéçºè¨èªã§æ¸ããã¦ãããããPython(2.5ä»¥é)ã¨Sphinxãã¤ã³ã¹ãã¼ã«ããå¿è¦ãããã¾ãã Sphinxé¢ä¿ã®ããã±ã¼ã¸ã¯ `Python Package Index <https://pypi.python.org/pypi/Sphinx>`_ ããå¥æå¯è½ã§ãã ã¤ã³ã¹ãã¼ã«ä½æ¥­ã¯ä»¥ä¸ã§ããæ¬¡ã¯  :doc:`tutorial` ã«é²ãã§ãã ããã ããã¤ãã®ç°å¢ã«ã¤ãã¦å°å¥æ¹æ³ãç´¹ä»ãã¾ã: ããã¯ Python 2.7 ã®å ´åã§ããå¥ã®ãã¼ã¸ã§ã³ã®Pythonãä½¿ç¨ããå ´åããä»ã®å ´æã«ã¤ã³ã¹ãã¼ã«ãã¦ããå ´åã¯ã "27" ã®æ°å­ãããã«å¿ãã¦å¤æ´ãã¦ãã ããã setuptoolsãã¤ã³ã¹ãã¼ã«ããããã«ã https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py ããã¦ã³ã­ã¼ããã¦ã©ããã«ä¿å­ãã¦ãã ããããã¦ã³ã­ã¼ãå¾ã«ãã³ãã³ããã­ã³ãããèµ·åãã¦ãez_setup.pyãä¿å­ãããã£ã¬ã¯ããªã«ç§»åãã¦ãä»¥ä¸ã®ã³ãã³ããå®è¡ãã¾ã: å®è¡ãã¹ãè¨­å®ããããã« ``port select`` ã³ãã³ããä½¿ã£ã¦ä¸ãã: :command:`which sphinx-quickstart` ãå®è¡ãã¦ã¤ã³ã¹ãã¼ã«ãå®äºãã¦ãããç¢ºèªåºæ¥ã¾ãã Windows: Pythonã¨Sphinxãã¤ã³ã¹ãã¼ã«ãã¾ãã Gitãªãã¸ããªããã¹ãããã·ã§ããããã¦ã³ã­ã¼ããããã¨ãã§ãã¾ãã Ubuntu Linuxãªã©ã®Debianç³»ã®OSã®å ´åã¯ãä»¥ä¸ã®ã³ãã³ããä½¿ã£ã¦ã¤ã³ã¹ãã¼ã«ãããã¨ãã§ãã¾ãã ``C:\Python27\Scripts`` -- ãã®ãã©ã«ãã¼ã«ã¯ãeasy_install (ä¸è¨åç§) ãªã©ã§ã¤ã³ã¹ãã¼ã«ããPythonããã±ã¼ã¸ã®å®è¡å¯è½ãã¡ã¤ã«ãå«ã¾ãã¾ã ``C:\Python27`` -- ãã®ãã©ã«ãã¼ã«Pythonã®å®è¡å¯è½ãªãã­ã°ã©ã ãå«ã¾ãã¦ãã¾ã '. tar.bz2 <https://github.com/sphinx-doc/sphinx/archive/master.tar.bz2>'_ ãã¡ã¤ã« '.zip <https://github.com/sphinx-doc/sphinx/archive/master.zip>' _ ãã¡ã¤ã« 