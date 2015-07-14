# Генерация ключей на эллиптических кривых #

Получение списка эллиптических кривых для генерации EC ключей


```
procedure LoadCurves;
var BufSize: Integer; -- Размер буфера
    NumCurves: Integer; -- Количество кривых
    Curves: PEC_builtin_curves; -- Массив с кривыми 
begin
 if @EC_get_builtin_curves <> nil then
  begin
    NumCurves := EC_get_builtin_curves(nil, 0); -- узнать количество
    BufSize := SizeOf(EC_builtin_curve) * EC_NumCurves; --
    Curves := OpenSSL_malloc(BufSize);
    try   
      EC_get_builtin_curves(Curves, NumCurves);

      {Делаем что надо}
    finally
      OpenSSL_free(Curves);
    end;
  end;
end;
```