# -*- coding: utf-8 -*-

def main(name):
    if not len(name):
        name = 'World'

    result = 'Hello, {name}!'.format(name=name)
    print(result)
    return result
