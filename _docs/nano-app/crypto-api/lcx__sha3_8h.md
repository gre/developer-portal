---
title: lcx_sha3.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>SHA-3 (Secure Hash Algorithm 3)  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s">cx_sha3_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">KECCAK, SHA3 and SHA3-XOF context.  <a href="../cx__sha3__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a2487acc2e3ae619e2916d6741ff9d96a"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__sha3__s">cx_sha3_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a></td></tr>
<tr class="memdesc:a2487acc2e3ae619e2916d6741ff9d96a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a2487acc2e3ae619e2916d6741ff9d96a">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:af1ee003715d6fb8cb6ad954a560b6439"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#af1ee003715d6fb8cb6ad954a560b6439">cx_sha3_init_no_throw</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t size)</td></tr>
<tr class="memdesc:af1ee003715d6fb8cb6ad954a560b6439"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3 context.  <a href="#af1ee003715d6fb8cb6ad954a560b6439">More...</a><br /></td></tr>
<tr class="memitem:adbdddb31ebf5f6a41a6e0a3d76f51648"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#adbdddb31ebf5f6a41a6e0a3d76f51648">cx_sha3_init</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t size)</td></tr>
<tr class="memdesc:adbdddb31ebf5f6a41a6e0a3d76f51648"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3 context.  <a href="#adbdddb31ebf5f6a41a6e0a3d76f51648">More...</a><br /></td></tr>
<tr class="memitem:a84fdde7c9a61fe0ccc4ad16b5ff137a9"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#a84fdde7c9a61fe0ccc4ad16b5ff137a9">cx_keccak_init_no_throw</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t size)</td></tr>
<tr class="memdesc:a84fdde7c9a61fe0ccc4ad16b5ff137a9"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a KECCAK context.  <a href="#a84fdde7c9a61fe0ccc4ad16b5ff137a9">More...</a><br /></td></tr>
<tr class="memitem:a4154c0e5ef1cb0e5ce89c10c83dad02c"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#a4154c0e5ef1cb0e5ce89c10c83dad02c">cx_keccak_init</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t size)</td></tr>
<tr class="memdesc:a4154c0e5ef1cb0e5ce89c10c83dad02c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a KECCAK context.  <a href="#a4154c0e5ef1cb0e5ce89c10c83dad02c">More...</a><br /></td></tr>
<tr class="memitem:acf6c2bda2bbc64ee17cff4e16a78b145"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#acf6c2bda2bbc64ee17cff4e16a78b145">cx_shake128_init_no_throw</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t out_size)</td></tr>
<tr class="memdesc:acf6c2bda2bbc64ee17cff4e16a78b145"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3-XOF context.  <a href="#acf6c2bda2bbc64ee17cff4e16a78b145">More...</a><br /></td></tr>
<tr class="memitem:a3b7b0e53b9b88f4a576c1038ad0547ed"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#a3b7b0e53b9b88f4a576c1038ad0547ed">cx_shake128_init</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, unsigned int out_size)</td></tr>
<tr class="memdesc:a3b7b0e53b9b88f4a576c1038ad0547ed"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3-XOF context.  <a href="#a3b7b0e53b9b88f4a576c1038ad0547ed">More...</a><br /></td></tr>
<tr class="memitem:a43934d03ef80a9c0be16805c46aaae33"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#a43934d03ef80a9c0be16805c46aaae33">cx_shake256_init_no_throw</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t out_size)</td></tr>
<tr class="memdesc:a43934d03ef80a9c0be16805c46aaae33"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3-XOF context.  <a href="#a43934d03ef80a9c0be16805c46aaae33">More...</a><br /></td></tr>
<tr class="memitem:ab4ed687f02084b7cbfe1a7baaf597f21"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#ab4ed687f02084b7cbfe1a7baaf597f21">cx_shake256_init</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, unsigned int out_size)</td></tr>
<tr class="memdesc:ab4ed687f02084b7cbfe1a7baaf597f21"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3-XOF context.  <a href="#ab4ed687f02084b7cbfe1a7baaf597f21">More...</a><br /></td></tr>
<tr class="memitem:ac21ff12761bb2f87176109b4fbc5a84b"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#ac21ff12761bb2f87176109b4fbc5a84b">cx_sha3_xof_init_no_throw</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, size_t size, size_t out_length)</td></tr>
<tr class="memdesc:ac21ff12761bb2f87176109b4fbc5a84b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3-XOF context.  <a href="#ac21ff12761bb2f87176109b4fbc5a84b">More...</a><br /></td></tr>
<tr class="memitem:aaa1ad51b0b4b5d2ac90b50633daf7aec"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha3_8h#aaa1ad51b0b4b5d2ac90b50633daf7aec">cx_sha3_xof_init</a> (<a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *hash, unsigned int size, unsigned int out_length)</td></tr>
<tr class="memdesc:aaa1ad51b0b4b5d2ac90b50633daf7aec"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a SHA3-XOF context.  <a href="#aaa1ad51b0b4b5d2ac90b50633daf7aec">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>SHA-3 (Secure Hash Algorithm 3) </p>
<p>SHA-3 specifies a family of secure hash functions based on an instance of the KECCAK algorithm. Refer to <a href="https://csrc.nist.gov/publications/detail/fips/202/final">FIPS 202 </a> for more details. </p>
</div><h2 class="groupheader">Typedef Documentation</h2>
<a id="a2487acc2e3ae619e2916d6741ff9d96a"></a>
<h2 class="memtitle">cx_sha3_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__sha3__s">cx_sha3_s</a> <a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__sha3__s" title="KECCAK, SHA3 and SHA3-XOF context. ">cx_sha3_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a4154c0e5ef1cb0e5ce89c10c83dad02c"></a>
<h2 class="memtitle">cx_keccak_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_keccak_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
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
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a KECCAK context. </p>
<p>Supported output sizes in bits:</p><ul>
<li>224</li>
<li>256</li>
<li>384</li>
<li>512</li>
</ul>
<p>This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__sha3_8h#a84fdde7c9a61fe0ccc4ad16b5ff137a9" title="Initializes a KECCAK context. ">cx_keccak_init_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the KECCAK context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of the hash output in bits.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>KECCAK identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a84fdde7c9a61fe0ccc4ad16b5ff137a9"></a>
<h2 class="memtitle">cx_keccak_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_keccak_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
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

<p>Initializes a KECCAK context. </p>
<p>Supported output sizes in bits:</p><ul>
<li>224</li>
<li>256</li>
<li>384</li>
<li>512</li>
</ul>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the KECCAK context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of the hash output in bits.</td></tr>
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
<a id="adbdddb31ebf5f6a41a6e0a3d76f51648"></a>
<h2 class="memtitle">cx_sha3_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha3_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
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
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA3 context. </p>
<p>Supported output sizes in bits:</p><ul>
<li>224</li>
<li>256</li>
<li>384</li>
<li>512</li>
</ul>
<p>This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__sha3_8h#af1ee003715d6fb8cb6ad954a560b6439" title="Initializes a SHA3 context. ">cx_sha3_init_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the SHA3 context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of the hash output in bits.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA3 identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="af1ee003715d6fb8cb6ad954a560b6439"></a>
<h2 class="memtitle">cx_sha3_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha3_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
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

<p>Initializes a SHA3 context. </p>
<p>Supported output sizes in bits:</p><ul>
<li>224</li>
<li>256</li>
<li>384</li>
<li>512</li>
</ul>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the SHA3 context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of the hash output in bits.</td></tr>
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
<a id="aaa1ad51b0b4b5d2ac90b50633daf7aec"></a>
<h2 class="memtitle">cx_sha3_xof_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha3_xof_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>size</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_length</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA3-XOF context. </p>
<p>This can be used to initialize either SHAKE128 or SHAKE256. Supported output sizes in bits:</p><ul>
<li>256</li>
<li>512</li>
</ul>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__sha3_8h#ac21ff12761bb2f87176109b4fbc5a84b" title="Initializes a SHA3-XOF context. ">cx_sha3_xof_init_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of SHA3 digest in bits.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_length</td><td colspan="4">Length of the output in bytes.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Either SHAKE128 or SHAKE256 identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="ac21ff12761bb2f87176109b4fbc5a84b"></a>
<h2 class="memtitle">cx_sha3_xof_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha3_xof_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>size</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>out_length</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA3-XOF context. </p>
<p>This can be used to initialize either SHAKE128 or SHAKE256. Supported output sizes in bits:</p><ul>
<li>256</li>
<li>512</li>
</ul>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td colspan="4">Length of SHA3 digest in bits.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_length</td><td colspan="4">Length of the output in bytes.</td></tr>
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
<a id="a3b7b0e53b9b88f4a576c1038ad0547ed"></a>
<h2 class="memtitle">cx_shake128_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_shake128_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_size</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA3-XOF context. </p>
<p>SHAKE128 is a SHA3-XOF (Extendable Output Function based on SHA3) with a 128-bit security. Supported output sizes in bits:</p><ul>
<li>256</li>
<li>512</li>
</ul>
<p>This function throws an exception if the initialization doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__sha3_8h#acf6c2bda2bbc64ee17cff4e16a78b145" title="Initializes a SHA3-XOF context. ">cx_shake128_init_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_size</td><td colspan="4">Length of the output in bits.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHAKE128 identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="acf6c2bda2bbc64ee17cff4e16a78b145"></a>
<h2 class="memtitle">cx_shake128_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_shake128_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>out_size</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA3-XOF context. </p>
<p>SHAKE128 is a SHA3-XOF (Extendable Output Function based on SHA3) with a 128-bit security. Supported output sizes in bits:</p><ul>
<li>256</li>
<li>512</li>
</ul>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_size</td><td colspan="4">Length of the output in bits.</td></tr>
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
<a id="ab4ed687f02084b7cbfe1a7baaf597f21"></a>
<h2 class="memtitle">cx_shake256_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_shake256_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_size</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a SHA3-XOF context. </p>
<p>SHAKE256 is a SHA3-XOF (Extendable Output Function based on SHA3) with a 256-bit security. Supported output sizes in bits:</p><ul>
<li>256</li>
<li>512</li>
</ul>
<p>This function throws an exception if the initialization doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__sha3_8h#a43934d03ef80a9c0be16805c46aaae33" title="Initializes a SHA3-XOF context. ">cx_shake256_init_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_size</td><td colspan="4">Length of the output in bits.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA256 identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a43934d03ef80a9c0be16805c46aaae33"></a>
<h2 class="memtitle">cx_shake256_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_shake256_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha3_8h#a2487acc2e3ae619e2916d6741ff9d96a">cx_sha3_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>out_size</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a SHA3-XOF context. </p>
<p>SHAKE256 is a SHA3-XOF (Extendable Output Function based on SHA3) with a 256-bit security. Supported output sizes in bits:</p><ul>
<li>256</li>
<li>512</li>
</ul>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_size</td><td colspan="4">Length of the output in bits.</td></tr>
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
