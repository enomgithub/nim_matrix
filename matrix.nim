type IMatrix*[R, C: static[int]] =
  array[1..R, array[1..C, int]]


proc `+`*[R, C](a, b: IMatrix[R, C]): IMatrix[R, C] =
  for i in 1..high(a):
    for j in 1..high(a[0]):
      result[i][j] = a[i][j] + b[i][j]


proc `-`*[R, C](a, b: IMatrix[R, C]): IMatrix[R, C] =
  for i in 1..high(a):
    for j in 1..high(a[0]):
      result[i][j] = a[i][j] - b[i][j]


proc `*`*[R, C](a: IMatrix[R, C], b: IMatrix[C, R]): IMatrix[R, R] =
  for i in 1..high(a):
    for j in 1..high(a):
      for k in 1..high(a[0]):
        result[i][j] += a[i][k] * b[k][j]


proc `$`*[R, C](a: IMatrix[R, C]): string =
  var str = ""
  for i in 1..high(a):
    for j in 1..high(a[0]):
      str &= $a[i][j] & " "
    str &= "\n"
  return str


type FMatrix*[R, C: static[int]] =
  array[1..R, array[1..C, float]]


proc `+`*[R, C](a, b: FMatrix[R, C]): FMatrix[R, C] =
  for i in 1..high(a):
    for j in 1..high(a[0]):
      result[i][j] = a[i][j] + b[i][j]


proc `-`*[R, C](a, b: FMatrix[R, C]): FMatrix[R, C] =
  for i in 1..high(a):
    for j in 1..high(a[0]):
      result[i][j] = a[i][j] - b[i][j]


proc `*`*[R, C](a: FMatrix[R, C], b: FMatrix[C, R]): FMatrix[R, R] =
  for i in 1..high(a):
    for j in 1..high(a):
      for k in 1..high(a[0]):
        result[i][j] += a[i][k] * b[k][j]


proc `$`*[R, C](a: FMatrix[R, C]): string =
  var str = ""
  for i in 1..high(a):
    for j in 1..high(a[0]):
      str &= $a[i][j] & " "
    str &= "\n"
  return str


proc main() =
  let mat1: IMatrix[4, 4] =
    [ [0, 1, 1, 0]
    , [1, 0, 1, 1]
    , [1, 1, 0, 1]
    , [0, 1, 1, 0]
    ]

  let mat2: IMatrix[3, 4] =
    [ [0, 1, 1, 0]
    , [1, 0, 1, 1]
    , [1, 1, 0, 1]
    ]

  let mat3: IMatrix[4, 3] =
    [ [0, 1, 1]
    , [1, 0, 1]
    , [1, 1, 0]
    , [0, 1, 1]
    ]

  let mat4: FMatrix[4, 4] =
    [ [0.0, 1.0, 1.0, 0.0]
    , [1.0, 0.0, 1.0, 1.0]
    , [1.0, 1.0, 0.0, 1.0]
    , [0.0, 1.0, 1.0, 0.0]
    ]

  let mat5: FMatrix[3, 4] =
    [ [0.0, 1.0, 1.0, 0.0]
    , [1.0, 0.0, 1.0, 1.0]
    , [1.0, 1.0, 0.0, 1.0]
    ]

  let mat6: FMatrix[4, 3] =
    [ [0.0, 1.0, 1.0]
    , [1.0, 0.0, 1.0]
    , [1.0, 1.0, 0.0]
    , [0.0, 1.0, 1.0]
    ]

  echo "IMatrix"
  echo "mat1 ="
  echo mat1
  echo "mat2 ="
  echo mat2
  echo "mat3 ="
  echo mat3
  echo "Operator +:"
  echo "mat1 + mat1 ="
  echo mat1 + mat1
  echo "Operator -:"
  echo "mat1 - mat1 ="
  echo mat1 - mat1
  echo "Operator *:"
  echo "mat1 * mat1 ="
  echo mat1 * mat1
  echo "mat2 * mat3 ="
  echo mat2 * mat3
  echo "mat3 * mat2 ="
  echo mat3 * mat2

  echo "FMatrix"
  echo "mat4 ="
  echo mat4
  echo "mat5 ="
  echo mat5
  echo "mat6 ="
  echo mat6
  echo "Operator +:"
  echo "mat4 + mat4 ="
  echo mat4 + mat4
  echo "Operator -:"
  echo "mat4 - mat4 ="
  echo mat4 - mat4
  echo "Operator *:"
  echo "mat4 * mat4 ="
  echo mat4 * mat4
  echo "mat5 * mat6 ="
  echo mat5 * mat6
  echo "mat6 * mat5 ="
  echo mat6 * mat5


if isMainModule:
  main()
