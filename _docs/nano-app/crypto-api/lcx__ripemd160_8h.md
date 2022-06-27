---
title: lcx_ripemd160.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>RIPEMD-160 hash function.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ripemd160__s">cx_ripemd160_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">RIPEMD-160 context.  <a href="../cx__ripemd160__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a0e819ee2f3468667284716213284e621"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ripemd160_8h#a0e819ee2f3468667284716213284e621">CX_RIPEMD160_SIZE</a>&#160;&#160;&#160;20</td></tr>
<tr class="memdesc:a0e819ee2f3468667284716213284e621"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">RIPEMD160 message digest size.  <a href="#a0e819ee2f3468667284716213284e621">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:ae0605e61b5074bc86b616405eed44934"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ripemd160__s">cx_ripemd160_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ripemd160_8h#ae0605e61b5074bc86b616405eed44934">cx_ripemd160_t</a></td></tr>
<tr class="memdesc:ae0605e61b5074bc86b616405eed44934"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ae0605e61b5074bc86b616405eed44934">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a55d679791de8e2e677fffba87a3a94d3"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ripemd160_8h#a55d679791de8e2e677fffba87a3a94d3">cx_ripemd160_init_no_throw</a> (<a class="el" href="../lcx__ripemd160_8h#ae0605e61b5074bc86b616405eed44934">cx_ripemd160_t</a> *hash)</td></tr>
<tr class="memdesc:a55d679791de8e2e677fffba87a3a94d3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a RIPEMD-160 context.  <a href="#a55d679791de8e2e677fffba87a3a94d3">More...</a><br /></td></tr>
<tr class="memitem:a4de39768d5a783cd37128eccfb914416"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ripemd160_8h#a4de39768d5a783cd37128eccfb914416">cx_ripemd160_init</a> (<a class="el" href="../lcx__ripemd160_8h#ae0605e61b5074bc86b616405eed44934">cx_ripemd160_t</a> *hash)</td></tr>
<tr class="memdesc:a4de39768d5a783cd37128eccfb914416"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a RIPEMD-160 context.  <a href="#a4de39768d5a783cd37128eccfb914416">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>RIPEMD-160 hash function. </p>
<p>RIPEMD-160 is a 160-bit cryptographic hash function. Refer to <a href="https://homes.esat.kuleuven.be/~bosselae/ripemd160">RIPEMD-160 </a> for more details. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a0e819ee2f3468667284716213284e621"></a>
<h2 class="memtitle">CX_RIPEMD160_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_RIPEMD160_SIZE&#160;&#160;&#160;20</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>RIPEMD160 message digest size. </p>

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="ae0605e61b5074bc86b616405eed44934"></a>
<h2 class="memtitle">cx_ripemd160_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ripemd160__s">cx_ripemd160_s</a> <a class="el" href="../lcx__ripemd160_8h#ae0605e61b5074bc86b616405eed44934">cx_ripemd160_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ripemd160__s" title="RIPEMD-160 context. ">cx_ripemd160_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a4de39768d5a783cd37128eccfb914416"></a>
<h2 class="memtitle">cx_ripemd160_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ripemd160_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__ripemd160_8h#ae0605e61b5074bc86b616405eed44934">cx_ripemd160_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a RIPEMD-160 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>RIPEMD160 identifier. </dd></dl>

</div>
</div>
<a id="a55d679791de8e2e677fffba87a3a94d3"></a>
<h2 class="memtitle">cx_ripemd160_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ripemd160_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__ripemd160_8h#ae0605e61b5074bc86b616405eed44934">cx_ripemd160_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a RIPEMD-160 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success </li>
</ul>
</dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
