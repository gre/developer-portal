---
title: lcx_sha512.h
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
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha512__s">cx_sha512_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">SHA-384 and SHA-512 context.  <a href="../cx__sha512__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a31fde7c6974a7fe5cda7bde88d881d9a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a31fde7c6974a7fe5cda7bde88d881d9a">CX_SHA384_SIZE</a>&#160;&#160;&#160;48</td></tr>
<tr class="memdesc:a31fde7c6974a7fe5cda7bde88d881d9a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">SHA-384 message digest size.  <a href="#a31fde7c6974a7fe5cda7bde88d881d9a">More...</a><br /></td></tr>
<tr class="memitem:a8c92da6dbfa2fa62932f43353cd70c8e"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a8c92da6dbfa2fa62932f43353cd70c8e">CX_SHA512_SIZE</a>&#160;&#160;&#160;64</td></tr>
<tr class="memdesc:a8c92da6dbfa2fa62932f43353cd70c8e"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">SHA-512 message digest size.  <a href="#a8c92da6dbfa2fa62932f43353cd70c8e">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a53d64cea729324cd5b0b260e3657e04e"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__sha512__s">cx_sha512_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a></td></tr>
<tr class="memdesc:a53d64cea729324cd5b0b260e3657e04e"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a53d64cea729324cd5b0b260e3657e04e">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:aeae1fdcd8850affddff9947c1ac16b28"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#aeae1fdcd8850affddff9947c1ac16b28">cx_sha384_init_no_throw</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:aeae1fdcd8850affddff9947c1ac16b28"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-384 context.  <a href="#aeae1fdcd8850affddff9947c1ac16b28">More...</a><br /></td></tr>
<tr class="memitem:a8ede0c1a3e360f7f9a6aaeef9a08a376"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a8ede0c1a3e360f7f9a6aaeef9a08a376">cx_sha384_init</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:a8ede0c1a3e360f7f9a6aaeef9a08a376"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-384 context.  <a href="#a8ede0c1a3e360f7f9a6aaeef9a08a376">More...</a><br /></td></tr>
<tr class="memitem:ad562a0b932d7e72687f5c8cb0ca43c56"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#ad562a0b932d7e72687f5c8cb0ca43c56">cx_sha512_init_no_throw</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:ad562a0b932d7e72687f5c8cb0ca43c56"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-512 context.  <a href="#ad562a0b932d7e72687f5c8cb0ca43c56">More...</a><br /></td></tr>
<tr class="memitem:aeedda5d7c717075e96109f45311a8085"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#aeedda5d7c717075e96109f45311a8085">cx_sha512_init</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:aeedda5d7c717075e96109f45311a8085"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA-512 context.  <a href="#aeedda5d7c717075e96109f45311a8085">More...</a><br /></td></tr>
<tr class="memitem:ae27883b7bef166ac7bfbf0ab7b284649"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#ae27883b7bef166ac7bfbf0ab7b284649">cx_hash_sha512</a> (const uint8_t *in, size_t in_len, uint8_t *out, size_t out_len)</td></tr>
<tr class="memdesc:ae27883b7bef166ac7bfbf0ab7b284649"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Computes a one shot SHA-512 digest.  <a href="#ae27883b7bef166ac7bfbf0ab7b284649">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>SHA-2 (Secure Hash Algorithm 2) </p>
<p>SHA-384 and SHA-512 are secure hash functions belonging to the SHA-2 family with a digest length of 384 and 512 bits, respectively. The message length should be less than 2<sup align="right">128</sup> bits. Refer to <a href="https://csrc.nist.gov/publications/detail/fips/180/4/final">FIPS 180-4 </a> for more details. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a31fde7c6974a7fe5cda7bde88d881d9a"></a>
<h2 class="memtitle">CX_SHA384_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_SHA384_SIZE&#160;&#160;&#160;48</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>SHA-384 message digest size. </p>

</div>
</div>
<a id="a8c92da6dbfa2fa62932f43353cd70c8e"></a>
<h2 class="memtitle">CX_SHA512_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_SHA512_SIZE&#160;&#160;&#160;64</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>SHA-512 message digest size. </p>

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="a53d64cea729324cd5b0b260e3657e04e"></a>
<h2 class="memtitle">cx_sha512_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__sha512__s">cx_sha512_s</a> <a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__sha512__s" title="SHA-384 and SHA-512 context. ">cx_sha512_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="ae27883b7bef166ac7bfbf0ab7b284649"></a>
<h2 class="memtitle">cx_hash_sha512()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t cx_hash_sha512 </td>
          <td>(</td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>in_len</b>, </td>
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

<p>Computes a one shot SHA-512 digest. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the output.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out_len</td><td colspan="4">Length of the output. This is actually 512 bits. </td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a8ede0c1a3e360f7f9a6aaeef9a08a376"></a>
<h2 class="memtitle">cx_sha384_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha384_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA-384 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA384 identifier. </dd></dl>

</div>
</div>
<a id="aeae1fdcd8850affddff9947c1ac16b28"></a>
<h2 class="memtitle">cx_sha384_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha384_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA-384 context. </p>
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
<a id="aeedda5d7c717075e96109f45311a8085"></a>
<h2 class="memtitle">cx_sha512_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha512_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA-512 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA512 identifier. </dd></dl>

</div>
</div>
<a id="ad562a0b932d7e72687f5c8cb0ca43c56"></a>
<h2 class="memtitle">cx_sha512_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha512_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b></td><td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA-512 context. </p>
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
