#@since 1.8.1

BigDecimalを使った数学的な機能を提供します。

以下の計算が行えます。

 * sqrt(x, prec)
 * sin (x, prec)
 * cos (x, prec)
 * atan(x, prec)
 * exp (x, prec)
 * log (x, prec)
 * PI  (prec)
 * E   (prec) == exp(1.0, prec)

引数:

: x

  計算対象の BigDecimal オブジェクト。

: prec

  計算結果の精度。prec + BigDecimal.double_fig 桁まで正確に計算されます。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath

  a = BigDecimal((PI(100)/2).to_s)
  puts sin(a,100) # -> 0.10000000000000000000......E1

= module BigMath

BigDecimalを使った数学的な機能を提供するモジュールです。

== Instance Methods

--- sqrt(x, prec) -> BigDecimal

x の平方根を prec で指定した精度で計算します。

@param x 平方根を求める数。

@param prec 計算結果の精度。

@raise FloatDomainError x に 0 以下、もしくは NaN が指定された場合に発生します。

@raise ArgumentError prec に 0 未満が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts sqrt(BigDecimal.new('2'), 10) #-> 0.14142135623730950488016883515E1

--- sin(x, prec) -> BigDecimal

x の正弦関数を prec で指定した精度で計算します。単位はラジアンです。x
に無限大や NaN を指定した場合には NaN を返します。

@param prec 計算結果の精度。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts sin(BigDecimal.new('0.5'), 10) #-> 0.479425538604203000273287935689073955184741E0

--- cos(x, prec) -> BigDecimal

x の余弦関数を prec で指定した精度で計算します。単位はラジアンです。x
に無限大や NaN を指定した場合には NaN を返します。

@param prec 計算結果の精度。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts cos(BigDecimal.new('0.5'), 10) #-> 0.8775825618903727161162815826327690580439923E0

--- atan(x, prec) -> BigDecimal

x の逆正接関数を prec で指定した精度で計算します。単位はラジアンです。
x に無限大や NaN を指定した場合には NaN を返します。

@param prec 計算結果の精度。

@raise ArgumentError x の絶対値が1以上の場合に発生します。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts atan(BigDecimal.new('0.5'), 10) #-> 0.463647609000806116214256237466868871528608E0

===== 注意

x の絶対値を 0.9999 のような 1 に近すぎる値にすると計算結果が収束しない
可能性があります。

--- exp(x, prec) -> BigDecimal

x の指数関数を prec で指定した精度で計算します。x に無限大や NaN を指定
した場合には x を返します。

@param prec 計算結果の精度。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts exp(BigDecimal.new('1'), 10) #-> 0.271828182845904523536028752390026306410273E1

--- log(x, prec) -> BigDecimal

x の自然対数を prec で指定した精度で計算します。x に無限大や NaN を指定
した場合には x を返します。

@param prec 計算結果の精度。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts log(BigDecimal.new('2'), 10) #-> 0.693147180559945309417232112588603776354688E0

--- PI(prec) -> BigDecimal

円周率を prec で指定した精度で計算します。

@param prec 計算結果の精度。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts PI(10) #-> 0.314159265359224236485984067E1

--- E(prec) -> BigDecimal

自然対数 e を prec で指定した精度で計算します。

@param prec 計算結果の精度。

@raise ArgumentError prec に 0 以下が指定された場合に発生します。

例:

  require "bigdecimal"
  require "bigdecimal/math"

  include BigMath
  puts E(10) #-> 0.271828182845904523536028752390026306410273E1

#@end
