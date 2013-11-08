#!/usr/bin/env python
# -*- coding: utf-8 -*-
import url
import sys

def main():
    u = url.Url("http://pedro:larroy@google.com/search and/and/ads/../..")
    print(u)
    u.normalize()
    print(u)
    print('scheme: {}'.format(u.get_scheme()))
    print('authority: {}'.format(u.get_authority()))
    print('host: {}'.format(u.get_host()))
    print('path: {}'.format(u.get_path()))
    return 0

if __name__ == '__main__':
    sys.exit(main())

