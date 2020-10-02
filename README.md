# Лабораторная работа №1
# Исследование методов прямого поиска экстремума унимодальной функции

## Задание (вариант №6)

На интервале [-5, 2] задана унимодальная функция одного переменного
`f(x) = (1 - x)^2 + exp(x)`. Используя метод Фибоначчи, найти интервал
нахождения минимума `f(x)` при заданном числе точек `N = 30`.
Провести сравнение с методом оптимального пассивного поиска. Результат,
в зависимости от числа точек разбиения, представить в виде таблицы.

## Выполнение лабораторной работы

Исходный код программы приведён в директории [source](source/).
```bash
|n    |x              |
|-----|---------------|
|2    |-0.3333+-2.3333|
|3    | 0.2500+-1.7500|
|4    | 0.6000+-1.4000|
|5    | 0.8333+-1.1667|
|6    | 0.0000+-1.0000|
|7    | 0.2500+-0.8750|
|8    | 0.4444+-0.7778|
|9    | 0.6000+-0.7000|
|10   | 0.0909+-0.6364|
|11   | 0.2500+-0.5833|
|12   | 0.3846+-0.5385|
|13   | 0.5000+-0.5000|
|14   | 0.1333+-0.4667|
|15   | 0.2500+-0.4375|
|16   | 0.3529+-0.4118|
|17   | 0.4444+-0.3889|
|18   | 0.1579+-0.3684|
|19   | 0.2500+-0.3500|
|20   | 0.3333+-0.3333|
|21   | 0.4091+-0.3182|
|22   | 0.1739+-0.3043|
|23   | 0.2500+-0.2917|
|24   | 0.3200+-0.2800|
|25   | 0.3846+-0.2692|
|26   | 0.1852+-0.2593|
|27   | 0.2500+-0.2500|
|28   | 0.3103+-0.2414|
|29   | 0.3667+-0.2333|
|30   | 0.4194+-0.2258|
|31   | 0.2500+-0.2188|
|32   | 0.3030+-0.2121|
|33   | 0.3529+-0.2059|
|34   | 0.4000+-0.2000|
|35   | 0.2500+-0.1944|
|36   | 0.2973+-0.1892|
|37   | 0.3421+-0.1842|
|38   | 0.3846+-0.1795|
|39   | 0.2500+-0.1750|
|40   | 0.2927+-0.1707|
|41   | 0.3333+-0.1667|
|42   | 0.3721+-0.1628|
|43   | 0.2500+-0.1591|
|44   | 0.2889+-0.1556|
|45   | 0.3261+-0.1522|
|46   | 0.3617+-0.1489|
|47   | 0.2500+-0.1458|
|48   | 0.2857+-0.1429|
|49   | 0.3200+-0.1400|
|50   | 0.3529+-0.1373|
|51   | 0.2500+-0.1346|
|52   | 0.2830+-0.1321|
|53   | 0.3148+-0.1296|
|54   | 0.3455+-0.1273|
|55   | 0.3750+-0.1250|
|56   | 0.2807+-0.1228|
|57   | 0.3103+-0.1207|
|58   | 0.3390+-0.1186|
|59   | 0.3667+-0.1167|
|60   | 0.2787+-0.1148|
|61   | 0.3065+-0.1129|
|62   | 0.3333+-0.1111|
|63   | 0.3594+-0.1094|
|64   | 0.2769+-0.1077|
|65   | 0.3030+-0.1061|
|66   | 0.3284+-0.1045|
|67   | 0.3529+-0.1029|
|68   | 0.2754+-0.1014|
|69   | 0.3000+-0.1000|
|70   | 0.3239+-0.0986|
|71   | 0.3472+-0.0972|
|72   | 0.2740+-0.0959|
|73   | 0.2973+-0.0946|
|74   | 0.3200+-0.0933|
|75   | 0.3421+-0.0921|
|76   | 0.2727+-0.0909|
|77   | 0.2949+-0.0897|
|78   | 0.3165+-0.0886|
|79   | 0.3375+-0.0875|
|80   | 0.2716+-0.0864|
|81   | 0.2927+-0.0854|
|82   | 0.3133+-0.0843|
|83   | 0.3333+-0.0833|
|84   | 0.3529+-0.0824|
|85   | 0.2907+-0.0814|
|86   | 0.3103+-0.0805|
|87   | 0.3295+-0.0795|
|88   | 0.3483+-0.0787|
|89   | 0.2889+-0.0778|
|90   | 0.3077+-0.0769|
|91   | 0.3261+-0.0761|
|92   | 0.3441+-0.0753|
|93   | 0.2872+-0.0745|
|94   | 0.3053+-0.0737|
|95   | 0.3229+-0.0729|
|96   | 0.3402+-0.0722|
|97   | 0.2857+-0.0714|
|98   | 0.3030+-0.0707|
|99   | 0.3200+-0.0700|
|100  | 0.3366+-0.0693|
|101  | 0.2843+-0.0686|
|102  | 0.3010+-0.0680|
|103  | 0.3173+-0.0673|
|104  | 0.3333+-0.0667|
|105  | 0.2830+-0.0660|
|106  | 0.2991+-0.0654|
|107  | 0.3148+-0.0648|
|108  | 0.3303+-0.0642|
|109  | 0.3455+-0.0636|
|110  | 0.2973+-0.0631|
|111  | 0.3125+-0.0625|
|112  | 0.3274+-0.0619|
|113  | 0.3421+-0.0614|
|114  | 0.2957+-0.0609|
|115  | 0.3103+-0.0603|
|116  | 0.3248+-0.0598|
|117  | 0.3390+-0.0593|
|118  | 0.2941+-0.0588|
|119  | 0.3083+-0.0583|
|120  | 0.3223+-0.0579|
|121  | 0.3361+-0.0574|
|122  | 0.2927+-0.0569|
|123  | 0.3065+-0.0565|
|124  | 0.3200+-0.0560|
|125  | 0.3333+-0.0556|
|126  | 0.2913+-0.0551|
|127  | 0.3047+-0.0547|
|128  | 0.3178+-0.0543|
|129  | 0.3308+-0.0538|
|130  | 0.2901+-0.0534|
|131  | 0.3030+-0.0530|
|132  | 0.3158+-0.0526|
|133  | 0.3284+-0.0522|
|134  | 0.3407+-0.0519|
|135  | 0.3015+-0.0515|
|136  | 0.3139+-0.0511|
|137  | 0.3261+-0.0507|
|138  | 0.3381+-0.0504|
|139  | 0.3000+-0.0500|
|-----|---------------|
x = 0.3000+-0.0500
```
```bash
N = 30
|Num of iters (k)|Interval       |
|----------------|---------------|
|0               |-0.1631+-2.1631|
|1               | 0.6631+-1.3369|
|2               | 0.1525+-0.8262|
|3               | 0.4681+-0.5106|
|4               | 0.2730+-0.3156|
|5               | 0.3936+-0.1950|
|6               | 0.3191+-0.1205|
|7               | 0.2730+-0.0745|
|8               | 0.3015+-0.0460|
|----------------|---------------|
x = 0.3015+-0.0460
```
