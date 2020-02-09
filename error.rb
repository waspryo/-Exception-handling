begin
  p a
rescue => e
  p 'this is rescue block'
  p e
  ensure
    p 'this is ensure block'
end

      begin
例   -   #例外が発生する対処の処理             例
外    rescue => exception # ← 変数 eでもok   外
発      # 例外発生時の処理                    発
生    ensure                               時
な   -   # 例外発生有無に関わらず実行する処理
し     end

begin
  #TypeError例外を発生
  raise TypeError, 'original error'
rescue => e
  p e.message
  #例外処理後の例外を発生
  raise
end