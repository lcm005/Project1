#!/bin/bash

#program finds what dealer was working on sptecified day and time

#argument 1 date (####) two didget month then day

#argument 2 time two didget hour

awk '{print $1 $2 $5 $6}' $1* |
grep $2
