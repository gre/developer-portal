---
title: lcx_sha256.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>SHA-2 (Secure Hash Algorithm 2)  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha256__s">cx_sha256_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">SHA-224 and SHA-256 context.  <a href="../cx__sha256__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a1869f01a1fa5deb2845c93957e89be88"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#a1869f01a1fa5deb2845c93957e89be88">CX_SHA224_SIZE</a>&#160;&#160;&#160;28</td></tr>
<tr class="memdesc:a1869f01a1fa5deb2845c93957e89be88"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">SHA-224 message digest size.  <a href="#a1869f01a1fa5deb2845c93957e89be88">More...</a><br /></td></tr>
<tr class="memitem:ae20099c7ad89af9ac43fd93fa02826a4"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#ae20099c7ad89af9ac43fd93fa02826a4">CX_SHA256_SIZE</a>&#160;&#160;&#160;32</td></tr>
<tr class="memdesc:ae20099c7ad89af9ac43fd93fa02826a4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">SHA-256 message digest size.  <a href="#ae20099c7ad89af9ac43fd93fa02826a4">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:ac46cc2c6a6a5a142363e7a3dfaa17d87"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__sha256__s">cx_sha256_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a></td></tr>
<tr class="memdesc:ac46cc2c6a6a5a142363e7a3dfaa17d87"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ac46cc2c6a6a5a142363e7a3dfaa17d87">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a8b0df02125b1fde2936e615416b09fd7"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#a8b0df02125b1fde2936e615416b09fd7">cx_sha224_init_no_throw</a> (<a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *hash)</td></tr>
<tr class="memdesc:a8b0df02125b1fde2936e615416b09fd7"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-224 context.  <a href="#a8b0df02125b1fde2936e615416b09fd7">More...</a><br /></td></tr>
<tr class="memitem:a1282c14df106d5a3b26d55387a33c167"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#a1282c14df106d5a3b26d55387a33c167">cx_sha224_init</a> (<a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *hash)</td></tr>
<tr class="memdesc:a1282c14df106d5a3b26d55387a33c167"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-224 context.  <a href="#a1282c14df106d5a3b26d55387a33c167">More...</a><br /></td></tr>
<tr class="memitem:a8d0ee114d08779d43b970b3f7cc8a1fc"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#a8d0ee114d08779d43b970b3f7cc8a1fc">cx_sha256_init_no_throw</a> (<a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *hash)</td></tr>
<tr class="memdesc:a8d0ee114d08779d43b970b3f7cc8a1fc"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-256 context.  <a href="#a8d0ee114d08779d43b970b3f7cc8a1fc">More...</a><br /></td></tr>
<tr class="memitem:a8c217528e08352c856b2d27c9531bdf2"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#a8c217528e08352c856b2d27c9531bdf2">cx_sha256_init</a> (<a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *hash)</td></tr>
<tr class="memdesc:a8c217528e08352c856b2d27c9531bdf2"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-256 context.  <a href="#a8c217528e08352c856b2d27c9531bdf2">More...</a><br /></td></tr>
<tr class="memitem:ad71355cf5f37bb24c9febd4c477aab48"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha256_8h#ad71355cf5f37bb24c9febd4c477aab48">cx_hash_sha256</a> (const uint8_t *in, size_t len, uint8_t *out, size_t out_len)</td></tr>
<tr class="memdesc:ad71355cf5f37bb24c9febd4c477aab48"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Computes a one shot SHA-256 digest.  <a href="#ad71355cf5f37bb24c9febd4c477aab48">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>SHA-2 (Secure Hash Algorithm 2) </p>
<p>SHA-224 and SHA-256 are secure hash functions belonging to the SHA-2 family with a digest length of 224 and 256 bits, respectively. The message length should be less than 2<sup align="right">64</sup> bits. Refer to <a href="https://csrc.nist.gov/publications/detail/fips/180/4/final">FIPS 180-4 </a> for more details. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a1869f01a1fa5deb2845c93957e89be88"></a>
<h2 class="memtitle">CX_SHA224_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_SHA224_SIZE&#160;&#160;&#160;28</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>SHA-224 message digest size. </p>

</div>
</div>
<a id="ae20099c7ad89af9ac43fd93fa02826a4"></a>
<h2 class="memtitle">CX_SHA256_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_SHA256_SIZE&#160;&#160;&#160;32</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>SHA-256 message digest size. </p>

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="ac46cc2c6a6a5a142363e7a3dfaa17d87"></a>
<h2 class="memtitle">cx_sha256_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__sha256__s">cx_sha256_s</a> <a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__sha256__s" title="SHA-224 and SHA-256 context. ">cx_sha256_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="ad71355cf5f37bb24c9febd4c477aab48"></a>
<h2 class="memtitle">cx_hash_sha256()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t cx_hash_sha256 </td>
          <td>(</td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Computes a one shot SHA-256 digest. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Length of the output. This is actually 256 bits. </td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a1282c14df106d5a3b26d55387a33c167"></a>
<h2 class="memtitle">cx_sha224_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha224_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA-224 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA224 identifier. </dd></dl>

</div>
</div>
<a id="a8b0df02125b1fde2936e615416b09fd7"></a>
<h2 class="memtitle">cx_sha224_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha224_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA-224 context. </p>
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
<a id="a8c217528e08352c856b2d27c9531bdf2"></a>
<h2 class="memtitle">cx_sha256_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha256_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA-256 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA256 identifier. </dd></dl>

</div>
</div>
<a id="a8d0ee114d08779d43b970b3f7cc8a1fc"></a>
<h2 class="memtitle">cx_sha256_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha256_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha256_8h#ac46cc2c6a6a5a142363e7a3dfaa17d87">cx_sha256_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA-256 context. </p>
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
