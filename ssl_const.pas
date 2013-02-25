unit ssl_const;

interface

const
  NID_undef = 0;
  NID_rsaEncryption = 6;
  NID_rsa = 19;
  NID_dhKeyAgreement = 28;
  NID_dsaWithSHA = 66;
  NID_dsa_2 = 67;
  NID_dsaWithSHA1_2 = 70;
  NID_dsaWithSHA1 = 113;
  NID_dsa = 116;
  NID_hmac = 855;
  NID_cmac = 894;
  NID_X9_62_id_ecPublicKey = 408;

const
  ASIdentifierChoice_inherit = 0;
  ASIdentifierChoice_asIdsOrRanges = 1;

  IPAddressOrRange_addressPrefix = 0;
  IPAddressOrRange_addressRange = 1;

  IPAddressChoice_inherit = 0;
  IPAddressChoice_addressesOrRanges = 1;

  SHA_LBLOCK = 16;
  SHA_CBLOCK = 64;
  SHA_DIGEST_LENGTH = 20;
  SHA_LAST_BLOCK = (SHA_CBLOCK - 8);
  SHA256_CBLOCK = (SHA_LBLOCK * 4);
  SHA224_DIGEST_LENGTH = 28;
  SHA256_DIGEST_LENGTH = 32;
  SHA384_DIGEST_LENGTH = 48;
  SHA512_DIGEST_LENGTH = 64;
  SHA512_CBLOCK = (SHA_LBLOCK * 8);

  EVP_MAX_MD_SIZE = 64;
  EVP_MAX_KEY_LENGTH = 32;
  EVP_MAX_IV_LENGTH = 16;
  EVP_MAX_BLOCK_LENGTH = 32;

{$REGION 'AES'}
const
  AES_ENCRYPT    = 1;
  AES_DECRYPT    = 0;

  AES_MAXNR = 14;
  AES_BLOCK_SIZE = 16;

{$ENDREGION}

{$REGION 'BlowFish'}
const
    BF_ENCRYPT  = 1;
    BF_DECRYPT  = 0;
    BF_LONG_LOG2 = 3;
    BF_ROUNDS    = 16;
    BF_BLOCK    = 8;

{$ENDREGION}

{$REGION 'ASN'}
const
 V_ASN1_UNIVERSAL               = $00;
 V_ASN1_APPLICATION             = $40;
 V_ASN1_CONTEXT_SPECIFIC        = $80;
 V_ASN1_PRIVATE                 = $c0;

 V_ASN1_CONSTRUCTED         = $20;
 V_ASN1_PRIMITIVE_TAG       = $1f;
 V_ASN1_PRIMATIVE_TAG       = $1f;

 V_ASN1_APP_CHOOSE      = -2;
 V_ASN1_OTHER           = -3;
 V_ASN1_ANY             = -4;

 V_ASN1_NEG         = $100;

 V_ASN1_UNDEF                = -1;
 V_ASN1_EOC                  = 0;
 V_ASN1_BOOLEAN              = 1;
 V_ASN1_INTEGER              = 2;
 V_ASN1_NEG_INTEGER          = (2  or  V_ASN1_NEG);
 V_ASN1_BIT_STRING           = 3;
 V_ASN1_OCTET_STRING         = 4;
 V_ASN1_NULL                 = 5;
 V_ASN1_OBJECT               = 6;
 V_ASN1_OBJECT_DESCRIPTOR    = 7;
 V_ASN1_EXTERNAL             = 8;
 V_ASN1_REAL                 = 9;
 V_ASN1_ENUMERATED           = 10;
 V_ASN1_NEG_ENUMERATED       = (10  or  V_ASN1_NEG);
 V_ASN1_UTF8STRING           = 12;
 V_ASN1_SEQUENCE             = 16;
 V_ASN1_SET                  = 17;
 V_ASN1_NUMERICSTRING        = 18;
 V_ASN1_PRINTABLESTRING      = 19;
 V_ASN1_T61STRING            = 20;
 V_ASN1_TELETEXSTRING        = 20;
 V_ASN1_VIDEOTEXSTRING       = 21;
 V_ASN1_IA5STRING            = 22;
 V_ASN1_UTCTIME              = 23;
 V_ASN1_GENERALIZEDTIME      = 24;
 V_ASN1_GRAPHICSTRING        = 25;
 V_ASN1_ISO64STRING          = 26;
 V_ASN1_VISIBLESTRING        = 26;
 V_ASN1_GENERALSTRING        = 27;
 V_ASN1_UNIVERSALSTRING      = 28;
 V_ASN1_BMPSTRING            = 30;

 B_ASN1_NUMERICSTRING   = $0001;
 B_ASN1_PRINTABLESTRING = $0002;
 B_ASN1_T61STRING       = $0004;
 B_ASN1_TELETEXSTRING   = $0004;
 B_ASN1_VIDEOTEXSTRING  = $0008;
 B_ASN1_IA5STRING       = $0010;
 B_ASN1_GRAPHICSTRING   = $0020;
 B_ASN1_ISO64STRING     = $0040;
 B_ASN1_VISIBLESTRING   = $0040;
 B_ASN1_GENERALSTRING   = $0080;
 B_ASN1_UNIVERSALSTRING = $0100;
 B_ASN1_OCTET_STRING    = $0200;
 B_ASN1_BIT_STRING      = $0400;
 B_ASN1_BMPSTRING       = $0800;
 B_ASN1_UNKNOWN         = $1000;
 B_ASN1_UTF8STRING      = $2000;
 B_ASN1_UTCTIME         = $4000;
 B_ASN1_GENERALIZEDTIME = $8000;
 B_ASN1_SEQUENCE        = $10000;

 MBSTRING_FLAG      = $1000;
 MBSTRING_UTF8      = (MBSTRING_FLAG);
 MBSTRING_ASC       = (MBSTRING_FLAG or 1);
 MBSTRING_BMP       = (MBSTRING_FLAG or 2);
 MBSTRING_UNIV      = (MBSTRING_FLAG or 4);

 SMIME_OLDMIME      = $400;
 SMIME_CRLFEOL      = $800;
 SMIME_STREAM       = $1000;

 ASN1_OBJECT_FLAG_DYNAMIC         = $01;
 ASN1_OBJECT_FLAG_CRITICAL        = $02;
 ASN1_OBJECT_FLAG_DYNAMIC_STRINGS = $04;
 ASN1_OBJECT_FLAG_DYNAMIC_DATA    = $08;
 ASN1_STRING_FLAG_BITS_LEFT       = $08;
 ASN1_STRING_FLAG_NDEF            = $010;
 ASN1_STRING_FLAG_CONT            = $020;
 ASN1_STRING_FLAG_MSTRING         = $040 ;

 ASN1_LONG_UNDEF    = $7fffffff;

 STABLE_FLAGS_MALLOC    = $01;
 STABLE_NO_MASK         = $02;
 DIRSTRING_TYPE         = (B_ASN1_PRINTABLESTRING or B_ASN1_T61STRING or B_ASN1_BMPSTRING or B_ASN1_UTF8STRING);
 PKCS9STRING_TYPE       = (DIRSTRING_TYPE or B_ASN1_IA5STRING);
 
 ub_name                    = 32768;
 ub_common_name             = 64;
 ub_locality_name           = 128;
 ub_state_name              = 128;
 ub_organization_name       = 64;
 ub_organization_unit_name  = 64;
 ub_title                   = 64;
 ub_email_address           = 128;
 
 ASN1_STRFLGS_ESC_2253      = 1;
 ASN1_STRFLGS_ESC_CTRL      = 2;
 ASN1_STRFLGS_ESC_MSB       = 4;
 ASN1_STRFLGS_ESC_QUOTE     = 8;

 CHARTYPE_PRINTABLESTRING   = $10;
 CHARTYPE_FIRST_ESC_2253        = $20;
 CHARTYPE_LAST_ESC_2253     = $40;

 ASN1_STRFLGS_UTF8_CONVERT  = $10;
 ASN1_STRFLGS_IGNORE_TYPE   = $20;
 ASN1_STRFLGS_DUMP_ALL      = $80;
 ASN1_STRFLGS_DUMP_UNKNOWN  = $100;
 ASN1_STRFLGS_DUMP_DER      = $200;
 ASN1_STRFLGS_RFC2253   = (ASN1_STRFLGS_ESC_2253  or  ASN1_STRFLGS_ESC_CTRL  or  ASN1_STRFLGS_ESC_MSB  or  ASN1_STRFLGS_UTF8_CONVERT  or  ASN1_STRFLGS_DUMP_UNKNOWN  or  ASN1_STRFLGS_DUMP_DER);

 ASN1_PCTX_FLAGS_SHOW_ABSENT            = $001  ;
 ASN1_PCTX_FLAGS_SHOW_SEQUENCE          = $002;
 ASN1_PCTX_FLAGS_SHOW_SSOF              = $004;
 ASN1_PCTX_FLAGS_SHOW_TYPE              = $008;
 ASN1_PCTX_FLAGS_NO_ANY_TYPE            = $010;
 ASN1_PCTX_FLAGS_NO_MSTRING_TYPE        = $020;
 ASN1_PCTX_FLAGS_NO_FIELD_NAME          = $040;
 ASN1_PCTX_FLAGS_SHOW_FIELD_STRUCT_NAME = $080;
 ASN1_PCTX_FLAGS_NO_STRUCT_NAME         = $100;

 ASN1_F_A2D_ASN1_OBJECT                      = 100;
 ASN1_F_A2I_ASN1_ENUMERATED                  = 101;
 ASN1_F_A2I_ASN1_INTEGER                     = 102;
 ASN1_F_A2I_ASN1_STRING                      = 103;
 ASN1_F_APPEND_EXP                           = 176;
 ASN1_F_ASN1_BIT_STRING_SET_BIT              = 183;
 ASN1_F_ASN1_CB                              = 177;
 ASN1_F_ASN1_CHECK_TLEN                      = 104;
 ASN1_F_ASN1_COLLATE_PRIMITIVE               = 105;
 ASN1_F_ASN1_COLLECT                         = 106;
 ASN1_F_ASN1_D2I_EX_PRIMITIVE                = 108;
 ASN1_F_ASN1_D2I_FP                          = 109;
 ASN1_F_ASN1_D2I_READ_BIO                    = 107;
 ASN1_F_ASN1_DIGEST                          = 184;
 ASN1_F_ASN1_DO_ADB                          = 110;
 ASN1_F_ASN1_DUP                             = 111;
 ASN1_F_ASN1_ENUMERATED_SET                  = 112;
 ASN1_F_ASN1_ENUMERATED_TO_BN                = 113;
 ASN1_F_ASN1_EX_C2I                          = 204;
 ASN1_F_ASN1_FIND_END                        = 190;
 ASN1_F_ASN1_GENERALIZEDTIME_ADJ             = 216;
 ASN1_F_ASN1_GENERALIZEDTIME_SET             = 185;
 ASN1_F_ASN1_GENERATE_V3                     = 178;
 ASN1_F_ASN1_GET_OBJECT                      = 114;
 ASN1_F_ASN1_HEADER_NEW                      = 115;
 ASN1_F_ASN1_I2D_BIO                         = 116;
 ASN1_F_ASN1_I2D_FP                          = 117;
 ASN1_F_ASN1_INTEGER_SET                     = 118;
 ASN1_F_ASN1_INTEGER_TO_BN                   = 119;
 ASN1_F_ASN1_ITEM_D2I_FP                     = 206;
 ASN1_F_ASN1_ITEM_DUP                        = 191;
 ASN1_F_ASN1_ITEM_EX_COMBINE_NEW             = 121;
 ASN1_F_ASN1_ITEM_EX_D2I                     = 120;
 ASN1_F_ASN1_ITEM_I2D_BIO                    = 192;
 ASN1_F_ASN1_ITEM_I2D_FP                     = 193;
 ASN1_F_ASN1_ITEM_PACK                       = 198;
 ASN1_F_ASN1_ITEM_SIGN                       = 195;
 ASN1_F_ASN1_ITEM_SIGN_CTX                   = 220;
 ASN1_F_ASN1_ITEM_UNPACK                     = 199;
 ASN1_F_ASN1_ITEM_VERIFY                     = 197;
 ASN1_F_ASN1_MBSTRING_NCOPY                  = 122;
 ASN1_F_ASN1_OBJECT_NEW                      = 123;
 ASN1_F_ASN1_OUTPUT_DATA                     = 214;
 ASN1_F_ASN1_PACK_STRING                     = 124;
 ASN1_F_ASN1_PCTX_NEW                        = 205;
 ASN1_F_ASN1_PKCS5_PBE_SET                   = 125;
 ASN1_F_ASN1_SEQ_PACK                        = 126;
 ASN1_F_ASN1_SEQ_UNPACK                      = 127;
 ASN1_F_ASN1_SIGN                            = 128;
 ASN1_F_ASN1_STR2TYPE                        = 179;
 ASN1_F_ASN1_STRING_SET                      = 186;
 ASN1_F_ASN1_STRING_TABLE_ADD                = 129;
 ASN1_F_ASN1_STRING_TYPE_NEW                 = 130;
 ASN1_F_ASN1_TEMPLATE_EX_D2I                 = 132;
 ASN1_F_ASN1_TEMPLATE_NEW                    = 133;
 ASN1_F_ASN1_TEMPLATE_NOEXP_D2I              = 131;
 ASN1_F_ASN1_TIME_ADJ                        = 217;
 ASN1_F_ASN1_TIME_SET                        = 175;
 ASN1_F_ASN1_TYPE_GET_INT_OCTETSTRING        = 134;
 ASN1_F_ASN1_TYPE_GET_OCTETSTRING            = 135;
 ASN1_F_ASN1_UNPACK_STRING                   = 136;
 ASN1_F_ASN1_UTCTIME_ADJ                     = 218;
 ASN1_F_ASN1_UTCTIME_SET                     = 187;
 ASN1_F_ASN1_VERIFY                          = 137;
 ASN1_F_B64_READ_ASN1                        = 209;
 ASN1_F_B64_WRITE_ASN1                       = 210;
 ASN1_F_BIO_NEW_NDEF                         = 208;
 ASN1_F_BITSTR_CB                            = 180;
 ASN1_F_BN_TO_ASN1_ENUMERATED                = 138;
 ASN1_F_BN_TO_ASN1_INTEGER                   = 139;
 ASN1_F_C2I_ASN1_BIT_STRING                  = 189;
 ASN1_F_C2I_ASN1_INTEGER                     = 194;
 ASN1_F_C2I_ASN1_OBJECT                      = 196;
 ASN1_F_COLLECT_DATA                         = 140;
 ASN1_F_D2I_ASN1_BIT_STRING                  = 141;
 ASN1_F_D2I_ASN1_BOOLEAN                     = 142;
 ASN1_F_D2I_ASN1_BYTES                       = 143;
 ASN1_F_D2I_ASN1_GENERALIZEDTIME             = 144;
 ASN1_F_D2I_ASN1_HEADER                      = 145;
 ASN1_F_D2I_ASN1_INTEGER                     = 146;
 ASN1_F_D2I_ASN1_OBJECT                      = 147;
 ASN1_F_D2I_ASN1_SET                         = 148;
 ASN1_F_D2I_ASN1_TYPE_BYTES                  = 149;
 ASN1_F_D2I_ASN1_UINTEGER                    = 150;
 ASN1_F_D2I_ASN1_UTCTIME                     = 151;
 ASN1_F_D2I_AUTOPRIVATEKEY                   = 207;
 ASN1_F_D2I_NETSCAPE_RSA                     = 152;
 ASN1_F_D2I_NETSCAPE_RSA_2                   = 153;
 ASN1_F_D2I_PRIVATEKEY                       = 154;
 ASN1_F_D2I_PUBLICKEY                        = 155;
 ASN1_F_D2I_RSA_NET                          = 200;
 ASN1_F_D2I_RSA_NET_2                        = 201;
 ASN1_F_D2I_X509                             = 156;
 ASN1_F_D2I_X509_CINF                        = 157;
 ASN1_F_D2I_X509_PKEY                        = 159;
 ASN1_F_I2D_ASN1_BIO_STREAM                  = 211;
 ASN1_F_I2D_ASN1_SET                         = 188;
 ASN1_F_I2D_ASN1_TIME                        = 160;
 ASN1_F_I2D_DSA_PUBKEY                       = 161;
 ASN1_F_I2D_EC_PUBKEY                        = 181;
 ASN1_F_I2D_PRIVATEKEY                       = 163;
 ASN1_F_I2D_PUBLICKEY                        = 164;
 ASN1_F_I2D_RSA_NET                          = 162;
 ASN1_F_I2D_RSA_PUBKEY                       = 165;
 ASN1_F_LONG_C2I                             = 166;
 ASN1_F_OID_MODULE_INIT                      = 174;
 ASN1_F_PARSE_TAGGING                        = 182;
 ASN1_F_PKCS5_PBE2_SET_IV                    = 167;
 ASN1_F_PKCS5_PBE_SET                        = 202;
 ASN1_F_PKCS5_PBE_SET0_ALGOR                 = 215;
 ASN1_F_PKCS5_PBKDF2_SET                     = 219;
 ASN1_F_SMIME_READ_ASN1                      = 212;
 ASN1_F_SMIME_TEXT                           = 213;
 ASN1_F_X509_CINF_NEW                        = 168;
 ASN1_F_X509_CRL_ADD0_REVOKED                = 169;
 ASN1_F_X509_INFO_NEW                        = 170;
 ASN1_F_X509_NAME_ENCODE                     = 203;
 ASN1_F_X509_NAME_EX_D2I                     = 158;
 ASN1_F_X509_NAME_EX_NEW                     = 171;
 ASN1_F_X509_NEW                             = 172;
 ASN1_F_X509_PKEY_NEW                        = 173;

//* Reason codes. */
 ASN1_R_ADDING_OBJECT                                       = 171;
 ASN1_R_ASN1_PARSE_ERROR                                    = 203;
 ASN1_R_ASN1_SIG_PARSE_ERROR                                = 204;
 ASN1_R_AUX_ERROR                                           = 100;
 ASN1_R_BAD_CLASS                                           = 101;
 ASN1_R_BAD_OBJECT_HEADER                                   = 102;
 ASN1_R_BAD_PASSWORD_READ                                   = 103;
 ASN1_R_BAD_TAG                                             = 104;
 ASN1_R_BMPSTRING_IS_WRONG_LENGTH                           = 214;
 ASN1_R_BN_LIB                                              = 105;
 ASN1_R_BOOLEAN_IS_WRONG_LENGTH                             = 106;
 ASN1_R_BUFFER_TOO_SMALL                                    = 107;
 ASN1_R_CIPHER_HAS_NO_OBJECT_IDENTIFIER                     = 108;
 ASN1_R_CONTEXT_NOT_INITIALISED                             = 217;
 ASN1_R_DATA_IS_WRONG                                       = 109;
 ASN1_R_DECODE_ERROR                                        = 110;
 ASN1_R_DECODING_ERROR                                      = 111;
 ASN1_R_DEPTH_EXCEEDED                                      = 174;
 ASN1_R_DIGEST_AND_KEY_TYPE_NOT_SUPPORTED                   = 198;
 ASN1_R_ENCODE_ERROR                                        = 112;
 ASN1_R_ERROR_GETTING_TIME                                  = 173;
 ASN1_R_ERROR_LOADING_SECTION                               = 172;
 ASN1_R_ERROR_PARSING_SET_ELEMENT                           = 113;
 ASN1_R_ERROR_SETTING_CIPHER_PARAMS                         = 114;
 ASN1_R_EXPECTING_AN_INTEGER                                = 115;
 ASN1_R_EXPECTING_AN_OBJECT                                 = 116;
 ASN1_R_EXPECTING_A_BOOLEAN                                 = 117;
 ASN1_R_EXPECTING_A_TIME                                    = 118;
 ASN1_R_EXPLICIT_LENGTH_MISMATCH                            = 119;
 ASN1_R_EXPLICIT_TAG_NOT_CONSTRUCTED                        = 120;
 ASN1_R_FIELD_MISSING                                       = 121;
 ASN1_R_FIRST_NUM_TOO_LARGE                                 = 122;
 ASN1_R_HEADER_TOO_LONG                                     = 123;
 ASN1_R_ILLEGAL_BITSTRING_FORMAT                            = 175;
 ASN1_R_ILLEGAL_BOOLEAN                                     = 176;
 ASN1_R_ILLEGAL_CHARACTERS                                  = 124;
 ASN1_R_ILLEGAL_FORMAT                                      = 177;
 ASN1_R_ILLEGAL_HEX                                         = 178;
 ASN1_R_ILLEGAL_IMPLICIT_TAG                                = 179;
 ASN1_R_ILLEGAL_INTEGER                                     = 180;
 ASN1_R_ILLEGAL_NESTED_TAGGING                              = 181;
 ASN1_R_ILLEGAL_NULL                                        = 125;
 ASN1_R_ILLEGAL_NULL_VALUE                                  = 182;
 ASN1_R_ILLEGAL_OBJECT                                      = 183;
 ASN1_R_ILLEGAL_OPTIONAL_ANY                                = 126;
 ASN1_R_ILLEGAL_OPTIONS_ON_ITEM_TEMPLATE                    = 170;
 ASN1_R_ILLEGAL_TAGGED_ANY                                  = 127;
 ASN1_R_ILLEGAL_TIME_VALUE                                  = 184;
 ASN1_R_INTEGER_NOT_ASCII_FORMAT                            = 185;
 ASN1_R_INTEGER_TOO_LARGE_FOR_LONG                          = 128;
 ASN1_R_INVALID_BMPSTRING_LENGTH                            = 129;
 ASN1_R_INVALID_DIGIT                                       = 130;
 ASN1_R_INVALID_MIME_TYPE                                   = 205;
 ASN1_R_INVALID_MODIFIER                                    = 186;
 ASN1_R_INVALID_NUMBER                                      = 187;
 ASN1_R_INVALID_OBJECT_ENCODING                             = 216;
 ASN1_R_INVALID_SEPARATOR                                   = 131;
 ASN1_R_INVALID_TIME_FORMAT                                 = 132;
 ASN1_R_INVALID_UNIVERSALSTRING_LENGTH                      = 133;
 ASN1_R_INVALID_UTF8STRING                                  = 134;
 ASN1_R_IV_TOO_LARGE                                        = 135;
 ASN1_R_LENGTH_ERROR                                        = 136;
 ASN1_R_LIST_ERROR                                          = 188;
 ASN1_R_MIME_NO_CONTENT_TYPE                                = 206;
 ASN1_R_MIME_PARSE_ERROR                                    = 207;
 ASN1_R_MIME_SIG_PARSE_ERROR                                = 208;
 ASN1_R_MISSING_EOC                                         = 137;
 ASN1_R_MISSING_SECOND_NUMBER                               = 138;
 ASN1_R_MISSING_VALUE                                       = 189;
 ASN1_R_MSTRING_NOT_UNIVERSAL                               = 139;
 ASN1_R_MSTRING_WRONG_TAG                                   = 140;
 ASN1_R_NESTED_ASN1_STRING                                  = 197;
 ASN1_R_NON_HEX_CHARACTERS                                  = 141;
 ASN1_R_NOT_ASCII_FORMAT                                    = 190;
 ASN1_R_NOT_ENOUGH_DATA                                     = 142;
 ASN1_R_NO_CONTENT_TYPE                                     = 209;
 ASN1_R_NO_DEFAULT_DIGEST                                   = 201;
 ASN1_R_NO_MATCHING_CHOICE_TYPE                             = 143;
 ASN1_R_NO_MULTIPART_BODY_FAILURE                           = 210;
 ASN1_R_NO_MULTIPART_BOUNDARY                               = 211;
 ASN1_R_NO_SIG_CONTENT_TYPE                                 = 212;
 ASN1_R_NULL_IS_WRONG_LENGTH                                = 144;
 ASN1_R_OBJECT_NOT_ASCII_FORMAT                             = 191;
 ASN1_R_ODD_NUMBER_OF_CHARS                                 = 145;
 ASN1_R_PRIVATE_KEY_HEADER_MISSING                          = 146;
 ASN1_R_SECOND_NUMBER_TOO_LARGE                             = 147;
 ASN1_R_SEQUENCE_LENGTH_MISMATCH                            = 148;
 ASN1_R_SEQUENCE_NOT_CONSTRUCTED                            = 149;
 ASN1_R_SEQUENCE_OR_SET_NEEDS_CONFIG                        = 192;
 ASN1_R_SHORT_LINE                                          = 150;
 ASN1_R_SIG_INVALID_MIME_TYPE                               = 213;
 ASN1_R_STREAMING_NOT_SUPPORTED                             = 202;
 ASN1_R_STRING_TOO_LONG                                     = 151;
 ASN1_R_STRING_TOO_SHORT                                    = 152;
 ASN1_R_TAG_VALUE_TOO_HIGH                                  = 153;
 ASN1_R_THE_ASN1_OBJECT_IDENTIFIER_IS_NOT_KNOWN_FOR_THIS_MD = 154;
 ASN1_R_TIME_NOT_ASCII_FORMAT                               = 193;
 ASN1_R_TOO_LONG                                            = 155;
 ASN1_R_TYPE_NOT_CONSTRUCTED                                = 156;
 ASN1_R_UNABLE_TO_DECODE_RSA_KEY                            = 157;
 ASN1_R_UNABLE_TO_DECODE_RSA_PRIVATE_KEY                    = 158;
 ASN1_R_UNEXPECTED_EOC                                      = 159;
 ASN1_R_UNIVERSALSTRING_IS_WRONG_LENGTH                     = 215;
 ASN1_R_UNKNOWN_FORMAT                                      = 160;
 ASN1_R_UNKNOWN_MESSAGE_DIGEST_ALGORITHM                    = 161;
 ASN1_R_UNKNOWN_OBJECT_TYPE                                 = 162;
 ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE                             = 163;
 ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM                         = 199;
 ASN1_R_UNKNOWN_TAG                                         = 194;
 ASN1_R_UNKOWN_FORMAT                                       = 195;
 ASN1_R_UNSUPPORTED_ANY_DEFINED_BY_TYPE                     = 164;
 ASN1_R_UNSUPPORTED_CIPHER                                  = 165;
 ASN1_R_UNSUPPORTED_ENCRYPTION_ALGORITHM                    = 166;
 ASN1_R_UNSUPPORTED_PUBLIC_KEY_TYPE                         = 167;
 ASN1_R_UNSUPPORTED_TYPE                                    = 196;
 ASN1_R_WRONG_PUBLIC_KEY_TYPE                               = 200;
 ASN1_R_WRONG_TAG                                           = 168;
 ASN1_R_WRONG_TYPE                                          = 169;
 
 
 ASN1_ITYPE_PRIMITIVE       = $0;
 ASN1_ITYPE_SEQUENCE        = $1;
 ASN1_ITYPE_CHOICE          = $2;
 ASN1_ITYPE_COMPAT          = $3;
 ASN1_ITYPE_EXTERN          = $4;
 ASN1_ITYPE_MSTRING         = $5;
 ASN1_ITYPE_NDEF_SEQUENCE   = $6;
 
 
{$ENDREGION}

{$REGION 'BIO'}
const
  BIO_F_ACPT_STATE            = 100;
  BIO_F_BIO_ACCEPT            = 101;
  BIO_F_BIO_BER_GET_HEADER    = 102;
  BIO_F_BIO_CALLBACK_CTRL     = 131;
  BIO_F_BIO_CTRL              = 103;
  BIO_F_BIO_GETHOSTBYNAME     = 120;
  BIO_F_BIO_GETS              = 104;
  BIO_F_BIO_GET_ACCEPT_SOCKET = 105;
  BIO_F_BIO_GET_HOST_IP       = 106;
  BIO_F_BIO_GET_PORT          = 107;
  BIO_F_BIO_MAKE_PAIR         = 121;
  BIO_F_BIO_NEW               = 108;
  BIO_F_BIO_NEW_FILE          = 109;
  BIO_F_BIO_NEW_MEM_BUF       = 126;
  BIO_F_BIO_NREAD             = 123;
  BIO_F_BIO_NREAD0            = 124;
  BIO_F_BIO_NWRITE            = 125;
  BIO_F_BIO_NWRITE0           = 122;
  BIO_F_BIO_PUTS              = 110;
  BIO_F_BIO_READ              = 111;
  BIO_F_BIO_SOCK_INIT         = 112;
  BIO_F_BIO_WRITE             = 113;
  BIO_F_BUFFER_CTRL           = 114;
  BIO_F_CONN_CTRL             = 127;
  BIO_F_CONN_STATE            = 115;
  BIO_F_DGRAM_SCTP_READ       = 132;
  BIO_F_FILE_CTRL             = 116;
  BIO_F_FILE_READ             = 130;
  BIO_F_LINEBUFFER_CTRL       = 129;
  BIO_F_MEM_READ              = 128;
  BIO_F_MEM_WRITE             = 117;
  BIO_F_SSL_NEW               = 118;
  BIO_F_WSASTARTUP            = 119;

  BIO_R_ACCEPT_ERROR                          = 100;
  BIO_R_BAD_FOPEN_MODE                        = 101;
  BIO_R_BAD_HOSTNAME_LOOKUP                   = 102;
  BIO_R_BROKEN_PIPE                           = 124;
  BIO_R_CONNECT_ERROR                         = 103;
  BIO_R_EOF_ON_MEMORY_BIO                     = 127;
  BIO_R_ERROR_SETTING_NBIO                    = 104;
  BIO_R_ERROR_SETTING_NBIO_ON_ACCEPTED_SOCKET = 105;
  BIO_R_ERROR_SETTING_NBIO_ON_ACCEPT_SOCKET   = 106;
  BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET     = 107;
  BIO_R_INVALID_ARGUMENT                      = 125;
  BIO_R_INVALID_IP_ADDRESS                    = 108;
  BIO_R_IN_USE                                = 123;
  BIO_R_KEEPALIVE                             = 109;
  BIO_R_NBIO_CONNECT_ERROR                    = 110;
  BIO_R_NO_ACCEPT_PORT_SPECIFIED              = 111;
  BIO_R_NO_HOSTNAME_SPECIFIED                 = 112;
  BIO_R_NO_PORT_DEFINED                       = 113;
  BIO_R_NO_PORT_SPECIFIED                     = 114;
  BIO_R_NO_SUCH_FILE                          = 128;
  BIO_R_NULL_PARAMETER                        = 115;
  BIO_R_TAG_MISMATCH                          = 116;
  BIO_R_UNABLE_TO_BIND_SOCKET                 = 117;
  BIO_R_UNABLE_TO_CREATE_SOCKET               = 118;
  BIO_R_UNABLE_TO_LISTEN_SOCKET               = 119;
  BIO_R_UNINITIALIZED                         = 120;
  BIO_R_UNSUPPORTED_METHOD                    = 121;
  BIO_R_WRITE_TO_READ_ONLY_BIO                = 126;
  BIO_R_WSASTARTUP                            = 122;


  BIO_BIND_NORMAL                 = 0;
  BIO_BIND_REUSEADDR              = 2;
  BIO_BIND_REUSEADDR_IF_UNUSED    = 1;
  BIO_CB_CTRL                     = $06;
  BIO_CB_FREE                     = $01;
  BIO_CB_GETS                     = $05;
  BIO_CB_PUTS                     = $04;
  BIO_CB_READ                     = $02;
  BIO_CB_RETURN                   = $80;
  BIO_CB_WRITE                    = $03;
  BIO_CLOSE                       = $01;
  BIO_CONN_S_BEFORE               = 1;
  BIO_CONN_S_BLOCKED_CONNECT      = 7;
  BIO_CONN_S_CONNECT              = 5;
  BIO_CONN_S_CREATE_SOCKET        = 4;
  BIO_CONN_S_GET_IP               = 2;
  BIO_CONN_S_GET_PORT             = 3;
  BIO_CONN_S_NBIO                 = 8;
  BIO_CONN_S_OK                   = 6;
  BIO_CTRL_DUP                    = 12;
  BIO_CTRL_EOF                    = 2;
  BIO_CTRL_FLUSH                  = 11;
  BIO_CTRL_GET                    = 5;
  BIO_CTRL_GET_CALLBACK           = 15;
  BIO_CTRL_GET_CLOSE              = 8;
  BIO_CTRL_INFO                   = 3;
  BIO_CTRL_PENDING                = 10;
  BIO_CTRL_POP                    = 7;
  BIO_CTRL_PUSH                   = 6;
  BIO_CTRL_RESET                  = 1;
  BIO_CTRL_SET                    = 4;
  BIO_CTRL_SET_CALLBACK           = 14;
  BIO_CTRL_SET_CLOSE              = 9;
  BIO_CTRL_SET_FILENAME           = 30;
  BIO_CTRL_DGRAM_CONNECT          = 31;  
  BIO_CTRL_DGRAM_SET_CONNECTED    = 32;                                             
  BIO_CTRL_DGRAM_SET_RECV_TIMEOUT = 33; //* setsockopt, essentially */
  BIO_CTRL_DGRAM_GET_RECV_TIMEOUT = 34; //* getsockopt, essentially */
  BIO_CTRL_DGRAM_SET_SEND_TIMEOUT = 35; //* setsockopt, essentially */
  BIO_CTRL_DGRAM_GET_SEND_TIMEOUT = 36; //* getsockopt, essentially */

  BIO_CTRL_DGRAM_GET_RECV_TIMER_EXP = 37; //* flag whether the last */
  BIO_CTRL_DGRAM_GET_SEND_TIMER_EXP = 38; //* I/O operation tiemd out */
  BIO_CTRL_DGRAM_MTU_DISCOVER       = 39; //* set DF bit on egress packets */
  BIO_CTRL_DGRAM_QUERY_MTU          = 40; //* as kernel for current MTU */
  BIO_CTRL_DGRAM_GET_MTU            = 41; //* get cached value for MTU */
  BIO_CTRL_DGRAM_SET_MTU            = 42; //* set cached value for
  BIO_CTRL_DGRAM_MTU_EXCEEDED       = 43; //* check whether the MTU
  BIO_CTRL_DGRAM_GET_PEER           = 46;
  BIO_CTRL_DGRAM_SET_PEER           = 44; //* Destination for the data */
  BIO_CTRL_DGRAM_SET_NEXT_TIMEOUT   = 45; //* Next DTLS handshake timeout to

  BIO_CTRL_WPENDING                 = 13;
  BIO_C_DESTROY_BIO_PAIR            = 139;
  BIO_C_DO_STATE_MACHINE            = 101;
  BIO_C_FILE_SEEK                   = 128;
  BIO_C_FILE_TELL                   = 133;
  BIO_C_GET_ACCEPT                  = 124;
  BIO_C_GET_BIND_MODE               = 132;
  BIO_C_GET_BUFF_NUM_LINES          = 116;
  BIO_C_GET_BUF_MEM_PTR             = 115;
  BIO_C_GET_CIPHER_CTX              = 129;
  BIO_C_GET_CIPHER_STATUS           = 113;
  BIO_C_GET_CONNECT                 = 123;
  BIO_C_GET_FD                      = 105;
  BIO_C_GET_FILE_PTR                = 107;
  BIO_C_GET_MD                      = 112;
  BIO_C_GET_MD_CTX                  = 120;
  BIO_C_GET_PROXY_PARAM             = 121;
  BIO_C_GET_READ_REQUEST            = 141;
  BIO_C_GET_SOCKS                   = 134;
  BIO_C_GET_SSL                     = 110;
  BIO_C_GET_SSL_NUM_RENEGOTIATES    = 126;
  BIO_C_GET_WRITE_BUF_SIZE          = 137;
  BIO_C_GET_WRITE_GUARANTEE         = 140;
  BIO_C_MAKE_BIO_PAIR               = 138;
  BIO_C_SET_ACCEPT                  = 118;
  BIO_C_SET_BIND_MODE               = 131;
  BIO_C_SET_BUFF_READ_DATA          = 122;
  BIO_C_SET_BUFF_SIZE               = 117;
  BIO_C_SET_BUF_MEM                 = 114;
  BIO_C_SET_BUF_MEM_EOF_RETURN      = 130;
  BIO_C_SET_CONNECT                 = 100;
  BIO_C_SET_FD                      = 104;
  BIO_C_SET_FILENAME                = 108;
  BIO_C_SET_FILE_PTR                = 106;
  BIO_C_SET_MD                      = 111;
  BIO_C_SET_NBIO                    = 102;
  BIO_C_SET_PROXY_PARAM             = 103;
  BIO_C_SET_SOCKS                   = 135;
  BIO_C_SET_SSL                     = 109;
  BIO_C_SET_SSL_RENEGOTIATE_BYTES   = 125;
  BIO_C_SET_SSL_RENEGOTIATE_TIMEOUT = 127;
  BIO_C_SET_WRITE_BUF_SIZE          = 136;
  BIO_C_SHUTDOWN_WR                 = 142;
  BIO_C_SSL_MODE                    = 119;
  BIO_FLAGS_BASE64_NO_NL            = $100;
  BIO_FLAGS_IO_SPECIAL              = $04;
  BIO_FLAGS_READ                    = $01;
  BIO_FLAGS_WRITE                   = $02;
  BIO_FLAGS_RWS                     = BIO_FLAGS_READ or
                          BIO_FLAGS_WRITE or
                          BIO_FLAGS_IO_SPECIAL;
  BIO_FLAGS_SHOULD_RETRY            = $08;
  BIO_FP_APPEND                     = $08;
  BIO_FP_READ                       = $02;
  BIO_FP_TEXT                       = $10;
  BIO_FP_WRITE                      = $04;
  BIO_GHBN_CTRL_CACHE_SIZE          = 3;
  BIO_GHBN_CTRL_FLUSH               = 5;
  BIO_GHBN_CTRL_GET_ENTRY           = 4;
  BIO_GHBN_CTRL_HITS                = 1;
  BIO_GHBN_CTRL_MISSES              = 2;
  BIO_NOCLOSE                       = $00;
  BIO_RR_CONNECT                    = $02;
  BIO_RR_SSL_X509_LOOKUP            = $01;
  BIO_TYPE_ACCEPT                   = 13 or $0400 or $0100;
  BIO_TYPE_BASE64                   = 11 or $0200;
  BIO_TYPE_BER                      = 18 or $0200;
  BIO_TYPE_BIO                      = 19 or $0400;
  BIO_TYPE_BUFFER                   = 9 or $0200;
  BIO_TYPE_CIPHER                   = 10 or $0200;
  BIO_TYPE_CONNECT                  = 12 or $0400 or $0100;
  BIO_TYPE_DESCRIPTOR               = $0100;
  BIO_TYPE_FD                       = 4 or $0400 or $0100;
  BIO_TYPE_FILE                     = 2 or $0400;
  BIO_TYPE_FILTER                   = $0200;
  BIO_TYPE_MD                       = 8 or $0200;
  BIO_TYPE_MEM                      = 1 or $0400;
  BIO_TYPE_NBIO_TEST                = 16 or $0200;
  BIO_TYPE_NONE                     = 0;
  BIO_TYPE_NULL                     = 6 or $0400;
  BIO_TYPE_NULL_FILTER              = 17 or $0200;
  BIO_TYPE_PROXY_CLIENT             = 14 or $0200;
  BIO_TYPE_PROXY_SERVER             = 15 or $0200;
  BIO_TYPE_SOCKET                   = 5 or $0400 or $0100;
  BIO_TYPE_SOURCE_SINK              = $0400;
  BIO_TYPE_SSL                      = 7 or $0200;
  BIO_TYPE_LINEBUFFER               = 20 or $0200;
  BIO_TYPE_DGRAM                    = 21 or $0400 or $0100;
  BIO_TYPE_COMP                     = 23 or $0200;

{$ENDREGION}

{$REGION 'BN'}

 BN_BITS        = 128;
 BN_BYTES       = 8;
 BN_BITS2       = 64;
 BN_BITS4       = 32;
 BN_MASK2       = $ffffffffffffffff;
 BN_MASK2l      = $ffffffff;
 BN_MASK2h      = $ffffffff00000000;
 BN_MASK2h1     = $ffffffff80000000;
 BN_TBIT        = $8000000000000000;
 BN_DEC_CONV    = 10000000000000000000;
 BN_DEC_FMT1    = '%lu';
 BN_DEC_FMT2    = '%019lu';
 BN_DEC_NUM     = 19;
 BN_HEX_FMT1    = '%lX';
 BN_HEX_FMT2    = '%016lX';

 BN_CTX_POOL_SIZE   = 16;
 BN_CTX_START_FRAMES    = 32;

 BN_F_BNRAND                                 = 127;
 BN_F_BN_BLINDING_CONVERT_EX                 = 100;
 BN_F_BN_BLINDING_CREATE_PARAM               = 128;
 BN_F_BN_BLINDING_INVERT_EX                  = 101;
 BN_F_BN_BLINDING_NEW                        = 102;
 BN_F_BN_BLINDING_UPDATE                     = 103;
 BN_F_BN_BN2DEC                              = 104;
 BN_F_BN_BN2HEX                              = 105;
 BN_F_BN_CTX_GET                             = 116;
 BN_F_BN_CTX_NEW                             = 106;
 BN_F_BN_CTX_START                           = 129;
 BN_F_BN_DIV                                 = 107;
 BN_F_BN_DIV_NO_BRANCH                       = 138;
 BN_F_BN_DIV_RECP                            = 130;
 BN_F_BN_EXP                                 = 123;
 BN_F_BN_EXPAND2                             = 108;
 BN_F_BN_EXPAND_INTERNAL                     = 120;
 BN_F_BN_GF2M_MOD                            = 131;
 BN_F_BN_GF2M_MOD_EXP                        = 132;
 BN_F_BN_GF2M_MOD_MUL                        = 133;
 BN_F_BN_GF2M_MOD_SOLVE_QUAD                 = 134;
 BN_F_BN_GF2M_MOD_SOLVE_QUAD_ARR             = 135;
 BN_F_BN_GF2M_MOD_SQR                        = 136;
 BN_F_BN_GF2M_MOD_SQRT                       = 137;
 BN_F_BN_MOD_EXP2_MONT                       = 118;
 BN_F_BN_MOD_EXP_MONT                        = 109;
 BN_F_BN_MOD_EXP_MONT_CONSTTIME              = 124;
 BN_F_BN_MOD_EXP_MONT_WORD                   = 117;
 BN_F_BN_MOD_EXP_RECP                        = 125;
 BN_F_BN_MOD_EXP_SIMPLE                      = 126;
 BN_F_BN_MOD_INVERSE                         = 110;
 BN_F_BN_MOD_INVERSE_NO_BRANCH               = 139;
 BN_F_BN_MOD_LSHIFT_QUICK                    = 119;
 BN_F_BN_MOD_MUL_RECIPROCAL                  = 111;
 BN_F_BN_MOD_SQRT                            = 121;
 BN_F_BN_MPI2BN                              = 112;
 BN_F_BN_NEW                                 = 113;
 BN_F_BN_RAND                                = 114;
 BN_F_BN_RAND_RANGE                          = 122;
 BN_F_BN_USUB                                = 115;
 
 BN_R_ARG2_LT_ARG3                       = 100;
 BN_R_BAD_RECIPROCAL                     = 101;
 BN_R_BIGNUM_TOO_LONG                    = 114;
 BN_R_CALLED_WITH_EVEN_MODULUS           = 102;
 BN_R_DIV_BY_ZERO                        = 103;
 BN_R_ENCODING_ERROR                     = 104;
 BN_R_EXPAND_ON_STATIC_BIGNUM_DATA       = 105;
 BN_R_INPUT_NOT_REDUCED                  = 110;
 BN_R_INVALID_LENGTH                     = 106;
 BN_R_INVALID_RANGE                      = 115;
 BN_R_NOT_A_SQUARE                       = 111;
 BN_R_NOT_INITIALIZED                    = 107;
 BN_R_NO_INVERSE                         = 108;
 BN_R_NO_SOLUTION                        = 116;
 BN_R_P_IS_NOT_PRIME                     = 112;
 BN_R_TOO_MANY_ITERATIONS                = 113;
 BN_R_TOO_MANY_TEMPORARY_VARIABLES       = 109;
 
{$ENDREGION}

{$REGION 'BUFFER'}

 BUF_F_BUF_MEMDUP                    = 103;
 BUF_F_BUF_MEM_GROW                  = 100;
 BUF_F_BUF_MEM_GROW_CLEAN            = 105;
 BUF_F_BUF_MEM_NEW                   = 101;
 BUF_F_BUF_STRDUP                    = 102;
 BUF_F_BUF_STRNDUP                   = 104;

{$ENDREGION}

{$REGION 'CMS'}

 CMS_SIGNERINFO_ISSUER_SERIAL   = 0;
 CMS_SIGNERINFO_KEYIDENTIFIER   = 1;

 CMS_RECIPINFO_TRANS        = 0;
 CMS_RECIPINFO_AGREE        = 1;
 CMS_RECIPINFO_KEK          = 2;
 CMS_RECIPINFO_PASS         = 3;
 CMS_RECIPINFO_OTHER        = 4;


 CMS_TEXT                   = $1;
 CMS_NOCERTS                = $2;
 CMS_NO_CONTENT_VERIFY      = $4;
 CMS_NO_ATTR_VERIFY         = $8;
 CMS_NOSIGS                 = (CMS_NO_CONTENT_VERIFY or CMS_NO_ATTR_VERIFY);
 CMS_NOINTERN               = $10;
 CMS_NO_SIGNER_CERT_VERIFY  = $20;
 CMS_NOVERIFY               = $20;
 CMS_DETACHED               = $40;
 CMS_BINARY                 = $80;
 CMS_NOATTR                 = $100;
 CMS_NOSMIMECAP             = $200;
 CMS_NOOLDMIMETYPE          = $400;
 CMS_CRLFEOL                = $800;
 CMS_STREAM                 = $1000;
 CMS_NOCRL                  = $2000;
 CMS_PARTIAL                = $4000;
 CMS_REUSE_DIGEST           = $8000;
 CMS_USE_KEYID              = $10000;
 CMS_DEBUG_DECRYPT          = $20000;

 CMS_F_CHECK_CONTENT                             = 99;
 CMS_F_CMS_ADD0_CERT                             = 164;
 CMS_F_CMS_ADD0_RECIPIENT_KEY                    = 100;
 CMS_F_CMS_ADD0_RECIPIENT_PASSWORD               = 165;
 CMS_F_CMS_ADD1_RECEIPTREQUEST                   = 158;
 CMS_F_CMS_ADD1_RECIPIENT_CERT                   = 101;
 CMS_F_CMS_ADD1_SIGNER                           = 102;
 CMS_F_CMS_ADD1_SIGNINGTIME                      = 103;
 CMS_F_CMS_COMPRESS                              = 104;
 CMS_F_CMS_COMPRESSEDDATA_CREATE                 = 105;
 CMS_F_CMS_COMPRESSEDDATA_INIT_BIO               = 106;
 CMS_F_CMS_COPY_CONTENT                          = 107;
 CMS_F_CMS_COPY_MESSAGEDIGEST                    = 108;
 CMS_F_CMS_DATA                                  = 109;
 CMS_F_CMS_DATAFINAL                             = 110;
 CMS_F_CMS_DATAINIT                              = 111;
 CMS_F_CMS_DECRYPT                               = 112;
 CMS_F_CMS_DECRYPT_SET1_KEY                      = 113;
 CMS_F_CMS_DECRYPT_SET1_PASSWORD                 = 166;
 CMS_F_CMS_DECRYPT_SET1_PKEY                     = 114;
 CMS_F_CMS_DIGESTALGORITHM_FIND_CTX              = 115;
 CMS_F_CMS_DIGESTALGORITHM_INIT_BIO              = 116;
 CMS_F_CMS_DIGESTEDDATA_DO_FINAL                 = 117;
 CMS_F_CMS_DIGEST_VERIFY                         = 118;
 CMS_F_CMS_ENCODE_RECEIPT                        = 161;
 CMS_F_CMS_ENCRYPT                               = 119;
 CMS_F_CMS_ENCRYPTEDCONTENT_INIT_BIO             = 120;
 CMS_F_CMS_ENCRYPTEDDATA_DECRYPT                 = 121;
 CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT                 = 122;
 CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY                = 123;
 CMS_F_CMS_ENVELOPEDDATA_CREATE                  = 124;
 CMS_F_CMS_ENVELOPEDDATA_INIT_BIO                = 125;
 CMS_F_CMS_ENVELOPED_DATA_INIT                   = 126;
 CMS_F_CMS_FINAL                                 = 127;
 CMS_F_CMS_GET0_CERTIFICATE_CHOICES              = 128;
 CMS_F_CMS_GET0_CONTENT                          = 129;
 CMS_F_CMS_GET0_ECONTENT_TYPE                    = 130;
 CMS_F_CMS_GET0_ENVELOPED                        = 131;
 CMS_F_CMS_GET0_REVOCATION_CHOICES               = 132;
 CMS_F_CMS_GET0_SIGNED                           = 133;
 CMS_F_CMS_MSGSIGDIGEST_ADD1                     = 162;
 CMS_F_CMS_RECEIPTREQUEST_CREATE0                = 159;
 CMS_F_CMS_RECEIPT_VERIFY                        = 160;
 CMS_F_CMS_RECIPIENTINFO_DECRYPT                 = 134;
 CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT           = 135;
 CMS_F_CMS_RECIPIENTINFO_KEKRI_ENCRYPT           = 136;
 CMS_F_CMS_RECIPIENTINFO_KEKRI_GET0_ID           = 137;
 CMS_F_CMS_RECIPIENTINFO_KEKRI_ID_CMP            = 138;
 CMS_F_CMS_RECIPIENTINFO_KTRI_CERT_CMP           = 139;
 CMS_F_CMS_RECIPIENTINFO_KTRI_DECRYPT            = 140;
 CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT            = 141;
 CMS_F_CMS_RECIPIENTINFO_KTRI_GET0_ALGS          = 142;
 CMS_F_CMS_RECIPIENTINFO_KTRI_GET0_SIGNER_ID     = 143;
 CMS_F_CMS_RECIPIENTINFO_PWRI_CRYPT              = 167;
 CMS_F_CMS_RECIPIENTINFO_SET0_KEY                = 144;
 CMS_F_CMS_RECIPIENTINFO_SET0_PASSWORD           = 168;
 CMS_F_CMS_RECIPIENTINFO_SET0_PKEY               = 145;
 CMS_F_CMS_SET1_SIGNERIDENTIFIER                 = 146;
 CMS_F_CMS_SET_DETACHED                          = 147;
 CMS_F_CMS_SIGN                                  = 148;
 CMS_F_CMS_SIGNED_DATA_INIT                      = 149;
 CMS_F_CMS_SIGNERINFO_CONTENT_SIGN               = 150;
 CMS_F_CMS_SIGNERINFO_SIGN                       = 151;
 CMS_F_CMS_SIGNERINFO_VERIFY                     = 152;
 CMS_F_CMS_SIGNERINFO_VERIFY_CERT                = 153;
 CMS_F_CMS_SIGNERINFO_VERIFY_CONTENT             = 154;
 CMS_F_CMS_SIGN_RECEIPT                          = 163;
 CMS_F_CMS_STREAM                                = 155;
 CMS_F_CMS_UNCOMPRESS                            = 156;
 CMS_F_CMS_VERIFY                                = 157;

 CMS_R_ADD_SIGNER_ERROR                          = 99;
 CMS_R_CERTIFICATE_ALREADY_PRESENT               = 175;
 CMS_R_CERTIFICATE_HAS_NO_KEYID                  = 160;
 CMS_R_CERTIFICATE_VERIFY_ERROR                  = 100;
 CMS_R_CIPHER_INITIALISATION_ERROR               = 101;
 CMS_R_CIPHER_PARAMETER_INITIALISATION_ERROR     = 102;
 CMS_R_CMS_DATAFINAL_ERROR                       = 103;
 CMS_R_CMS_LIB                                   = 104;
 CMS_R_CONTENTIDENTIFIER_MISMATCH                = 170;
 CMS_R_CONTENT_NOT_FOUND                         = 105;
 CMS_R_CONTENT_TYPE_MISMATCH                     = 171;
 CMS_R_CONTENT_TYPE_NOT_COMPRESSED_DATA          = 106;
 CMS_R_CONTENT_TYPE_NOT_ENVELOPED_DATA           = 107;
 CMS_R_CONTENT_TYPE_NOT_SIGNED_DATA              = 108;
 CMS_R_CONTENT_VERIFY_ERROR                      = 109;
 CMS_R_CTRL_ERROR                                = 110;
 CMS_R_CTRL_FAILURE                              = 111;
 CMS_R_DECRYPT_ERROR                             = 112;
 CMS_R_DIGEST_ERROR                              = 161;
 CMS_R_ERROR_GETTING_PUBLIC_KEY                  = 113;
 CMS_R_ERROR_READING_MESSAGEDIGEST_ATTRIBUTE     = 114;
 CMS_R_ERROR_SETTING_KEY                         = 115;
 CMS_R_ERROR_SETTING_RECIPIENTINFO               = 116;
 CMS_R_INVALID_ENCRYPTED_KEY_LENGTH              = 117;
 CMS_R_INVALID_KEY_ENCRYPTION_PARAMETER          = 176;
 CMS_R_INVALID_KEY_LENGTH                        = 118;
 CMS_R_MD_BIO_INIT_ERROR                         = 119;
 CMS_R_MESSAGEDIGEST_ATTRIBUTE_WRONG_LENGTH      = 120;
 CMS_R_MESSAGEDIGEST_WRONG_LENGTH                = 121;
 CMS_R_MSGSIGDIGEST_ERROR                        = 172;
 CMS_R_MSGSIGDIGEST_VERIFICATION_FAILURE         = 162;
 CMS_R_MSGSIGDIGEST_WRONG_LENGTH                 = 163;
 CMS_R_NEED_ONE_SIGNER                           = 164;
 CMS_R_NOT_A_SIGNED_RECEIPT                      = 165;
 CMS_R_NOT_ENCRYPTED_DATA                        = 122;
 CMS_R_NOT_KEK                                   = 123;
 CMS_R_NOT_KEY_TRANSPORT                         = 124;
 CMS_R_NOT_PWRI                                  = 177;
 CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE           = 125;
 CMS_R_NO_CIPHER                                 = 126;
 CMS_R_NO_CONTENT                                = 127;
 CMS_R_NO_CONTENT_TYPE                           = 173;
 CMS_R_NO_DEFAULT_DIGEST                         = 128;
 CMS_R_NO_DIGEST_SET                             = 129;
 CMS_R_NO_KEY                                    = 130;
 CMS_R_NO_KEY_OR_CERT                            = 174;
 CMS_R_NO_MATCHING_DIGEST                        = 131;
 CMS_R_NO_MATCHING_RECIPIENT                     = 132;
 CMS_R_NO_MATCHING_SIGNATURE                     = 166;
 CMS_R_NO_MSGSIGDIGEST                           = 167;
 CMS_R_NO_PASSWORD                               = 178;
 CMS_R_NO_PRIVATE_KEY                            = 133;
 CMS_R_NO_PUBLIC_KEY                             = 134;
 CMS_R_NO_RECEIPT_REQUEST                        = 168;
 CMS_R_NO_SIGNERS                                = 135;
 CMS_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE    = 136;
 CMS_R_RECEIPT_DECODE_ERROR                      = 169;
 CMS_R_RECIPIENT_ERROR                           = 137;
 CMS_R_SIGNER_CERTIFICATE_NOT_FOUND              = 138;
 CMS_R_SIGNFINAL_ERROR                           = 139;
 CMS_R_SMIME_TEXT_ERROR                          = 140;
 CMS_R_STORE_INIT_ERROR                          = 141;
 CMS_R_TYPE_NOT_COMPRESSED_DATA                  = 142;
 CMS_R_TYPE_NOT_DATA                             = 143;
 CMS_R_TYPE_NOT_DIGESTED_DATA                    = 144;
 CMS_R_TYPE_NOT_ENCRYPTED_DATA                   = 145;
 CMS_R_TYPE_NOT_ENVELOPED_DATA                   = 146;
 CMS_R_UNABLE_TO_FINALIZE_CONTEXT                = 147;
 CMS_R_UNKNOWN_CIPHER                            = 148;
 CMS_R_UNKNOWN_DIGEST_ALGORIHM                   = 149;
 CMS_R_UNKNOWN_ID                                = 150;
 CMS_R_UNSUPPORTED_COMPRESSION_ALGORITHM         = 151;
 CMS_R_UNSUPPORTED_CONTENT_TYPE                  = 152;
 CMS_R_UNSUPPORTED_KEK_ALGORITHM                 = 153;
 CMS_R_UNSUPPORTED_KEY_ENCRYPTION_ALGORITHM      = 179;
 CMS_R_UNSUPPORTED_RECIPIENT_TYPE                = 154;
 CMS_R_UNSUPPORTED_RECPIENTINFO_TYPE             = 155;
 CMS_R_UNSUPPORTED_TYPE                          = 156;
 CMS_R_UNWRAP_ERROR                              = 157;
 CMS_R_UNWRAP_FAILURE                            = 180;
 CMS_R_VERIFICATION_FAILURE                      = 158;
 CMS_R_WRAP_ERROR                                = 159;

{$ENDREGION}

{$REGION 'DSA'}

const
 DSA_F_D2I_DSA_SIG                       = 110;
 DSA_F_DO_DSA_PRINT                      = 104;
 DSA_F_DSAPARAMS_PRINT                   = 100;
 DSA_F_DSAPARAMS_PRINT_FP                = 101;
 DSA_F_DSA_DO_SIGN                       = 112;
 DSA_F_DSA_DO_VERIFY                     = 113;
 DSA_F_DSA_GENERATE_KEY                  = 124;
 DSA_F_DSA_GENERATE_PARAMETERS_EX        = 123;
 DSA_F_DSA_NEW_METHOD                    = 103;
 DSA_F_DSA_PARAM_DECODE                  = 119;
 DSA_F_DSA_PRINT_FP                      = 105;
 DSA_F_DSA_PRIV_DECODE                   = 115;
 DSA_F_DSA_PRIV_ENCODE                   = 116;
 DSA_F_DSA_PUB_DECODE                    = 117;
 DSA_F_DSA_PUB_ENCODE                    = 118;
 DSA_F_DSA_SIGN                          = 106;
 DSA_F_DSA_SIGN_SETUP                    = 107;
 DSA_F_DSA_SIG_NEW                       = 109;
 DSA_F_DSA_SIG_PRINT                     = 125;
 DSA_F_DSA_VERIFY                        = 108;
 DSA_F_I2D_DSA_SIG                       = 111;
 DSA_F_OLD_DSA_PRIV_DECODE               = 122;
 DSA_F_PKEY_DSA_CTRL                     = 120;
 DSA_F_PKEY_DSA_KEYGEN                   = 121;
 DSA_F_SIG_CB                            = 114;
 
 DSA_R_BAD_Q_VALUE                       = 102;
 DSA_R_BN_DECODE_ERROR                   = 108;
 DSA_R_BN_ERROR                          = 109;
 DSA_R_DATA_TOO_LARGE_FOR_KEY_SIZE       = 100;
 DSA_R_DECODE_ERROR                      = 104;
 DSA_R_INVALID_DIGEST_TYPE               = 106;
 DSA_R_MISSING_PARAMETERS                = 101;
 DSA_R_MODULUS_TOO_LARGE                 = 103;
 DSA_R_NEED_NEW_SETUP_VALUES             = 110;
 DSA_R_NON_FIPS_DSA_METHOD               = 111;
 DSA_R_NO_PARAMETERS_SET                 = 107;
 DSA_R_PARAMETER_ENCODING_ERROR          = 105;


{$ENDREGION}

{$REGION 'EC'}
const
  POINT_CONVERSION_COMPRESSED = 2;
  POINT_CONVERSION_UNCOMPRESSED = 4;
  POINT_CONVERSION_HYBRID = 6;

 EC_F_BN_TO_FELEM                                    = 224;
 EC_F_COMPUTE_WNAF                                   = 143;
 EC_F_D2I_ECPARAMETERS                               = 144;
 EC_F_D2I_ECPKPARAMETERS                             = 145;
 EC_F_D2I_ECPRIVATEKEY                               = 146;
 EC_F_DO_EC_KEY_PRINT                                = 221;
 EC_F_ECKEY_PARAM2TYPE                               = 223;
 EC_F_ECKEY_PARAM_DECODE                             = 212;
 EC_F_ECKEY_PRIV_DECODE                              = 213;
 EC_F_ECKEY_PRIV_ENCODE                              = 214;
 EC_F_ECKEY_PUB_DECODE                               = 215;
 EC_F_ECKEY_PUB_ENCODE                               = 216;
 EC_F_ECKEY_TYPE2PARAM                               = 220;
 EC_F_ECPARAMETERS_PRINT                             = 147;
 EC_F_ECPARAMETERS_PRINT_FP                          = 148;
 EC_F_ECPKPARAMETERS_PRINT                           = 149;
 EC_F_ECPKPARAMETERS_PRINT_FP                        = 150;
 EC_F_ECP_NIST_MOD_192                               = 203;
 EC_F_ECP_NIST_MOD_224                               = 204;
 EC_F_ECP_NIST_MOD_256                               = 205;
 EC_F_ECP_NIST_MOD_521                               = 206;
 EC_F_EC_ASN1_GROUP2CURVE                            = 153;
 EC_F_EC_ASN1_GROUP2FIELDID                          = 154;
 EC_F_EC_ASN1_GROUP2PARAMETERS                       = 155;
 EC_F_EC_ASN1_GROUP2PKPARAMETERS                     = 156;
 EC_F_EC_ASN1_PARAMETERS2GROUP                       = 157;
 EC_F_EC_ASN1_PKPARAMETERS2GROUP                     = 158;
 EC_F_EC_EX_DATA_SET_DATA                            = 211;
 EC_F_EC_GF2M_MONTGOMERY_POINT_MULTIPLY              = 208;
 EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT        = 159;
 EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE                 = 195;
 EC_F_EC_GF2M_SIMPLE_OCT2POINT                       = 160;
 EC_F_EC_GF2M_SIMPLE_POINT2OCT                       = 161;
 EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES    = 162;
 EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES    = 163;
 EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES      = 164;
 EC_F_EC_GFP_MONT_FIELD_DECODE                       = 133;
 EC_F_EC_GFP_MONT_FIELD_ENCODE                       = 134;
 EC_F_EC_GFP_MONT_FIELD_MUL                          = 131;
 EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE                   = 209;
 EC_F_EC_GFP_MONT_FIELD_SQR                          = 132;
 EC_F_EC_GFP_MONT_GROUP_SET_CURVE                    = 189;
 EC_F_EC_GFP_MONT_GROUP_SET_CURVE_GFP                = 135;
 EC_F_EC_GFP_NISTP224_GROUP_SET_CURVE                = 225;
 EC_F_EC_GFP_NISTP224_POINTS_MUL                     = 228;
 EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES   = 226;
 EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE                = 230;
 EC_F_EC_GFP_NISTP256_POINTS_MUL                     = 231;
 EC_F_EC_GFP_NISTP256_POINT_GET_AFFINE_COORDINATES   = 232;
 EC_F_EC_GFP_NISTP521_GROUP_SET_CURVE                = 233;
 EC_F_EC_GFP_NISTP521_POINTS_MUL                     = 234;
 EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES   = 235;
 EC_F_EC_GFP_NIST_FIELD_MUL                          = 200;
 EC_F_EC_GFP_NIST_FIELD_SQR                          = 201;
 EC_F_EC_GFP_NIST_GROUP_SET_CURVE                    = 202;
 EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT         = 165;
 EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE                  = 166;
 EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE_GFP              = 100;
 EC_F_EC_GFP_SIMPLE_GROUP_SET_GENERATOR              = 101;
 EC_F_EC_GFP_SIMPLE_MAKE_AFFINE                      = 102;
 EC_F_EC_GFP_SIMPLE_OCT2POINT                        = 103;
 EC_F_EC_GFP_SIMPLE_POINT2OCT                        = 104;
 EC_F_EC_GFP_SIMPLE_POINTS_MAKE_AFFINE               = 137;
 EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES     = 167;
 EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES_GFP = 105;
 EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES     = 168;
 EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES_GFP = 128;
 EC_F_EC_GFP_SIMPLE_SET_COMPRESSED_COORDINATES       = 169;
 EC_F_EC_GFP_SIMPLE_SET_COMPRESSED_COORDINATES_GFP   = 129;
 EC_F_EC_GROUP_CHECK                                 = 170;
 EC_F_EC_GROUP_CHECK_DISCRIMINANT                    = 171;
 EC_F_EC_GROUP_COPY                                  = 106;
 EC_F_EC_GROUP_GET0_GENERATOR                        = 139;
 EC_F_EC_GROUP_GET_COFACTOR                          = 140;
 EC_F_EC_GROUP_GET_CURVE_GF2M                        = 172;
 EC_F_EC_GROUP_GET_CURVE_GFP                         = 130;
 EC_F_EC_GROUP_GET_DEGREE                            = 173;
 EC_F_EC_GROUP_GET_ORDER                             = 141;
 EC_F_EC_GROUP_GET_PENTANOMIAL_BASIS                 = 193;
 EC_F_EC_GROUP_GET_TRINOMIAL_BASIS                   = 194;
 EC_F_EC_GROUP_NEW                                   = 108;
 EC_F_EC_GROUP_NEW_BY_CURVE_NAME                     = 174;
 EC_F_EC_GROUP_NEW_FROM_DATA                         = 175;
 EC_F_EC_GROUP_PRECOMPUTE_MULT                       = 142;
 EC_F_EC_GROUP_SET_CURVE_GF2M                        = 176;
 EC_F_EC_GROUP_SET_CURVE_GFP                         = 109;
 EC_F_EC_GROUP_SET_EXTRA_DATA                        = 110;
 EC_F_EC_GROUP_SET_GENERATOR                         = 111;
 EC_F_EC_KEY_CHECK_KEY                               = 177;
 EC_F_EC_KEY_COPY                                    = 178;
 EC_F_EC_KEY_GENERATE_KEY                            = 179;
 EC_F_EC_KEY_NEW                                     = 182;
 EC_F_EC_KEY_PRINT                                   = 180;
 EC_F_EC_KEY_PRINT_FP                                = 181;
 EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES       = 229;
 EC_F_EC_POINTS_MAKE_AFFINE                          = 136;
 EC_F_EC_POINT_ADD                                   = 112;
 EC_F_EC_POINT_CMP                                   = 113;
 EC_F_EC_POINT_COPY                                  = 114;
 EC_F_EC_POINT_DBL                                   = 115;
 EC_F_EC_POINT_GET_AFFINE_COORDINATES_GF2M           = 183;
 EC_F_EC_POINT_GET_AFFINE_COORDINATES_GFP            = 116;
 EC_F_EC_POINT_GET_JPROJECTIVE_COORDINATES_GFP       = 117;
 EC_F_EC_POINT_INVERT                                = 210;
 EC_F_EC_POINT_IS_AT_INFINITY                        = 118;
 EC_F_EC_POINT_IS_ON_CURVE                           = 119;
 EC_F_EC_POINT_MAKE_AFFINE                           = 120;
 EC_F_EC_POINT_MUL                                   = 184;
 EC_F_EC_POINT_NEW                                   = 121;
 EC_F_EC_POINT_OCT2POINT                             = 122;
 EC_F_EC_POINT_POINT2OCT                             = 123;
 EC_F_EC_POINT_SET_AFFINE_COORDINATES_GF2M           = 185;
 EC_F_EC_POINT_SET_AFFINE_COORDINATES_GFP            = 124;
 EC_F_EC_POINT_SET_COMPRESSED_COORDINATES_GF2M       = 186;
 EC_F_EC_POINT_SET_COMPRESSED_COORDINATES_GFP        = 125;
 EC_F_EC_POINT_SET_JPROJECTIVE_COORDINATES_GFP       = 126;
 EC_F_EC_POINT_SET_TO_INFINITY                       = 127;
 EC_F_EC_PRE_COMP_DUP                                = 207;
 EC_F_EC_PRE_COMP_NEW                                = 196;
 EC_F_EC_WNAF_MUL                                    = 187;
 EC_F_EC_WNAF_PRECOMPUTE_MULT                        = 188;
 EC_F_I2D_ECPARAMETERS                               = 190;
 EC_F_I2D_ECPKPARAMETERS                             = 191;
 EC_F_I2D_ECPRIVATEKEY                               = 192;
 EC_F_I2O_ECPUBLICKEY                                = 151;
 EC_F_NISTP224_PRE_COMP_NEW                          = 227;
 EC_F_NISTP256_PRE_COMP_NEW                          = 236;
 EC_F_NISTP521_PRE_COMP_NEW                          = 237;
 EC_F_O2I_ECPUBLICKEY                                = 152;
 EC_F_OLD_EC_PRIV_DECODE                             = 222;
 EC_F_PKEY_EC_CTRL                                   = 197;
 EC_F_PKEY_EC_CTRL_STR                               = 198;
 EC_F_PKEY_EC_DERIVE                                 = 217;
 EC_F_PKEY_EC_KEYGEN                                 = 199;
 EC_F_PKEY_EC_PARAMGEN                               = 219;
 EC_F_PKEY_EC_SIGN                                   = 218;

 EC_R_ASN1_ERROR                             = 115;
 EC_R_ASN1_UNKNOWN_FIELD                     = 116;
 EC_R_BIGNUM_OUT_OF_RANGE                    = 144;
 EC_R_BUFFER_TOO_SMALL                       = 100;
 EC_R_COORDINATES_OUT_OF_RANGE               = 146;
 EC_R_D2I_ECPKPARAMETERS_FAILURE             = 117;
 EC_R_DECODE_ERROR                           = 142;
 EC_R_DISCRIMINANT_IS_ZERO                   = 118;
 EC_R_EC_GROUP_NEW_BY_NAME_FAILURE           = 119;
 EC_R_FIELD_TOO_LARGE                        = 143;
 EC_R_GF2M_NOT_SUPPORTED                     = 147;
 EC_R_GROUP2PKPARAMETERS_FAILURE             = 120;
 EC_R_I2D_ECPKPARAMETERS_FAILURE             = 121;
 EC_R_INCOMPATIBLE_OBJECTS                   = 101;
 EC_R_INVALID_ARGUMENT                       = 112;
 EC_R_INVALID_COMPRESSED_POINT               = 110;
 EC_R_INVALID_COMPRESSION_BIT                = 109;
 EC_R_INVALID_CURVE                          = 141;
 EC_R_INVALID_DIGEST_TYPE                    = 138;
 EC_R_INVALID_ENCODING                       = 102;
 EC_R_INVALID_FIELD                          = 103;
 EC_R_INVALID_FORM                           = 104;
 EC_R_INVALID_GROUP_ORDER                    = 122;
 EC_R_INVALID_PENTANOMIAL_BASIS              = 132;
 EC_R_INVALID_PRIVATE_KEY                    = 123;
 EC_R_INVALID_TRINOMIAL_BASIS                = 137;
 EC_R_KEYS_NOT_SET                           = 140;
 EC_R_MISSING_PARAMETERS                     = 124;
 EC_R_MISSING_PRIVATE_KEY                    = 125;
 EC_R_NOT_A_NIST_PRIME                       = 135;
 EC_R_NOT_A_SUPPORTED_NIST_PRIME             = 136;
 EC_R_NOT_IMPLEMENTED                        = 126;
 EC_R_NOT_INITIALIZED                        = 111;
 EC_R_NO_FIELD_MOD                           = 133;
 EC_R_NO_PARAMETERS_SET                      = 139;
 EC_R_PASSED_NULL_PARAMETER                  = 134;
 EC_R_PKPARAMETERS2GROUP_FAILURE             = 127;
 EC_R_POINT_AT_INFINITY                      = 106;
 EC_R_POINT_IS_NOT_ON_CURVE                  = 107;
 EC_R_SLOT_FULL                              = 108;
 EC_R_UNDEFINED_GENERATOR                    = 113;
 EC_R_UNDEFINED_ORDER                        = 128;
 EC_R_UNKNOWN_GROUP                          = 129;
 EC_R_UNKNOWN_ORDER                          = 114;
 EC_R_UNSUPPORTED_FIELD                      = 131;
 EC_R_WRONG_CURVE_PARAMETERS                 = 145;
 EC_R_WRONG_ORDER                            = 130;


{$ENDREGION}

{$REGION 'ENGINE'}

const
 ENGINE_F_DYNAMIC_CTRL                       = 180;
 ENGINE_F_DYNAMIC_GET_DATA_CTX               = 181;
 ENGINE_F_DYNAMIC_LOAD                       = 182;
 ENGINE_F_DYNAMIC_SET_DATA_CTX               = 183;
 ENGINE_F_ENGINE_ADD                         = 105;
 ENGINE_F_ENGINE_BY_ID                       = 106;
 ENGINE_F_ENGINE_CMD_IS_EXECUTABLE           = 170;
 ENGINE_F_ENGINE_CTRL                        = 142;
 ENGINE_F_ENGINE_CTRL_CMD                    = 178;
 ENGINE_F_ENGINE_CTRL_CMD_STRING             = 171;
 ENGINE_F_ENGINE_FINISH                      = 107;
 ENGINE_F_ENGINE_FREE_UTIL                   = 108;
 ENGINE_F_ENGINE_GET_CIPHER                  = 185;
 ENGINE_F_ENGINE_GET_DEFAULT_TYPE            = 177;
 ENGINE_F_ENGINE_GET_DIGEST                  = 186;
 ENGINE_F_ENGINE_GET_NEXT                    = 115;
 ENGINE_F_ENGINE_GET_PKEY_ASN1_METH          = 193;
 ENGINE_F_ENGINE_GET_PKEY_METH               = 192;
 ENGINE_F_ENGINE_GET_PREV                    = 116;
 ENGINE_F_ENGINE_INIT                        = 119;
 ENGINE_F_ENGINE_LIST_ADD                    = 120;
 ENGINE_F_ENGINE_LIST_REMOVE                 = 121;
 ENGINE_F_ENGINE_LOAD_PRIVATE_KEY            = 150;
 ENGINE_F_ENGINE_LOAD_PUBLIC_KEY             = 151;
 ENGINE_F_ENGINE_LOAD_SSL_CLIENT_CERT        = 194;
 ENGINE_F_ENGINE_NEW                         = 122;
 ENGINE_F_ENGINE_REMOVE                      = 123;
 ENGINE_F_ENGINE_SET_DEFAULT_STRING          = 189;
 ENGINE_F_ENGINE_SET_DEFAULT_TYPE            = 126;
 ENGINE_F_ENGINE_SET_ID                      = 129;
 ENGINE_F_ENGINE_SET_NAME                    = 130;
 ENGINE_F_ENGINE_TABLE_REGISTER              = 184;
 ENGINE_F_ENGINE_UNLOAD_KEY                  = 152;
 ENGINE_F_ENGINE_UNLOCKED_FINISH             = 191;
 ENGINE_F_ENGINE_UP_REF                      = 190;
 ENGINE_F_INT_CTRL_HELPER                    = 172;
 ENGINE_F_INT_ENGINE_CONFIGURE               = 188;
 ENGINE_F_INT_ENGINE_MODULE_INIT             = 187;
 ENGINE_F_LOG_MESSAGE                        = 141;

 ENGINE_R_ALREADY_LOADED                     = 100;
 ENGINE_R_ARGUMENT_IS_NOT_A_NUMBER           = 133;
 ENGINE_R_CMD_NOT_EXECUTABLE                 = 134;
 ENGINE_R_COMMAND_TAKES_INPUT                = 135;
 ENGINE_R_COMMAND_TAKES_NO_INPUT             = 136;
 ENGINE_R_CONFLICTING_ENGINE_ID              = 103;
 ENGINE_R_CTRL_COMMAND_NOT_IMPLEMENTED       = 119;
 ENGINE_R_DH_NOT_IMPLEMENTED                 = 139;
 ENGINE_R_DSA_NOT_IMPLEMENTED                = 140;
 ENGINE_R_DSO_FAILURE                        = 104;
 ENGINE_R_DSO_NOT_FOUND                      = 132;
 ENGINE_R_ENGINES_SECTION_ERROR              = 148;
 ENGINE_R_ENGINE_CONFIGURATION_ERROR         = 102;
 ENGINE_R_ENGINE_IS_NOT_IN_LIST              = 105;
 ENGINE_R_ENGINE_SECTION_ERROR               = 149;
 ENGINE_R_FAILED_LOADING_PRIVATE_KEY         = 128;
 ENGINE_R_FAILED_LOADING_PUBLIC_KEY          = 129;
 ENGINE_R_FINISH_FAILED                      = 106;
 ENGINE_R_GET_HANDLE_FAILED                  = 107;
 ENGINE_R_ID_OR_NAME_MISSING                 = 108;
 ENGINE_R_INIT_FAILED                        = 109;
 ENGINE_R_INTERNAL_LIST_ERROR                = 110;
 ENGINE_R_INVALID_ARGUMENT                   = 143;
 ENGINE_R_INVALID_CMD_NAME                   = 137;
 ENGINE_R_INVALID_CMD_NUMBER                 = 138;
 ENGINE_R_INVALID_INIT_VALUE                 = 151;
 ENGINE_R_INVALID_STRING                     = 150;
 ENGINE_R_NOT_INITIALISED                    = 117;
 ENGINE_R_NOT_LOADED                         = 112;
 ENGINE_R_NO_CONTROL_FUNCTION                = 120;
 ENGINE_R_NO_INDEX                           = 144;
 ENGINE_R_NO_LOAD_FUNCTION                   = 125;
 ENGINE_R_NO_REFERENCE                       = 130;
 ENGINE_R_NO_SUCH_ENGINE                     = 116;
 ENGINE_R_NO_UNLOAD_FUNCTION                 = 126;
 ENGINE_R_PROVIDE_PARAMETERS                 = 113;
 ENGINE_R_RSA_NOT_IMPLEMENTED                = 141;
 ENGINE_R_UNIMPLEMENTED_CIPHER               = 146;
 ENGINE_R_UNIMPLEMENTED_DIGEST               = 147;
 ENGINE_R_UNIMPLEMENTED_PUBLIC_KEY_METHOD    = 101;
 ENGINE_R_VERSION_INCOMPATIBILITY            = 145;
 
{$ENDREGION}

{$REGION 'RAND'}
const
 RAND_F_RAND_GET_RAND_METHOD             = 101;
 RAND_F_RAND_INIT_FIPS                   = 102;
 RAND_F_SSLEAY_RAND_BYTES                = 100;

 RAND_R_ERROR_INITIALISING_DRBG              = 102;
 RAND_R_ERROR_INSTANTIATING_DRBG             = 103;
 RAND_R_NO_FIPS_RANDOM_METHOD_SET            = 101;
 RAND_R_PRNG_NOT_SEEDED                      = 100;


{$ENDREGION}

{$REGION 'CAMELLIA'}

const
 CAMELLIA_BLOCK_SIZE     = 16;
 CAMELLIA_TABLE_BYTE_LEN = 272;
 CAMELLIA_TABLE_WORD_LEN = (CAMELLIA_TABLE_BYTE_LEN div 4);


{$ENDREGION}

{$REGION 'DES'}

{$ENDREGION}

{$REGION 'EVP'}
const
  EVP_PKEY_NONE = NID_undef;
  EVP_PKEY_RSA = NID_rsaEncryption;
  EVP_PKEY_RSA2 = NID_rsa;
  EVP_PKEY_DSA = NID_dsa;
  EVP_PKEY_DSA1 = NID_dsa_2;
  EVP_PKEY_DSA2 = NID_dsaWithSHA;
  EVP_PKEY_DSA3 = NID_dsaWithSHA1;
  EVP_PKEY_DSA4 = NID_dsaWithSHA1_2;
  EVP_PKEY_DH = NID_dhKeyAgreement;
  EVP_PKEY_EC = NID_X9_62_id_ecPublicKey;
  EVP_PKEY_HMAC = NID_hmac;
  EVP_PKEY_CMAC = NID_cmac;

  EVP_PKEY_MO_SIGN = $1;
  EVP_PKEY_MO_VERIFY = $2;
  EVP_PKEY_MO_ENCRYPT = $4;
  EVP_PKEY_MO_DECRYPT = $8;
{$ENDREGION}

{$REGION 'X509'}

 X509_F_ADD_CERT_DIR                         = 100;
 X509_F_BY_FILE_CTRL                         = 101;
 X509_F_CHECK_POLICY                         = 145;
 X509_F_DIR_CTRL                             = 102;
 X509_F_GET_CERT_BY_SUBJECT                  = 103;
 X509_F_NETSCAPE_SPKI_B64_DECODE             = 129;
 X509_F_NETSCAPE_SPKI_B64_ENCODE             = 130;
 X509_F_X509AT_ADD1_ATTR                     = 135;
 X509_F_X509V3_ADD_EXT                       = 104;
 X509_F_X509_ATTRIBUTE_CREATE_BY_NID         = 136;
 X509_F_X509_ATTRIBUTE_CREATE_BY_OBJ         = 137;
 X509_F_X509_ATTRIBUTE_CREATE_BY_TXT         = 140;
 X509_F_X509_ATTRIBUTE_GET0_DATA             = 139;
 X509_F_X509_ATTRIBUTE_SET1_DATA             = 138;
 X509_F_X509_CHECK_PRIVATE_KEY               = 128;
 X509_F_X509_CRL_PRINT_FP                    = 147;
 X509_F_X509_EXTENSION_CREATE_BY_NID         = 108;
 X509_F_X509_EXTENSION_CREATE_BY_OBJ         = 109;
 X509_F_X509_GET_PUBKEY_PARAMETERS           = 110;
 X509_F_X509_LOAD_CERT_CRL_FILE              = 132;
 X509_F_X509_LOAD_CERT_FILE                  = 111;
 X509_F_X509_LOAD_CRL_FILE                   = 112;
 X509_F_X509_NAME_ADD_ENTRY                  = 113;
 X509_F_X509_NAME_ENTRY_CREATE_BY_NID        = 114;
 X509_F_X509_NAME_ENTRY_CREATE_BY_TXT        = 131;
 X509_F_X509_NAME_ENTRY_SET_OBJECT           = 115;
 X509_F_X509_NAME_ONELINE                    = 116;
 X509_F_X509_NAME_PRINT                      = 117;
 X509_F_X509_PRINT_EX_FP                     = 118;
 X509_F_X509_PUBKEY_GET                      = 119;
 X509_F_X509_PUBKEY_SET                      = 120;
 X509_F_X509_REQ_CHECK_PRIVATE_KEY           = 144;
 X509_F_X509_REQ_PRINT_EX                    = 121;
 X509_F_X509_REQ_PRINT_FP                    = 122;
 X509_F_X509_REQ_TO_X509                     = 123;
 X509_F_X509_STORE_ADD_CERT                  = 124;
 X509_F_X509_STORE_ADD_CRL                   = 125;
 X509_F_X509_STORE_CTX_GET1_ISSUER           = 146;
 X509_F_X509_STORE_CTX_INIT                  = 143;
 X509_F_X509_STORE_CTX_NEW                   = 142;
 X509_F_X509_STORE_CTX_PURPOSE_INHERIT       = 134;
 X509_F_X509_TO_X509_REQ                     = 126;
 X509_F_X509_TRUST_ADD                       = 133;
 X509_F_X509_TRUST_SET                       = 141;
 X509_F_X509_VERIFY_CERT                     = 127;

 X509_R_BAD_X509_FILETYPE                    = 100;
 X509_R_BASE64_DECODE_ERROR                  = 118;
 X509_R_CANT_CHECK_DH_KEY                    = 114;
 X509_R_CERT_ALREADY_IN_HASH_TABLE           = 101;
 X509_R_ERR_ASN1_LIB                         = 102;
 X509_R_INVALID_DIRECTORY                    = 113;
 X509_R_INVALID_FIELD_NAME                   = 119;
 X509_R_INVALID_TRUST                        = 123;
 X509_R_KEY_TYPE_MISMATCH                    = 115;
 X509_R_KEY_VALUES_MISMATCH                  = 116;
 X509_R_LOADING_CERT_DIR                     = 103;
 X509_R_LOADING_DEFAULTS                     = 104;
 X509_R_METHOD_NOT_SUPPORTED                 = 124;
 X509_R_NO_CERT_SET_FOR_US_TO_VERIFY         = 105;
 X509_R_PUBLIC_KEY_DECODE_ERROR              = 125;
 X509_R_PUBLIC_KEY_ENCODE_ERROR              = 126;
 X509_R_SHOULD_RETRY                         = 106;
 X509_R_UNABLE_TO_FIND_PARAMETERS_IN_CHAIN   = 107;
 X509_R_UNABLE_TO_GET_CERTS_PUBLIC_KEY       = 108;
 X509_R_UNKNOWN_KEY_TYPE                     = 117;
 X509_R_UNKNOWN_NID                          = 109;
 X509_R_UNKNOWN_PURPOSE_ID                   = 121;
 X509_R_UNKNOWN_TRUST_ID                     = 120;
 X509_R_UNSUPPORTED_ALGORITHM                = 111;
 X509_R_WRONG_LOOKUP_TYPE                    = 112;
 X509_R_WRONG_TYPE                           = 122;


{$ENDREGION}

implementation

end.
