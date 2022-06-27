---
title: lcx_pbkdf2.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>PBKDF2 (Password-Based Key Derivation Function)  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a4f9733a932cdcb904a602ed76252151d"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__pbkdf2_8h#a4f9733a932cdcb904a602ed76252151d">cx_pbkdf2_sha512</a>(password,  password_len,  salt,  salt_len,  iterations,  out,  out_len)&#160;&#160;&#160;<a class="el" href="../lcx__pbkdf2_8h#aa8e83c16857155d23468877ca99b6bc1">cx_pbkdf2_no_throw</a>(<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117af1c7c38d54f080781c6026cb6fed85f6">CX_SHA512</a>, password, password_len, salt, salt_len, iterations, out, out_len)</td></tr>
<tr class="memdesc:a4f9733a932cdcb904a602ed76252151d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Computes a PBKDF2 bytes sequence with SHA512.  <a href="#a4f9733a932cdcb904a602ed76252151d">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:aa8e83c16857155d23468877ca99b6bc1"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__pbkdf2_8h#aa8e83c16857155d23468877ca99b6bc1">cx_pbkdf2_no_throw</a> (<a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> md_type, const uint8_t *password, size_t passwordlen, uint8_t *salt, size_t saltlen, uint32_t iterations, uint8_t *out, size_t outLength)</td></tr>
<tr class="memdesc:aa8e83c16857155d23468877ca99b6bc1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Computes a PBKDF2 bytes sequence.  <a href="#aa8e83c16857155d23468877ca99b6bc1">More...</a><br /></td></tr>
<tr class="memitem:a57dd9eec0da8095a40e88b57e97e58ba"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__pbkdf2_8h#a57dd9eec0da8095a40e88b57e97e58ba">cx_pbkdf2</a> (<a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> md_type, const unsigned char *password, unsigned short passwordlen, unsigned char *salt, unsigned short saltlen, unsigned int iterations, unsigned char *out, unsigned int outLength)</td></tr>
<tr class="memdesc:a57dd9eec0da8095a40e88b57e97e58ba"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Computes a PBKDF2 bytes sequence.  <a href="#a57dd9eec0da8095a40e88b57e97e58ba">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>PBKDF2 (Password-Based Key Derivation Function) </p>
<p>PBKDF2 is a key derivation function i.e. it produces a key from a base key (a password) and other parameters (a salt and an iteration counter). It consists in iteratively deriving HMAC. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a4f9733a932cdcb904a602ed76252151d"></a>
<h2 class="memtitle">cx_pbkdf2_sha512</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define cx_pbkdf2_sha512</td>
          <td>(</td>
          <td class="paramname">password, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramname">password_len, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramname">salt, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramname">salt_len, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramname">iterations, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramname">out, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramname">out_len&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          <td colspan="4">&#160;&#160;&#160;<a class="el" href="../lcx__pbkdf2_8h#aa8e83c16857155d23468877ca99b6bc1">cx_pbkdf2_no_throw</a>(<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117af1c7c38d54f080781c6026cb6fed85f6">CX_SHA512</a>, password, password_len, salt, salt_len, iterations, out, out_len)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Computes a PBKDF2 bytes sequence with SHA512. </p>
<p>It computes the bytes sequence according to <a href="https://tools.ietf.org/html/rfc2898">RFC 2898 </a> with SHA512 as the underlying hash function.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">password</td><td colspan="4">Password used as a base key to compute the HMAC.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">password_len</td><td colspan="4">Length of the password i.e. the length of the HMAC key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt</td><td colspan="4">Initial salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt_len</td><td colspan="4">Length of the salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iterations</td><td colspan="4">Per block iteration.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the output.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Lengh of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a57dd9eec0da8095a40e88b57e97e58ba"></a>
<h2 class="memtitle">cx_pbkdf2()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_pbkdf2 </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>md_type</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>password</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned short&#160;</td>
          <td class="paramname"><b>passwordlen</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>salt</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned short&#160;</td>
          <td class="paramname"><b>saltlen</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>iterations</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>outLength</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Computes a PBKDF2 bytes sequence. </p>
<p>It computes the bytes sequence according to <a href="https://tools.ietf.org/html/rfc2898">RFC 2898 </a>. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__pbkdf2_8h#aa8e83c16857155d23468877ca99b6bc1" title="Computes a PBKDF2 bytes sequence. ">cx_pbkdf2_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">md_type</td><td colspan="4">Message digest algorithm identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">password</td><td colspan="4">Password used as a base key to compute the HMAC.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">passwordlen</td><td colspan="4">Length of the password i.e. the length of the HMAC key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt</td><td colspan="4">Initial salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">saltlen</td><td colspan="4">Length of the salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iterations</td><td colspan="4">Per block iteration.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the output.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">outLength</td><td colspan="4">Lengh of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="aa8e83c16857155d23468877ca99b6bc1"></a>
<h2 class="memtitle">cx_pbkdf2_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_pbkdf2_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>md_type</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>password</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>passwordlen</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>salt</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>saltlen</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>iterations</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>outLength</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Computes a PBKDF2 bytes sequence. </p>
<p>It computes the bytes sequence according to <a href="https://tools.ietf.org/html/rfc2898">RFC 2898 </a>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">md_type</td><td colspan="4">Message digest algorithm identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">password</td><td colspan="4">Password used as a base key to compute the HMAC.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">passwordlen</td><td colspan="4">Length of the password i.e. the length of the HMAC key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt</td><td colspan="4">Initial salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">saltlen</td><td colspan="4">Length of the salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iterations</td><td colspan="4">Per block iteration.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the output.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">outLength</td><td colspan="4">Lengh of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
