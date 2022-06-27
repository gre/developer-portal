---
title: lcx_ecdsa.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>ECDSA (Elliptic Curve Digital Signature Algorithm).  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a81c54811c56a007be3caf478edd2d7d3"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdsa_8h#a81c54811c56a007be3caf478edd2d7d3">cx_ecdsa_init_public_key</a>&#160;&#160;&#160;<a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371">cx_ecfp_init_public_key_no_throw</a></td></tr>
<tr class="memitem:a606d8101c109dbb15c8cc8449d936e17"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdsa_8h#a606d8101c109dbb15c8cc8449d936e17">cx_ecdsa_init_private_key</a>&#160;&#160;&#160;<a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5">cx_ecfp_init_private_key_no_throw</a></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:adb5c5dd90d0ff5ce1f853c55f93e46de"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdsa_8h#adb5c5dd90d0ff5ce1f853c55f93e46de">cx_ecdsa_sign_no_throw</a> (const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, uint8_t *sig, size_t *sig_len, uint32_t *info)</td></tr>
<tr class="memdesc:adb5c5dd90d0ff5ce1f853c55f93e46de"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Signs a message digest according to ECDSA specification.  <a href="#adb5c5dd90d0ff5ce1f853c55f93e46de">More...</a><br /></td></tr>
<tr class="memitem:a0c5c6a9b51b85669825175f1b830c2c8"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdsa_8h#a0c5c6a9b51b85669825175f1b830c2c8">cx_ecdsa_sign</a> (const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *hash, unsigned int hash_len, unsigned char *sig, unsigned int sig_len, unsigned int *info)</td></tr>
<tr class="memdesc:a0c5c6a9b51b85669825175f1b830c2c8"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Signs a message digest according to ECDSA specification.  <a href="#a0c5c6a9b51b85669825175f1b830c2c8">More...</a><br /></td></tr>
<tr class="memitem:ae9cb1ca66a942ee7df1d724e50ded717"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdsa_8h#ae9cb1ca66a942ee7df1d724e50ded717">cx_ecdsa_verify_no_throw</a> (const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pukey, const uint8_t *hash, size_t hash_len, const uint8_t *sig, size_t sig_len)</td></tr>
<tr class="memdesc:ae9cb1ca66a942ee7df1d724e50ded717"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verifies an ECDSA signature according to ECDSA specification.  <a href="#ae9cb1ca66a942ee7df1d724e50ded717">More...</a><br /></td></tr>
<tr class="memitem:a8f404764e06849d8a3727cf28aff2c33"><td class="memItemLeft" align="right" valign="top">static bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdsa_8h#a8f404764e06849d8a3727cf28aff2c33">cx_ecdsa_verify</a> (const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pukey, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *hash, unsigned int hash_len, const unsigned char *sig, unsigned int sig_len)</td></tr>
<tr class="memdesc:a8f404764e06849d8a3727cf28aff2c33"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verifies an ECDSA signature according to ECDSA specification.  <a href="#a8f404764e06849d8a3727cf28aff2c33">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>ECDSA (Elliptic Curve Digital Signature Algorithm). </p>
<p>ECDSA is a standard digital signature scheme relying on elliptic curves. It provides data integrity and verifiable authenticity. Refer to <a href="https://tools.ietf.org/rfc6979">RFC6979 </a> for more details. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a606d8101c109dbb15c8cc8449d936e17"></a>
<h2 class="memtitle">cx_ecdsa_init_private_key</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define cx_ecdsa_init_private_key&#160;&#160;&#160;<a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5">cx_ecfp_init_private_key_no_throw</a></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a81c54811c56a007be3caf478edd2d7d3"></a>
<h2 class="memtitle">cx_ecdsa_init_public_key</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define cx_ecdsa_init_public_key&#160;&#160;&#160;<a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371">cx_ecfp_init_public_key_no_throw</a></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a0c5c6a9b51b85669825175f1b830c2c8"></a>
<h2 class="memtitle">cx_ecdsa_sign()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecdsa_sign </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>pvkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>sig_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int *&#160;</td>
          <td class="paramname"><b>info</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Signs a message digest according to ECDSA specification. </p>
<p>This function throws an exception if the signature doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecdsa_8h#adb5c5dd90d0ff5ce1f853c55f93e46de" title="Signs a message digest according to ECDSA specification. ">cx_ecdsa_sign_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">Private key. Shall be initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_RND_TRNG</li>
<li>CX_RND_RFC6979</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifer. This parameter is mandatory with the flag CX_RND_RFC6979.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Digest of the message to be signed. The length of <b>hash</b> must be shorter than the group order size. Otherwise it is truncated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest in octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature. The signature is encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b></td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the buffer in octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">info</td><td colspan="4">Set with CX_ECCINFO_PARITY_ODD if the y-coordinate is odd when computing <b>[k].G</b>.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the signature.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_VALUE</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="adb5c5dd90d0ff5ce1f853c55f93e46de"></a>
<h2 class="memtitle">cx_ecdsa_sign_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdsa_sign_no_throw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>pvkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><b>sig_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint32_t *&#160;</td>
          <td class="paramname"><b>info</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Signs a message digest according to ECDSA specification. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">Private key. Shall be initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_RND_TRNG</li>
<li>CX_RND_RFC6979</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifer. This parameter is mandatory with the flag CX_RND_RFC6979.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Digest of the message to be signed. The length of <b>hash</b> must be shorter than the group order size. Otherwise it is truncated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest in octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature. The signature is encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b></td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the buffer in octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">info</td><td colspan="4">Set with CX_ECCINFO_PARITY_ODD if the y-coordinate is odd when computing <b>[k].G</b>.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INTERNAL_ERROR</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_INVALID_PARAMETER_VALUE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a8f404764e06849d8a3727cf28aff2c33"></a>
<h2 class="memtitle">cx_ecdsa_verify()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static bool cx_ecdsa_verify </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pukey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>sig_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Verifies an ECDSA signature according to ECDSA specification. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pukey</td><td colspan="4">Public key initialized with <a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371" title="Initializes a public key. ">cx_ecfp_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">ECDSA mode. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifer. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Digest of the message to be verified. The length of <b>hash</b> must be smaller than the group order size. Otherwise it is truncated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest in octets.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">Pointer to the signature encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b></td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature in octets.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if the signature is verified, 0 otherwise. </dd></dl>

</div>
</div>
<a id="ae9cb1ca66a942ee7df1d724e50ded717"></a>
<h2 class="memtitle">cx_ecdsa_verify_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool cx_ecdsa_verify_no_throw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pukey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>sig_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Verifies an ECDSA signature according to ECDSA specification. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pukey</td><td colspan="4">Public key initialized with <a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371" title="Initializes a public key. ">cx_ecfp_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Digest of the message to be verified. The length of <b>hash</b> must be smaller than the group order size. Otherwise it is truncated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest in octets.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">Pointer to the signature encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b></td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature in octets.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if the signature is verified, 0 otherwise. </dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
