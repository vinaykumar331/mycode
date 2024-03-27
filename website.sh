#!/bin/bash
for website in www.google.com www.yahoo.com www.facebook.com app.vinaymentor.in
do
ping -c5 $website
done
