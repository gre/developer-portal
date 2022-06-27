---
title: lcx_eddsa.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>EDDSA (Edwards Curve Digital Signature Algorithm)  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:af5baecd2ef3d0ca561059a38e3a0fbc0"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__eddsa_8h#af5baecd2ef3d0ca561059a38e3a0fbc0">cx_eddsa_sign_no_throw</a> (const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, uint8_t *sig, size_t sig_len)</td></tr>
<tr class="memdesc:af5baecd2ef3d0ca561059a38e3a0fbc0"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Signs a message digest.  <a href="#af5baecd2ef3d0ca561059a38e3a0fbc0">More...</a><br /></td></tr>
<tr class="memitem:a0b57531e83e4b41a8ea9af3371a92c1a"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__eddsa_8h#a0b57531e83e4b41a8ea9af3371a92c1a">cx_eddsa_sign</a> (const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *hash, unsigned int hash_len, const unsigned char *ctx, unsigned int ctx_len, unsigned char *sig, unsigned int sig_len, unsigned int *info)</td></tr>
<tr class="memdesc:a0b57531e83e4b41a8ea9af3371a92c1a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Signs a message digest.  <a href="#a0b57531e83e4b41a8ea9af3371a92c1a">More...</a><br /></td></tr>
<tr class="memitem:a3cf296536f3fb32e731f463385cf698e"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__eddsa_8h#a3cf296536f3fb32e731f463385cf698e">cx_eddsa_verify_no_throw</a> (const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pukey, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, const uint8_t *sig, size_t sig_len)</td></tr>
<tr class="memdesc:a3cf296536f3fb32e731f463385cf698e"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verifies a signature.  <a href="#a3cf296536f3fb32e731f463385cf698e">More...</a><br /></td></tr>
<tr class="memitem:a6dd546700a865eae1f89fd438185469c"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__eddsa_8h#a6dd546700a865eae1f89fd438185469c">cx_eddsa_verify</a> (const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pukey, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *hash, unsigned int hash_len, const unsigned char *ctx, unsigned int ctx_len, const unsigned char *sig, unsigned int sig_len)</td></tr>
<tr class="memdesc:a6dd546700a865eae1f89fd438185469c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verifies a signature.  <a href="#a6dd546700a865eae1f89fd438185469c">More...</a><br /></td></tr>
<tr class="memitem:a6b5ff7583b40951d6fa2e66a8683d078"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__eddsa_8h#a6b5ff7583b40951d6fa2e66a8683d078">cx_encode_coord</a> (uint8_t *coord, int len, int sign)</td></tr>
<tr class="memdesc:a6b5ff7583b40951d6fa2e66a8683d078"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encodes the curve point coordinates.  <a href="#a6b5ff7583b40951d6fa2e66a8683d078">More...</a><br /></td></tr>
<tr class="memitem:a0f57c52056f373f1a2c21f6d0c838a6f"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__eddsa_8h#a0f57c52056f373f1a2c21f6d0c838a6f">cx_decode_coord</a> (uint8_t *coord, int len)</td></tr>
<tr class="memdesc:a0f57c52056f373f1a2c21f6d0c838a6f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Decodes the curve point coordinates.  <a href="#a0f57c52056f373f1a2c21f6d0c838a6f">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>EDDSA (Edwards Curve Digital Signature Algorithm) </p>
<p>EDDSA is a digital signature scheme relying on Edwards curves, especially Ed25519 and Ed448. Refer to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a> for more details. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a0f57c52056f373f1a2c21f6d0c838a6f"></a>
<h2 class="memtitle">cx_decode_coord()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">int cx_decode_coord </td>
          <td>(</td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>coord</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Decodes the curve point coordinates. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">coord</td><td colspan="4">A pointer to the point encoded coordinates.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the encoded coordinates.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Sign of the x-coordinate. </dd></dl>

</div>
</div>
<a id="a0b57531e83e4b41a8ea9af3371a92c1a"></a>
<h2 class="memtitle">cx_eddsa_sign()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_eddsa_sign </td>
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
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>ctx</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>ctx_len</b>, </td>
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

<p>Signs a message digest. </p>
<p>The signature is done according to the EDDSA specification <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__eddsa_8h#af5baecd2ef3d0ca561059a38e3a0fbc0" title="Signs a message digest. ">cx_eddsa_sign_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">Private key. This shall be initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Mode. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest agorithm identifier. Algorithms supported:<ul>
<li>SHA512</li>
<li>SHA3</li>
<li>Keccak</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the message digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">ctx</td><td colspan="4">Pointer to the context. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">ctx_len</td><td colspan="4">Length of <b>ctx</b>. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">info</td><td colspan="4">Additional information. This parameter is not used.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the signature.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_VALUE</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="af5baecd2ef3d0ca561059a38e3a0fbc0"></a>
<h2 class="memtitle">cx_eddsa_sign_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_eddsa_sign_no_throw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>pvkey</b>, </td>
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
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>sig_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Signs a message digest. </p>
<p>The signature is done according to the EDDSA specification <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">Private key. This shall be initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest agorithm identifier. Algorithms supported:<ul>
<li>SHA512</li>
<li>SHA3</li>
<li>Keccak</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the message digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_INTERNAL_ERROR</li>
<li>CX_INVALID_PARAMETER_VALUE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a6dd546700a865eae1f89fd438185469c"></a>
<h2 class="memtitle">cx_eddsa_verify()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_eddsa_verify </td>
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
          <td class="paramname"><b>ctx</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>ctx_len</b>, </td>
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

<p>Verifies a signature. </p>
<p>The verification is done according to the specification <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. This function throws an exception if the computation doesn't succeed.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pukey</td><td colspan="4">Public key. THis shall be initialized with <a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371" title="Initializes a public key. ">cx_ecfp_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Mode. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest agorithm identifier. Algorithms supported:<ul>
<li>SHA512</li>
<li>SHA3</li>
<li>Keccak</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the message digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">ctx</td><td colspan="4">Pointer to the context. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">ctx_len</td><td colspan="4">Length of the context. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">Pointer to the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if the signature is verified, otherwise 0. </dd></dl>

</div>
</div>
<a id="a3cf296536f3fb32e731f463385cf698e"></a>
<h2 class="memtitle">cx_eddsa_verify_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool cx_eddsa_verify_no_throw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pukey</b>, </td>
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

<p>Verifies a signature. </p>
<p>The verification is done according to the specification <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pukey</td><td colspan="4">Public key. This shall be initialized with <a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371" title="Initializes a public key. ">cx_ecfp_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest agorithm identifier. Algorithms supported:<ul>
<li>SHA512</li>
<li>SHA3</li>
<li>Keccak</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the message digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the digest.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">Pointer to the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if the signature is verified, otherwise 0. </dd></dl>

</div>
</div>
<a id="a6b5ff7583b40951d6fa2e66a8683d078"></a>
<h2 class="memtitle">cx_encode_coord()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void cx_encode_coord </td>
          <td>(</td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>coord</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>sign</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Encodes the curve point coordinates. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">coord</td><td colspan="4">A pointer to the point coordinates in the form x|y.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the coordinates.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sign</td><td colspan="4">Sign of the x-coordinate. </td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
