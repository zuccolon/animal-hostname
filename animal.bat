@echo off

setlocal enabledelayedexpansion

set animals=dog cat bird fish lion tiger bear wolf monkey elephant giraffe zebra hippopotamus rhinoceros panda kangaroo koala leopard cheetah jaguar

set count=0
for %%a in (%animals%) do (
  set /A count+=1
  set animal[!count!]=%%a
)

set /A num=%random% * %count% / 32768 + 1
set animal=!animal[%num%]!

set hostname=PC-%animal%

hostname %hostname%

echo Successfully changed hostname to %hostname%
