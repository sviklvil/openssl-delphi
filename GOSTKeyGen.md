# Генерация ключей по GOST2001 #

```

procedure GenerateGOST2001Key;
var
  am: PEVP_PKEY_ASN1_METHOD;
  e: PENGINE;
  Ciph: PEVP_CIPHER;
  pkey_id, pkey_base_id, pkey_flags: TC_INT;
  info, pem_str: PAnsiChar;
  ctx: PEVP_PKEY_CTX;
  key: PEVP_PKEY;
  fname: AnsiString;
  bp: PBIO;
begin
  e := nil;
  am := nil;
  am := EVP_PKEY_asn1_find_str(@e, 'GOST2001', -1);
  try
  if am <> nil then
  begin
       Ciph := EVP_camellia_128_cbc;

       EVP_PKEY_asn1_get0_info(pkey_id, pkey_base_id, pkey_flags, @info, @pem_str, am);
       Writeln('NID = ', pkey_id);
       Writeln(OBJ_nid2ln(pkey_id));
       Writeln('ALGORITHM = ', pem_str, ',', info);
       ctx := EVP_PKEY_CTX_new_id(pkey_id, nil);
       SSL_CheckError;
       EVP_PKEY_keygen_init(ctx);
       SSL_CheckError;
       EVP_PKEY_CTX_ctrl_str(ctx, 'paramset', 'XB');

       EVP_PKEY_CTX_set_cb(ctx, EVP_KEYGENCB);
       EVP_PKEY_CTX_set_app_data(ctx, nil);
       SSL_CheckError;
       key := nil;
       EVP_PKEY_keygen(ctx, @key);
       SSL_CheckError;
       fName := ExtractFilePath(ParamStr(0))+'gost.pem';
       bp := BIO_new_file(PAnsiChar(fName), 'wb');
       try
         PEM_write_bio_PrivateKey(bp, key, Ciph, nil, 0, EVP_PASS_CB, nil);
         SSL_CheckError;
         Writeln('GOST 2001 key SIZE = ', EVP_PKEY_bits(key), ' bit');
         Writeln('Saved to ', fname);
         Writeln('Encrypted with ', OBJ_nid2sn(Ciph.nid), ' (', Ciph.nid, ')');
         EncryptDecryptGOST(key);
       finally
         BIO_free(bp);
       end;
       EVP_PKEY_free(key);
       EVP_PKEY_CTX_free(ctx);
  end;
  finally
    ENGINE_free(E);
  end;
end;

```
