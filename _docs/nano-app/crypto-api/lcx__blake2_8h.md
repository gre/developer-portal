---
title: lcx_blake2.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>BLAKE2 crypographic hash function.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____">blake2b_state__</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">BLAKE2b state members.  <a href="../blake2b__state____#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__blake2b__s">cx_blake2b_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">BLAKE2b context.  <a href="../cx__blake2b__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a640fece84f56ea1882e236c855da2ca4"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../blake2b__state____">blake2b_state__</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#a640fece84f56ea1882e236c855da2ca4">blake2b_state</a></td></tr>
<tr class="memdesc:a640fece84f56ea1882e236c855da2ca4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">BLAKE2b state.  <a href="#a640fece84f56ea1882e236c855da2ca4">More...</a><br /></td></tr>
<tr class="memitem:ae926de66e1dac797b97038c19ec2ca44"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__blake2b__s">cx_blake2b_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a></td></tr>
<tr class="memdesc:ae926de66e1dac797b97038c19ec2ca44"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ae926de66e1dac797b97038c19ec2ca44">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="enum-members"></a>
Enumerations</h2></td></tr>
<tr class="memitem:a55df020abc59e40eb12965cf08eca1b5"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5">blake2b_constant</a> { <br />
&#160;&#160;<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5aea9f79a4ec90a788ea0590ae5dfda693">BLAKE2B_BLOCKBYTES</a> = 128, 
<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5ac4536ddb2539173d703b1bc458cce33b">BLAKE2B_OUTBYTES</a> = 64, 
<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5a8dfea1685718cfdbbfc48b85cec868e4">BLAKE2B_KEYBYTES</a> = 64, 
<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5ac6bdac02af2cbdd70f76ae63c1d3fa1e">BLAKE2B_SALTBYTES</a> = 16, 
<br />
&#160;&#160;<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5a83ed255c34f4b1603226f7e3854d57d6">BLAKE2B_PERSONALBYTES</a> = 16
<br />
 }<tr class="memdesc:a55df020abc59e40eb12965cf08eca1b5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">BLAKE2b constants.  <a href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5">More...</a><br /></td></tr>
</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a8a85bc503a81b3565b6811d2d1e04774"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#a8a85bc503a81b3565b6811d2d1e04774">cx_blake2b_init_no_throw</a> (<a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *hash, size_t out_len)</td></tr>
<tr class="memdesc:a8a85bc503a81b3565b6811d2d1e04774"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes BLAKE2b message digest context.  <a href="#a8a85bc503a81b3565b6811d2d1e04774">More...</a><br /></td></tr>
<tr class="memitem:a4dcfb525d262594101a8d6966e0439c4"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#a4dcfb525d262594101a8d6966e0439c4">cx_blake2b_init</a> (<a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *hash, unsigned int out_len)</td></tr>
<tr class="memdesc:a4dcfb525d262594101a8d6966e0439c4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes BLAKE2b message digest context.  <a href="#a4dcfb525d262594101a8d6966e0439c4">More...</a><br /></td></tr>
<tr class="memitem:af2bda9dec7598d4414eb49d3f1ee93ee"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#af2bda9dec7598d4414eb49d3f1ee93ee">cx_blake2b_init2_no_throw</a> (<a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *hash, size_t out_len, uint8_t *salt, size_t salt_len, uint8_t *perso, size_t perso_len)</td></tr>
<tr class="memdesc:af2bda9dec7598d4414eb49d3f1ee93ee"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes BLAKE2b message digest context with salt and personnalization string.  <a href="#af2bda9dec7598d4414eb49d3f1ee93ee">More...</a><br /></td></tr>
<tr class="memitem:a4363d2e56f5be5456f9e00f0890f6dca"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__blake2_8h#a4363d2e56f5be5456f9e00f0890f6dca">cx_blake2b_init2</a> (<a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *hash, unsigned int out_len, unsigned char *salt, unsigned int salt_len, unsigned char *perso, unsigned int perso_len)</td></tr>
<tr class="memdesc:a4363d2e56f5be5456f9e00f0890f6dca"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes BLAKE2b message digest context with salt and personnalization string.  <a href="#a4363d2e56f5be5456f9e00f0890f6dca">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>BLAKE2 crypographic hash function. </p>
<p>BLAKE2b is a cryptographic hash function optimized for 64-bit platforms that produces digests of any size between 1 and 64 bytes. It is specified at <a href="https://blake2.net">https://blake2.net</a>. </p>
</div><h2 class="groupheader">Typedef Documentation</h2>
<a id="a640fece84f56ea1882e236c855da2ca4"></a>
<h2 class="memtitle">blake2b_state</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../blake2b__state____">blake2b_state__</a> <a class="el" href="../lcx__blake2_8h#a640fece84f56ea1882e236c855da2ca4">blake2b_state</a></td>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>BLAKE2b state. </p>

</div>
</div>
<a id="ae926de66e1dac797b97038c19ec2ca44"></a>
<h2 class="memtitle">cx_blake2b_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__blake2b__s">cx_blake2b_s</a> <a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__blake2b__s" title="BLAKE2b context. ">cx_blake2b_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Enumeration Type Documentation</h2>
<a id="a55df020abc59e40eb12965cf08eca1b5"></a>
<h2 class="memtitle">blake2b_constant</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">enum <a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5">blake2b_constant</a></td>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>BLAKE2b constants. </p>
<table class="fieldtable">
<tr><th colspan="4">Enumerator</th></tr><tr><td class="fieldname"><a id="a55df020abc59e40eb12965cf08eca1b5aea9f79a4ec90a788ea0590ae5dfda693"></a>BLAKE2B_BLOCKBYTES&#160;</td><td class="fielddoc"><p>Size of a block. </p>
</td></tr>
<tr><td class="fieldname"><a id="a55df020abc59e40eb12965cf08eca1b5ac4536ddb2539173d703b1bc458cce33b"></a>BLAKE2B_OUTBYTES&#160;</td><td class="fielddoc"><p>Size of the output. </p>
</td></tr>
<tr><td class="fieldname"><a id="a55df020abc59e40eb12965cf08eca1b5a8dfea1685718cfdbbfc48b85cec868e4"></a>BLAKE2B_KEYBYTES&#160;</td><td class="fielddoc"><p>Size of the key. </p>
</td></tr>
<tr><td class="fieldname"><a id="a55df020abc59e40eb12965cf08eca1b5ac6bdac02af2cbdd70f76ae63c1d3fa1e"></a>BLAKE2B_SALTBYTES&#160;</td><td class="fielddoc"><p>Size of the salt. </p>
</td></tr>
<tr><td class="fieldname"><a id="a55df020abc59e40eb12965cf08eca1b5a83ed255c34f4b1603226f7e3854d57d6"></a>BLAKE2B_PERSONALBYTES&#160;</td><td class="fielddoc"><p>Size of the personalization string. </p>
</td></tr>
</table>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a4dcfb525d262594101a8d6966e0439c4"></a>
<h2 class="memtitle">cx_blake2b_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_blake2b_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes BLAKE2b message digest context. </p>
<p>This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__blake2_8h#a8a85bc503a81b3565b6811d2d1e04774" title="Initializes BLAKE2b message digest context. ">cx_blake2b_init_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the BLAKE2b context to initialize. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Digest size in bits.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>BLAKE2b identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a4363d2e56f5be5456f9e00f0890f6dca"></a>
<h2 class="memtitle">cx_blake2b_init2()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_blake2b_init2 </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>salt</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>salt_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>perso</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>perso_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes BLAKE2b message digest context with salt and personnalization string. </p>
<p>This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__blake2_8h#af2bda9dec7598d4414eb49d3f1ee93ee" title="Initializes BLAKE2b message digest context with salt and personnalization string. ...">cx_blake2b_init2_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the BLAKE2b context to initialize. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Digest size in bits.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt</td><td colspan="4">Pointer to a salt (optional).</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt_len</td><td colspan="4">Length of the salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">perso</td><td colspan="4">Pointer to a personalization string (optional).</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">perso_len</td><td colspan="4">Length of the personalization string.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>BLAKE2b identifier.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="af2bda9dec7598d4414eb49d3f1ee93ee"></a>
<h2 class="memtitle">cx_blake2b_init2_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_blake2b_init2_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>out_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>salt</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>salt_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>perso</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>perso_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes BLAKE2b message digest context with salt and personnalization string. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the BLAKE2b context to initialize. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Digest size in bits.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt</td><td colspan="4">Pointer to a salt (optional).</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt_len</td><td colspan="4">Length of the salt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">perso</td><td colspan="4">Pointer to a personalization string (optional).</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">perso_len</td><td colspan="4">Length of the personalization string.</td></tr>
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
<a id="a8a85bc503a81b3565b6811d2d1e04774"></a>
<h2 class="memtitle">cx_blake2b_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_blake2b_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__blake2_8h#ae926de66e1dac797b97038c19ec2ca44">cx_blake2b_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
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

<p>Initializes BLAKE2b message digest context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the BLAKE2b context to initialize. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Digest size in bits.</td></tr>
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
