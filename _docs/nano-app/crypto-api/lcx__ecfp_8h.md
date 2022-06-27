---
title: lcx_ecfp.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Key pair generation based on elliptic curves.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__public__key__s">cx_ecfp_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Elliptic Curve public key.  <a href="../cx__ecfp__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__private__key__s">cx_ecfp_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Elliptic Curve private key.  <a href="../cx__ecfp__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_256_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 256-bit Elliptic Curve public key.  <a href="../cx__ecfp__256__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_256_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 256-bit Elliptic Curve private key.  <a href="../cx__ecfp__256__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__256__extended__private__key__s">cx_ecfp_256_extended_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 256-bit Elliptic Curve extended private key.  <a href="../cx__ecfp__256__extended__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__384__public__key__s">cx_ecfp_384_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 384-bit Elliptic Curve public key.  <a href="../cx__ecfp__384__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__384__private__key__s">cx_ecfp_384_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 384-bit Elliptic Curve private key.  <a href="../cx__ecfp__384__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__512__public__key__s">cx_ecfp_512_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 512-bit Elliptic Curve public key.  <a href="../cx__ecfp__512__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__512__private__key__s">cx_ecfp_512_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 512-bit Elliptic Curve private key.  <a href="../cx__ecfp__512__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__512__extented__private__key__s">cx_ecfp_512_extented_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 512-bit Elliptic Curve extended private key.  <a href="../cx__ecfp__512__extented__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__640__public__key__s">cx_ecfp_640_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 640-bit Elliptic Curve public key.  <a href="../cx__ecfp__640__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__640__private__key__s">cx_ecfp_640_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Up to 640-bit Elliptic Curve private key.  <a href="../cx__ecfp__640__private__key__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:afaa50411578a50dfe6b26af1e8eb80ea"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_256_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#afaa50411578a50dfe6b26af1e8eb80ea">cx_ecfp_256_public_key_t</a></td></tr>
<tr class="memdesc:afaa50411578a50dfe6b26af1e8eb80ea"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#afaa50411578a50dfe6b26af1e8eb80ea">More...</a><br /></td></tr>
<tr class="memitem:ab797613054a5e9af9f6bbfb2dc1573f1"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_256_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#ab797613054a5e9af9f6bbfb2dc1573f1">cx_ecfp_256_private_key_t</a></td></tr>
<tr class="memdesc:ab797613054a5e9af9f6bbfb2dc1573f1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">temporary def type.  <a href="#ab797613054a5e9af9f6bbfb2dc1573f1">More...</a><br /></td></tr>
<tr class="memitem:aad8d77bd31f17bfb8ca11c390dedca91"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__256__extended__private__key__s">cx_ecfp_256_extended_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#aad8d77bd31f17bfb8ca11c390dedca91">cx_ecfp_256_extended_private_key_t</a></td></tr>
<tr class="memdesc:aad8d77bd31f17bfb8ca11c390dedca91"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#aad8d77bd31f17bfb8ca11c390dedca91">More...</a><br /></td></tr>
<tr class="memitem:ad678e5d35ae65cefb258de09588332ba"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_256_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a></td></tr>
<tr class="memitem:a0d6bfe95381fad6884d8aa21fd6446c4"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_256_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a></td></tr>
<tr class="memitem:a210266a591635caeb70e5015d6431e7a"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__384__private__key__s">cx_ecfp_384_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a210266a591635caeb70e5015d6431e7a">cx_ecfp_384_private_key_t</a></td></tr>
<tr class="memdesc:a210266a591635caeb70e5015d6431e7a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a210266a591635caeb70e5015d6431e7a">More...</a><br /></td></tr>
<tr class="memitem:ad346228054ac9ea3d4618a1027aaea1b"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__384__public__key__s">cx_ecfp_384_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#ad346228054ac9ea3d4618a1027aaea1b">cx_ecfp_384_public_key_t</a></td></tr>
<tr class="memdesc:ad346228054ac9ea3d4618a1027aaea1b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ad346228054ac9ea3d4618a1027aaea1b">More...</a><br /></td></tr>
<tr class="memitem:a9ecc945db32a3dd9cf972cfb3bfc244d"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__512__public__key__s">cx_ecfp_512_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a9ecc945db32a3dd9cf972cfb3bfc244d">cx_ecfp_512_public_key_t</a></td></tr>
<tr class="memdesc:a9ecc945db32a3dd9cf972cfb3bfc244d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a9ecc945db32a3dd9cf972cfb3bfc244d">More...</a><br /></td></tr>
<tr class="memitem:a5431c1e8a52a8c95733e7978e67dbf3f"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__512__private__key__s">cx_ecfp_512_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a5431c1e8a52a8c95733e7978e67dbf3f">cx_ecfp_512_private_key_t</a></td></tr>
<tr class="memdesc:a5431c1e8a52a8c95733e7978e67dbf3f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a5431c1e8a52a8c95733e7978e67dbf3f">More...</a><br /></td></tr>
<tr class="memitem:ae63fbb5c7edcdd2f6eb2c17ffafe9c38"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__512__extented__private__key__s">cx_ecfp_512_extented_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#ae63fbb5c7edcdd2f6eb2c17ffafe9c38">cx_ecfp_512_extented_private_key_t</a></td></tr>
<tr class="memdesc:ae63fbb5c7edcdd2f6eb2c17ffafe9c38"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ae63fbb5c7edcdd2f6eb2c17ffafe9c38">More...</a><br /></td></tr>
<tr class="memitem:a9b63e9c101e3216d99be2bd7da2e4249"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__640__public__key__s">cx_ecfp_640_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a9b63e9c101e3216d99be2bd7da2e4249">cx_ecfp_640_public_key_t</a></td></tr>
<tr class="memdesc:a9b63e9c101e3216d99be2bd7da2e4249"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a9b63e9c101e3216d99be2bd7da2e4249">More...</a><br /></td></tr>
<tr class="memitem:ab853a64f1891481c62698e48ce85bc5b"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ecfp__640__private__key__s">cx_ecfp_640_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#ab853a64f1891481c62698e48ce85bc5b">cx_ecfp_640_private_key_t</a></td></tr>
<tr class="memdesc:ab853a64f1891481c62698e48ce85bc5b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ab853a64f1891481c62698e48ce85bc5b">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a9fc2ac0486d0cd6a67f654417ba1f925"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a9fc2ac0486d0cd6a67f654417ba1f925">cx_ecfp_add_point_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *R, const uint8_t *P, const uint8_t *Q)</td></tr>
<tr class="memdesc:a9fc2ac0486d0cd6a67f654417ba1f925"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Adds two points of an elliptic curve.  <a href="#a9fc2ac0486d0cd6a67f654417ba1f925">More...</a><br /></td></tr>
<tr class="memitem:a5a0e2ce81dfb4318e14ae0e9db164db1"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a5a0e2ce81dfb4318e14ae0e9db164db1">cx_ecfp_add_point</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, unsigned char *R, const unsigned char *P, const unsigned char *Q, unsigned int X_len)</td></tr>
<tr class="memdesc:a5a0e2ce81dfb4318e14ae0e9db164db1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Adds two points of an elliptic curve.  <a href="#a5a0e2ce81dfb4318e14ae0e9db164db1">More...</a><br /></td></tr>
<tr class="memitem:a91d6f274abf730d2558c6736b1db00f8"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a91d6f274abf730d2558c6736b1db00f8">cx_ecfp_scalar_mult_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *P, const uint8_t *k, size_t k_len)</td></tr>
<tr class="memdesc:a91d6f274abf730d2558c6736b1db00f8"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Performs a scalar multiplication over an elliptic curve.  <a href="#a91d6f274abf730d2558c6736b1db00f8">More...</a><br /></td></tr>
<tr class="memitem:a2cc4aeae037cc9c0b13954e9bb3651fc"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a2cc4aeae037cc9c0b13954e9bb3651fc">cx_ecfp_scalar_mult</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, unsigned char *P, unsigned int P_len, const unsigned char *k, unsigned int k_len)</td></tr>
<tr class="memdesc:a2cc4aeae037cc9c0b13954e9bb3651fc"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Performs a scalar multiplication over an elliptic curve.  <a href="#a2cc4aeae037cc9c0b13954e9bb3651fc">More...</a><br /></td></tr>
<tr class="memitem:a9dba0fd71ca5df52eb27e3c4493e0371"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371">cx_ecfp_init_public_key_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, const uint8_t *rawkey, size_t key_len, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *key)</td></tr>
<tr class="memdesc:a9dba0fd71ca5df52eb27e3c4493e0371"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a public key.  <a href="#a9dba0fd71ca5df52eb27e3c4493e0371">More...</a><br /></td></tr>
<tr class="memitem:a509a069a0d882d2ebcd7c189fffae52f"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a509a069a0d882d2ebcd7c189fffae52f">cx_ecfp_init_public_key</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, const unsigned char *rawkey, unsigned int key_len, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *key)</td></tr>
<tr class="memdesc:a509a069a0d882d2ebcd7c189fffae52f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a public key.  <a href="#a509a069a0d882d2ebcd7c189fffae52f">More...</a><br /></td></tr>
<tr class="memitem:aa60ed5c59930e787f187df1802b84ab5"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5">cx_ecfp_init_private_key_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, const uint8_t *rawkey, size_t key_len, <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey)</td></tr>
<tr class="memdesc:aa60ed5c59930e787f187df1802b84ab5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a private key.  <a href="#aa60ed5c59930e787f187df1802b84ab5">More...</a><br /></td></tr>
<tr class="memitem:a94402980442875a67af525d3ad907318"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a94402980442875a67af525d3ad907318">cx_ecfp_init_private_key</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, const unsigned char *rawkey, unsigned int key_len, <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey)</td></tr>
<tr class="memdesc:a94402980442875a67af525d3ad907318"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initializes a private key.  <a href="#a94402980442875a67af525d3ad907318">More...</a><br /></td></tr>
<tr class="memitem:a06c0ed692411324f34d97305c9e4040d"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a06c0ed692411324f34d97305c9e4040d">cx_ecfp_generate_pair_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pubkey, <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *privkey, bool keepprivate)</td></tr>
<tr class="memdesc:a06c0ed692411324f34d97305c9e4040d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generates a key pair with SHA-512 hash function.  <a href="#a06c0ed692411324f34d97305c9e4040d">More...</a><br /></td></tr>
<tr class="memitem:a8880d93a82c60faeb564149e9618a6c4"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a8880d93a82c60faeb564149e9618a6c4">cx_ecfp_generate_pair</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pubkey, <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *privkey, int keepprivate)</td></tr>
<tr class="memdesc:a8880d93a82c60faeb564149e9618a6c4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generates a key pair with SHA-512 hash function.  <a href="#a8880d93a82c60faeb564149e9618a6c4">More...</a><br /></td></tr>
<tr class="memitem:a26ca9d7985773300dba5490b0dcd9fc7"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a26ca9d7985773300dba5490b0dcd9fc7">cx_ecfp_generate_pair2_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pubkey, <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *privkey, bool keepprivate, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID)</td></tr>
<tr class="memdesc:a26ca9d7985773300dba5490b0dcd9fc7"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generates a key pair.  <a href="#a26ca9d7985773300dba5490b0dcd9fc7">More...</a><br /></td></tr>
<tr class="memitem:a700affb602b29623ba28ac960df63b27"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a700affb602b29623ba28ac960df63b27">cx_ecfp_generate_pair2</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pubkey, <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *privkey, int keepprivate, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID)</td></tr>
<tr class="memdesc:a700affb602b29623ba28ac960df63b27"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generates a key pair.  <a href="#a700affb602b29623ba28ac960df63b27">More...</a><br /></td></tr>
<tr class="memitem:ab940dccf0b90c362b2f033bc93d38283"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#ab940dccf0b90c362b2f033bc93d38283">cx_eddsa_get_public_key_no_throw</a> (const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pukey, uint8_t *a, size_t a_len, uint8_t *h, size_t h_len)</td></tr>
<tr class="memdesc:ab940dccf0b90c362b2f033bc93d38283"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Retrieves an EDDSA public key.  <a href="#ab940dccf0b90c362b2f033bc93d38283">More...</a><br /></td></tr>
<tr class="memitem:a0d4366ae761dac729bfc1c8ea38090f0"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a0d4366ae761dac729bfc1c8ea38090f0">cx_eddsa_get_public_key</a> (const <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *pvkey, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *pukey, unsigned char *a, unsigned int a_len, unsigned char *h, unsigned int h_len)</td></tr>
<tr class="memdesc:a0d4366ae761dac729bfc1c8ea38090f0"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Retrieves an EDDSA public key.  <a href="#a0d4366ae761dac729bfc1c8ea38090f0">More...</a><br /></td></tr>
<tr class="memitem:aacf15d95fb7384452b38bec8131230de"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#aacf15d95fb7384452b38bec8131230de">cx_edwards_compress_point_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *p, size_t p_len)</td></tr>
<tr class="memdesc:aacf15d95fb7384452b38bec8131230de"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.  <a href="#aacf15d95fb7384452b38bec8131230de">More...</a><br /></td></tr>
<tr class="memitem:abbe81f0cda9fbbc9b89a64b4245474ed"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#abbe81f0cda9fbbc9b89a64b4245474ed">cx_edwards_compress_point</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *p, size_t p_len)</td></tr>
<tr class="memdesc:abbe81f0cda9fbbc9b89a64b4245474ed"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.  <a href="#abbe81f0cda9fbbc9b89a64b4245474ed">More...</a><br /></td></tr>
<tr class="memitem:a135c9e000dc82e000cb427788ba33bcd"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a135c9e000dc82e000cb427788ba33bcd">cx_edwards_decompress_point_no_throw</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *p, size_t p_len)</td></tr>
<tr class="memdesc:a135c9e000dc82e000cb427788ba33bcd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Decompresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.  <a href="#a135c9e000dc82e000cb427788ba33bcd">More...</a><br /></td></tr>
<tr class="memitem:a94fcf19a2a1073ae043bbf9ecc4befcf"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a94fcf19a2a1073ae043bbf9ecc4befcf">cx_edwards_decompress_point</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *p, size_t p_len)</td></tr>
<tr class="memdesc:a94fcf19a2a1073ae043bbf9ecc4befcf"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Decompresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.  <a href="#a94fcf19a2a1073ae043bbf9ecc4befcf">More...</a><br /></td></tr>
<tr class="memitem:af618491194f35b79492ced3a6756f83f"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#af618491194f35b79492ced3a6756f83f">cx_edward_compress_point</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *p, size_t p_len)</td></tr>
<tr class="memitem:a2084f9df08a0e0ea89481baf99f8e751"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecfp_8h#a2084f9df08a0e0ea89481baf99f8e751">cx_edward_decompress_point</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, uint8_t *p, size_t p_len)</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Key pair generation based on elliptic curves. </p>
<p>Private and public keys initialization and key pair generation based on elliptic curves. </p>
</div><h2 class="groupheader">Typedef Documentation</h2>
<a id="aad8d77bd31f17bfb8ca11c390dedca91"></a>
<h2 class="memtitle">cx_ecfp_256_extended_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__256__extended__private__key__s">cx_ecfp_256_extended_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#aad8d77bd31f17bfb8ca11c390dedca91">cx_ecfp_256_extended_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__256__extended__private__key__s" title="Up to 256-bit Elliptic Curve extended private key. ">cx_ecfp_256_extended_private_key_s</a>. </p>

</div>
</div>
<a id="ab797613054a5e9af9f6bbfb2dc1573f1"></a>
<h2 class="memtitle">cx_ecfp_256_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_256_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#ab797613054a5e9af9f6bbfb2dc1573f1">cx_ecfp_256_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>temporary def type. </p>
<p>See <a class="el" href="../cx__ecfp__256__private__key__s" title="Up to 256-bit Elliptic Curve private key. ">cx_ecfp_256_private_key_s</a>. </p>

</div>
</div>
<a id="afaa50411578a50dfe6b26af1e8eb80ea"></a>
<h2 class="memtitle">cx_ecfp_256_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_256_public_key_s</a> <a class="el" href="../lcx__ecfp_8h#afaa50411578a50dfe6b26af1e8eb80ea">cx_ecfp_256_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__256__public__key__s" title="Up to 256-bit Elliptic Curve public key. ">cx_ecfp_256_public_key_s</a>. </p>

</div>
</div>
<a id="a210266a591635caeb70e5015d6431e7a"></a>
<h2 class="memtitle">cx_ecfp_384_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__384__private__key__s">cx_ecfp_384_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#a210266a591635caeb70e5015d6431e7a">cx_ecfp_384_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__384__public__key__s" title="Up to 384-bit Elliptic Curve public key. ">cx_ecfp_384_public_key_s</a>. </p>

</div>
</div>
<a id="ad346228054ac9ea3d4618a1027aaea1b"></a>
<h2 class="memtitle">cx_ecfp_384_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__384__public__key__s">cx_ecfp_384_public_key_s</a> <a class="el" href="../lcx__ecfp_8h#ad346228054ac9ea3d4618a1027aaea1b">cx_ecfp_384_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__384__private__key__s" title="Up to 384-bit Elliptic Curve private key. ">cx_ecfp_384_private_key_s</a>. </p>

</div>
</div>
<a id="ae63fbb5c7edcdd2f6eb2c17ffafe9c38"></a>
<h2 class="memtitle">cx_ecfp_512_extented_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__512__extented__private__key__s">cx_ecfp_512_extented_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#ae63fbb5c7edcdd2f6eb2c17ffafe9c38">cx_ecfp_512_extented_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__512__extented__private__key__s" title="Up to 512-bit Elliptic Curve extended private key. ">cx_ecfp_512_extented_private_key_s</a>. </p>

</div>
</div>
<a id="a5431c1e8a52a8c95733e7978e67dbf3f"></a>
<h2 class="memtitle">cx_ecfp_512_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__512__private__key__s">cx_ecfp_512_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#a5431c1e8a52a8c95733e7978e67dbf3f">cx_ecfp_512_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__512__private__key__s" title="Up to 512-bit Elliptic Curve private key. ">cx_ecfp_512_private_key_s</a>. </p>

</div>
</div>
<a id="a9ecc945db32a3dd9cf972cfb3bfc244d"></a>
<h2 class="memtitle">cx_ecfp_512_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__512__public__key__s">cx_ecfp_512_public_key_s</a> <a class="el" href="../lcx__ecfp_8h#a9ecc945db32a3dd9cf972cfb3bfc244d">cx_ecfp_512_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__512__public__key__s" title="Up to 512-bit Elliptic Curve public key. ">cx_ecfp_512_public_key_s</a>. </p>

</div>
</div>
<a id="ab853a64f1891481c62698e48ce85bc5b"></a>
<h2 class="memtitle">cx_ecfp_640_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__640__private__key__s">cx_ecfp_640_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#ab853a64f1891481c62698e48ce85bc5b">cx_ecfp_640_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__640__private__key__s" title="Up to 640-bit Elliptic Curve private key. ">cx_ecfp_640_private_key_s</a>. </p>

</div>
</div>
<a id="a9b63e9c101e3216d99be2bd7da2e4249"></a>
<h2 class="memtitle">cx_ecfp_640_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__640__public__key__s">cx_ecfp_640_public_key_s</a> <a class="el" href="../lcx__ecfp_8h#a9b63e9c101e3216d99be2bd7da2e4249">cx_ecfp_640_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ecfp__640__public__key__s" title="Up to 640-bit Elliptic Curve public key. ">cx_ecfp_640_public_key_s</a>. </p>

</div>
</div>
<a id="a0d6bfe95381fad6884d8aa21fd6446c4"></a>
<h2 class="memtitle">cx_ecfp_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_256_private_key_s</a> <a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="ad678e5d35ae65cefb258de09588332ba"></a>
<h2 class="memtitle">cx_ecfp_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_256_public_key_s</a> <a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a5a0e2ce81dfb4318e14ae0e9db164db1"></a>
<h2 class="memtitle">cx_ecfp_add_point()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecfp_add_point </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>R</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>P</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>Q</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>X_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Adds two points of an elliptic curve. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#a9fc2ac0486d0cd6a67f654417ba1f925" title="Adds two points of an elliptic curve. ">cx_ecfp_add_point_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">R</td><td colspan="4">Resulting point encoded as <b>04 || x || y</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td colspan="4">First operand: point on curve encoded as <b>04 || x || y</b>: <b>x</b> and <b>y</b> are encoded as big endian raw values and have a binary length equal to curve domain size.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">Q</td><td colspan="4">Second operand: point on curve encoded as <b>04 || x || y</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">X_len</td><td colspan="4">Length of the x-coordinate. This parameter is not used.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the encoded point.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a9fc2ac0486d0cd6a67f654417ba1f925"></a>
<h2 class="memtitle">cx_ecfp_add_point_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecfp_add_point_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>R</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>P</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>Q</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Adds two points of an elliptic curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">R</td><td colspan="4">Resulting point encoded as <b>04 || x || y</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td colspan="4">First operand: point on curve encoded as <b>04 || x || y</b>: <b>x</b> and <b>y</b> are encoded as big endian raw values and have a binary length equal to curve domain size.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">Q</td><td colspan="4">Second operand: point on curve encoded as <b>04 || x || y</b>.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a8880d93a82c60faeb564149e9618a6c4"></a>
<h2 class="memtitle">cx_ecfp_generate_pair()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecfp_generate_pair </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pubkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>privkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>keepprivate</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Generates a key pair with SHA-512 hash function. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#a06c0ed692411324f34d97305c9e4040d" title="Generates a key pair with SHA-512 hash function. ">cx_ecfp_generate_pair_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pubkey</td><td colspan="4">Generated public key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">privkey</td><td colspan="4">Generated private key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">keepprivate</td><td colspan="4">If set, the private key is the one initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>. Otherwise, a new private key is generated.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>0</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a700affb602b29623ba28ac960df63b27"></a>
<h2 class="memtitle">cx_ecfp_generate_pair2()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecfp_generate_pair2 </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pubkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>privkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>keepprivate</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Generates a key pair. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#a26ca9d7985773300dba5490b0dcd9fc7" title="Generates a key pair. ">cx_ecfp_generate_pair2_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pubkey</td><td colspan="4">Generated public key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">privkey</td><td colspan="4">Generated private key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">keepprivate</td><td colspan="4">If set, the private key is the one initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>. Otherwise, a new private key is generated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>0</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a26ca9d7985773300dba5490b0dcd9fc7"></a>
<h2 class="memtitle">cx_ecfp_generate_pair2_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecfp_generate_pair2_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pubkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>privkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">bool&#160;</td>
          <td class="paramname"><b>keepprivate</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Generates a key pair. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pubkey</td><td colspan="4">Generated public key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">privkey</td><td colspan="4">Generated private key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">keepprivate</td><td colspan="4">If set, the private key is the one initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>. Otherwise, a new private key is generated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INTERNAL_ERROR</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a06c0ed692411324f34d97305c9e4040d"></a>
<h2 class="memtitle">cx_ecfp_generate_pair_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecfp_generate_pair_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pubkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>privkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">bool&#160;</td>
          <td class="paramname"><b>keepprivate</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Generates a key pair with SHA-512 hash function. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pubkey</td><td colspan="4">Generated public key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">privkey</td><td colspan="4">Generated private key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">keepprivate</td><td colspan="4">If set, the private key is the one initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>. Otherwise, a new private key is generated.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INTERNAL_ERROR</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a94402980442875a67af525d3ad907318"></a>
<h2 class="memtitle">cx_ecfp_init_private_key()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecfp_init_private_key </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>rawkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>key_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>pvkey</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a private key. </p>
<p>The key can be stored in non-volatile memory and used for ECDSA or ECDH processing. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">rawkey</td><td colspan="4">Pointer to a raw key value or NULL pointer. The value shall be in big endian order.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">key_len</td><td colspan="4">Length of the key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pvkey</td><td colspan="4">Private key to initialize.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the key.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="aa60ed5c59930e787f187df1802b84ab5"></a>
<h2 class="memtitle">cx_ecfp_init_private_key_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecfp_init_private_key_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>rawkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>key_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#a0d6bfe95381fad6884d8aa21fd6446c4">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>pvkey</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a private key. </p>
<p>The key can be stored in non-volatile memory and used for ECDSA or ECDH processing.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">rawkey</td><td colspan="4">Pointer to a raw key value or NULL pointer. The value shall be in big endian order.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">key_len</td><td colspan="4">Length of the key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pvkey</td><td colspan="4">Private key to initialize.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a509a069a0d882d2ebcd7c189fffae52f"></a>
<h2 class="memtitle">cx_ecfp_init_public_key()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecfp_init_public_key </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>rawkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>key_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initializes a public key. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#a9dba0fd71ca5df52eb27e3c4493e0371" title="Initializes a public key. ">cx_ecfp_init_public_key_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">rawkey</td><td colspan="4">Pointer to a raw key value or NULL pointer The value shall be the public point encoded as:<ul>
<li><b>04 || x || y</b> for Weiertrass curves</li>
<li><b>04 || x || y</b> or <b>02 || y</b> (plus sign) for Twisted Edward curves</li>
<li><b>04 || x || y</b> or <b>02 || x</b> for Montgomery curves</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<p>where <b>x</b> and <b>y</b> are encoded as big endian raw values and have a binary length equal to the curve domain size.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key_len</td><td colspan="4">Length of the key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Public key to initialize.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the key.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a9dba0fd71ca5df52eb27e3c4493e0371"></a>
<h2 class="memtitle">cx_ecfp_init_public_key_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecfp_init_public_key_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>rawkey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>key_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initializes a public key. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">rawkey</td><td colspan="4">Pointer to a raw key value or NULL pointer The value shall be the public point encoded as:<ul>
<li><b>04 || x || y</b> for Weiertrass curves</li>
<li><b>04 || x || y</b> or <b>02 || y</b> (plus sign) for Twisted Edward curves</li>
<li><b>04 || x || y</b> or <b>02 || x</b> for Montgomery curves</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<p>where <b>x</b> and <b>y</b> are encoded as big endian raw values and have a binary length equal to the curve domain size.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key_len</td><td colspan="4">Length of the key.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Public key to initialize.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a2cc4aeae037cc9c0b13954e9bb3651fc"></a>
<h2 class="memtitle">cx_ecfp_scalar_mult()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecfp_scalar_mult </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>P</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>P_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>k</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>k_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Performs a scalar multiplication over an elliptic curve. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#a91d6f274abf730d2558c6736b1db00f8" title="Performs a scalar multiplication over an elliptic curve. ">cx_ecfp_scalar_mult_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td colspan="4">Point on curve encoded as <b>04 || x || y</b>: x and y are encoded as big endian raw values and have a binary length equal to curve domain size. This is also used for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P_len</td><td colspan="4">Length of the input point. This parameter is not used.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k</td><td colspan="4">Scalar encoded as big endian integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k_len</td><td colspan="4">Length of the scalar. This should be equal to the curve domain length.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the encoded point.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a91d6f274abf730d2558c6736b1db00f8"></a>
<h2 class="memtitle">cx_ecfp_scalar_mult_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecfp_scalar_mult_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>P</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>k</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>k_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Performs a scalar multiplication over an elliptic curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier.</td></tr>
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td colspan="4">Point on curve encoded as <b>04 || x || y</b>: x and y are encoded as big endian raw values and have a binary length equal to curve domain size. This is also used for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k</td><td colspan="4">Scalar encoded as big endian integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k_len</td><td colspan="4">Length of the scalar. This should be equal to the curve domain length.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a0d4366ae761dac729bfc1c8ea38090f0"></a>
<h2 class="memtitle">cx_eddsa_get_public_key()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_eddsa_get_public_key </td>
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
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pukey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>a_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>h</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>h_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Retrieves an EDDSA public key. </p>
<p>Retrieves (a,h) = (Kr, Kl), such that (Kr, Kl) = Hash(pv_key) as specified at <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#ab940dccf0b90c362b2f033bc93d38283" title="Retrieves an EDDSA public key. ">cx_eddsa_get_public_key_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">A private key fully initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier used to compute the input data. SHA512, SHA3 and Keccak are supported.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pukey</td><td colspan="4">Key container for retrieving the public key A.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">a</td><td colspan="4">Private scalar such that A = a.B.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a_len</td><td colspan="4">Length of the scalar a.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">h</td><td colspan="4">Signature prefix.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">h_len</td><td colspan="4">Length of the prefix h.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="ab940dccf0b90c362b2f033bc93d38283"></a>
<h2 class="memtitle">cx_eddsa_get_public_key_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_eddsa_get_public_key_no_throw </td>
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
          
          <td class="paramtype"><a class="el" href="../lcx__ecfp_8h#ad678e5d35ae65cefb258de09588332ba">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>pukey</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>a_len</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>h</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>h_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Retrieves an EDDSA public key. </p>
<p>Retrieves (a,h) = (Kr, Kl), such that (Kr, Kl) = Hash(pv_key) as specified at <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">A private key fully initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initializes a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier used to compute the input data. SHA512, SHA3 and Keccak are supported.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">pukey</td><td colspan="4">Key container for retrieving the public key A.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">a</td><td colspan="4">Private scalar such that A = a.B.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a_len</td><td colspan="4">Length of the scalar a.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">h</td><td colspan="4">Signature prefix.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">h_len</td><td colspan="4">Length of the prefix h.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_INTERNAL_ERROR </li>
</ul>
</dd></dl>

</div>
</div>
<a id="af618491194f35b79492ced3a6756f83f"></a>
<h2 class="memtitle">cx_edward_compress_point()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_edward_compress_point </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>p</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>p_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">
<dl class="deprecated"><dt><b><a class="el" href="../deprecated#_deprecated000001">Deprecated:</a></b></dt><dd>See <a class="el" href="../lcx__ecfp_8h#aacf15d95fb7384452b38bec8131230de" title="Compresses a point according to RFC8032 . ">cx_edwards_compress_point_no_throw</a> </dd></dl>

</div>
</div>
<a id="a2084f9df08a0e0ea89481baf99f8e751"></a>
<h2 class="memtitle">cx_edward_decompress_point()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_edward_decompress_point </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>p</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>p_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">
<dl class="deprecated"><dt><b><a class="el" href="../deprecated#_deprecated000002">Deprecated:</a></b></dt><dd>See <a class="el" href="../lcx__ecfp_8h#a135c9e000dc82e000cb427788ba33bcd" title="Decompresses a point according to RFC8032 . ">cx_edwards_decompress_point_no_throw</a> </dd></dl>

</div>
</div>
<a id="abbe81f0cda9fbbc9b89a64b4245474ed"></a>
<h2 class="memtitle">cx_edwards_compress_point()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_edwards_compress_point </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>p</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>p_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Compresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#aacf15d95fb7384452b38bec8131230de" title="Compresses a point according to RFC8032 . ">cx_edwards_compress_point_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier. The curve must be a Twisted Edwards curve.</td></tr>
    <tr><td class="paramdir">[in,out]</td><td class="paramname">p</td><td colspan="4">Pointer to the point to compress.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">p_len</td><td colspan="4">Length of the point buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="aacf15d95fb7384452b38bec8131230de"></a>
<h2 class="memtitle">cx_edwards_compress_point_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_edwards_compress_point_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>p</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>p_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Compresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier. The curve must be a Twisted Edwards curve.</td></tr>
    <tr><td class="paramdir">[in,out]</td><td class="paramname">p</td><td colspan="4">Pointer to the point to compress.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">p_len</td><td colspan="4">Length of the point buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a94fcf19a2a1073ae043bbf9ecc4befcf"></a>
<h2 class="memtitle">cx_edwards_decompress_point()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_edwards_decompress_point </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>p</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>p_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Decompresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__ecfp_8h#a135c9e000dc82e000cb427788ba33bcd" title="Decompresses a point according to RFC8032 . ">cx_edwards_decompress_point_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier. The curve must be a Twisted Edwards curve.</td></tr>
    <tr><td class="paramdir">[in,out]</td><td class="paramname">p</td><td colspan="4">Pointer to the point to decompress.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">p_len</td><td colspan="4">Length of the point buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td></tr>
    <tr><td class="paramname">CX_NO_RESIDUE</td></tr>
    <tr><td class="paramname">INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a135c9e000dc82e000cb427788ba33bcd"></a>
<h2 class="memtitle">cx_edwards_decompress_point_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_edwards_decompress_point_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><b>curve</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>p</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>p_len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Decompresses a point according to <a href="https://tools.ietf.org/html/rfc8032">RFC8032 </a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td colspan="4">Curve identifier. The curve must be a Twisted Edwards curve.</td></tr>
    <tr><td class="paramdir">[in,out]</td><td class="paramname">p</td><td colspan="4">Pointer to the point to decompress.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">p_len</td><td colspan="4">Length of the point buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_NO_RESIDUE</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
