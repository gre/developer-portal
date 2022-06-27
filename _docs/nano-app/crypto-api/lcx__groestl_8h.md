---
title: lcx_groestl.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>GROESTL hash function.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s">hashState_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Hash state.  <a href="../hash_state__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__groestl__s">cx_groestl_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Groestl context.  <a href="../cx__groestl__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a3cfd3aa62338d12609f6d65bce97e9cd"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#a3cfd3aa62338d12609f6d65bce97e9cd">ROWS</a>&#160;&#160;&#160;8</td></tr>
<tr class="memitem:a2be10bd05295c6c427493bed3781f006"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#a2be10bd05295c6c427493bed3781f006">COLS1024</a>&#160;&#160;&#160;16</td></tr>
<tr class="memitem:afc256d6d9b1c3d78c147ab6ccacc7e8a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#afc256d6d9b1c3d78c147ab6ccacc7e8a">SIZE1024</a>&#160;&#160;&#160;(<a class="el" href="../lcx__groestl_8h#a3cfd3aa62338d12609f6d65bce97e9cd">ROWS</a> * <a class="el" href="../lcx__groestl_8h#a2be10bd05295c6c427493bed3781f006">COLS1024</a>)</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:ac7449f64e35526a4e70f37cbc40ecc65"><td class="memItemLeft" align="right" valign="top">typedef unsigned char&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#ac7449f64e35526a4e70f37cbc40ecc65">BitSequence</a></td></tr>
<tr class="memitem:a1896a8adfda23c8ec28184a81fdcd497"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../hash_state__s">hashState_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#a1896a8adfda23c8ec28184a81fdcd497">hashState</a></td></tr>
<tr class="memitem:aad1e7a59537d3e3692fa010d2ac0d4d8"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__groestl__s">cx_groestl_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#aad1e7a59537d3e3692fa010d2ac0d4d8">cx_groestl_t</a></td></tr>
<tr class="memdesc:aad1e7a59537d3e3692fa010d2ac0d4d8"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#aad1e7a59537d3e3692fa010d2ac0d4d8">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a0bb9a0c59b98a10b2a9a77e9247a5e77"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#a0bb9a0c59b98a10b2a9a77e9247a5e77">cx_groestl_init_no_throw</a> (<a class="el" href="../lcx__groestl_8h#aad1e7a59537d3e3692fa010d2ac0d4d8">cx_groestl_t</a> *hash, size_t size)</td></tr>
<tr class="memdesc:a0bb9a0c59b98a10b2a9a77e9247a5e77"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a GROESTL context.  <a href="#a0bb9a0c59b98a10b2a9a77e9247a5e77">More...</a><br /></td></tr>
<tr class="memitem:a08061eda059bc1fcbe8c3384662b858a"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__groestl_8h#a08061eda059bc1fcbe8c3384662b858a">cx_groestl_init</a> (<a class="el" href="../lcx__groestl_8h#aad1e7a59537d3e3692fa010d2ac0d4d8">cx_groestl_t</a> *hash, unsigned int size)</td></tr>
<tr class="memdesc:a08061eda059bc1fcbe8c3384662b858a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a GROESTL context.  <a href="#a08061eda059bc1fcbe8c3384662b858a">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>GROESTL hash function. </p>
<p>Refer to <a href="https://www.groestl.info/">GROESTL info </a> for more details. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a2be10bd05295c6c427493bed3781f006"></a>
<h2 class="memtitle">COLS1024</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define COLS1024&#160;&#160;&#160;16</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a3cfd3aa62338d12609f6d65bce97e9cd"></a>
<h2 class="memtitle">ROWS</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define ROWS&#160;&#160;&#160;8</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="afc256d6d9b1c3d78c147ab6ccacc7e8a"></a>
<h2 class="memtitle">SIZE1024</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define SIZE1024&#160;&#160;&#160;(<a class="el" href="../lcx__groestl_8h#a3cfd3aa62338d12609f6d65bce97e9cd">ROWS</a> * <a class="el" href="../lcx__groestl_8h#a2be10bd05295c6c427493bed3781f006">COLS1024</a>)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="ac7449f64e35526a4e70f37cbc40ecc65"></a>
<h2 class="memtitle">BitSequence</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef unsigned char <a class="el" href="../lcx__groestl_8h#ac7449f64e35526a4e70f37cbc40ecc65">BitSequence</a></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="aad1e7a59537d3e3692fa010d2ac0d4d8"></a>
<h2 class="memtitle">cx_groestl_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__groestl__s">cx_groestl_s</a> <a class="el" href="../lcx__groestl_8h#aad1e7a59537d3e3692fa010d2ac0d4d8">cx_groestl_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>

</div>
</div>
<a id="a1896a8adfda23c8ec28184a81fdcd497"></a>
<h2 class="memtitle">hashState</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../hash_state__s">hashState_s</a> <a class="el" href="../lcx__groestl_8h#a1896a8adfda23c8ec28184a81fdcd497">hashState</a></td>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a08061eda059bc1fcbe8c3384662b858a"></a>
<h2 class="memtitle">cx_groestl_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_groestl_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__groestl_8h#aad1e7a59537d3e3692fa010d2ac0d4d8">cx_groestl_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>size</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a GROESTL context. </p>
<p>Throws an exception if the initialization fails.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context to initialize.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of the digest.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>GROESTL identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a0bb9a0c59b98a10b2a9a77e9247a5e77"></a>
<h2 class="memtitle">cx_groestl_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_groestl_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__groestl_8h#aad1e7a59537d3e3692fa010d2ac0d4d8">cx_groestl_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>size</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a GROESTL context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context to init.ialize.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of the digest.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
